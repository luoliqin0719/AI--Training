#-*- coding: utf-8 -*-

import math
import pymysql


'''
*连接数据库
'''
def conndb():
    db = pymysql.connect("120.79.229.209", "root", "123456", "aienterprisetrain")
    return db


'''
*清空推荐数据库，重新推荐

'''
def cleardb(db):
    cursor = db.cursor()
    sql = "TRUNCATE table recommend_course_user_table"
    cursor.execute(sql)
    db.commit()
    sql = "TRUNCATE table recommend_neighbor_table"
    cursor.execute(sql)
    db.commit()


'''
*查找用户资源

'''
def findUsers(db):
    cursor = db.cursor()
    sql = "select * from user_table"
    test_contents = []
    cursor.execute(sql)
    results = cursor.fetchall()
    for i in results:
        test_contents.append(i[0])
    # print(test_contents)
    return test_contents


'''
*查找用户-课程资源

'''
def findUserCous(userid, db):
    cursor = db.cursor()
    sql = "select course_id from user_course_table where user_id = "+ str(userid)
    test_contents = []
    cursor.execute(sql)
    results = cursor.fetchall()
    for i in results:
        test_contents.append(i[0])

    sql = "select coll_id from video_coll_table where coll_type = 'course' and user_id = " + str(userid)
    cursor.execute(sql)
    results = cursor.fetchall()

    for i in results:
        if i[0] in test_contents:
            continue
        test_contents.append(i[0])

    # print("收藏表：", results, "用户看的课程：", test_contents)

    return test_contents


'''
*查找课程资源

'''
'''查找所有课程'''
def findCourse(db):
    cursor = db.cursor()
    sql = "select * from course_table"
    test_contents = []
    # print("connected success")
    cursor.execute(sql)
    results = cursor.fetchall()
    for i in results:
       test_contents.append(i[0])
    # print(test_contents)
    return test_contents


'''查找课程评分'''
def findCourseScore(db):
    cursor = db.cursor()
    sql = "select * from course_table"
    course = findCourse(db)
    course.sort()
    l = course.__len__()
    l = course[l-1]  # 得到最大ID号课程的课程ID号
    score = [0 for i in range(l+1)]  # 建立 课程-评分 二位数组
    cursor.execute(sql)
    results = cursor.fetchall()
    for i in results:
       score[i[0]] = i[13]
    # print("l=",l,score)
    return score


'''
*查找课程-用户资源
'''
def findCourseUser(courseid,db):
    cursor = db.cursor()
    sql = "select user_id from user_course_table where course_id = " + str(courseid)
    test_contents = []
    cursor.execute(sql)
    results = cursor.fetchall()
    for i in results:
        test_contents.append(i[0])
    sql = "select user_id from video_coll_table where coll_type = 'course' and coll_id = " + str(courseid)
    cursor.execute(sql)
    results = cursor.fetchall()
    for i in results:
        if i[0] not in test_contents:
            test_contents.append(i[0])
    # print(test_contents)
    return test_contents


'''
*计算相似余弦距离

'''
def calcSimlaryCosDist(user1,user2,userInfo):
    x = 0.0
    y = 0.0
    for i in userInfo[user1-1]:
        for j in userInfo[user2-1]:
            if i == j:
                x = x+1
    y = userInfo[user1-1].__len__()*userInfo[user2-1].__len__()
    # print(x,y);
    if y == 0:
        return 0
    return x/math.sqrt(y)


'''
*计算用户之间的相似度

'''
def calSimilarUser(user_contents,course_contents,db):
    userID = findUsers(db)  # 所有用户
    userID.sort()
    courseID = findCourse(db)  # 所有课程
    courseID.sort()
    # print(user_contents)
    # print(course_contents)
    m = userID.__len__()
    l = userID[m - 1]
    ans = [[0 for i in range(l + 1)] for i in range(l + 1)]   # 二维数组 存储用户之间的相似度
    for i in courseID:  # 根据课程倒查表计算用户相似度
        for j in course_contents[i - 1]:
            for k in course_contents[i - 1]:
                if k != j and ans[j][k] == 0:
                    ans[j][k] = calcSimlaryCosDist(j, k, user_contents)
                    ans[k][j] = ans[j][k]
    '''
    for i in userID:
        for j in userID:
            if i!= j and ans[i][j]!=0:
                 print("用户"+str(i)+"和用户"+str(j)+"之间的相似度为：",ans[i][j])
    '''
    return ans


'''
*计算用户的邻居

'''
def findNeighbor(userid,ans,userID):
    neigh_bor = []
    k = {}
    for i in userID:
        if ans[userid][i] != 0:
            k[i] = ans[userid][i]
    k = sorted(k.items(), key=lambda x: x[1], reverse=True)
    for i in k:
        neigh_bor.append(i[0])
        # print("用户：",userid,"的邻居为：",i[0],"相似度为：",i[1])
    return neigh_bor


'''
*   使用UserFC进行推荐
*   输入：用户，邻居，课程-评分,所有用户选课表
*   输出：该用户推荐的课程ID,基于相似度及评分进行TOP排序后的感兴趣课程

'''
def recommendByUsersFC(userid,neighbor,score,user_contents):
    recommend_courses = {}
    recommend_course2 = []
    for i in neighbor[userid-1]:
        for j in user_contents[i-1]:
            if j not in recommend_courses and j not in user_contents[userid-1]:
                recommend_courses[j] = score[j]
    recommend_course1 = sorted(recommend_courses.items(), key=lambda x: x[1], reverse=True)
    for i in recommend_course1:
        recommend_course2.append(i[0])
    print("用户", userid , "推荐的课程为：", recommend_course2)
    return recommend_course2


'''
*将推荐课程数据存入数据库

'''
def downloadcourseDB(userid,recommend_course,db):
    cursor = db.cursor()
    l_1 = 1
    for i in recommend_course:
        if l_1 > 5:
            break
        sql = "INSERT into recommend_course_user_table" \
              "(user_id,course_id,priority)" \
              " values("+str(userid)+","+str(i)+"," + str(l_1)+")"
        cursor.execute(sql)
        db.commit()
        l_1 += 1
        print("插入数据库成功！！！！")


'''
*将用户‘邻居’存入数据库

'''
def downloadneighborDB(userid, neighbor, db):
    cursor = db.cursor()
    # print("userid = ", userid, "neighbor = ", neighbor[userid-1])
    for i in neighbor[userid-1]:
        sql = "INSERT into recommend_neighbor_table" \
              "(user_id,neighbor_id)" \
              " values(" + str(userid) + "," + str(i) + ")"
        cursor.execute(sql)
        db.commit()
        # print("插入邻居数据库成功！！！！")


'''
*主函数

'''
if __name__ == '__main__':
    print("（UserCF）基于用户的协同过滤算法：")
    db = conndb()
    cleardb(db)  # 清空推荐数据库里的内容，重新推荐
    course_contents = []
    courseID = findCourse(db)  # 所有课程
    courseID.sort()
    user_contents = []
    userID = findUsers(db)  # 所有用户
    userID.sort()
    for i in userID:  # 每个用户所学课程
        user_contents.append(findUserCous(i, db))
    for i in courseID:  # 每个课程所学用户 建立倒查表
        course_contents.append(findCourseUser(i, db))
    ans = calSimilarUser(user_contents, course_contents, db)  # 计算用户之间的相似度函数
    neighbor = []  # 所有用户的邻居
    for i in userID:
        neighbor.append(findNeighbor(i, ans, userID))  # 得到每个用户邻居
        downloadneighborDB(i, neighbor, db)
    score = findCourseScore(db)  # 得到课程-评分的数组
    for i in userID:
        recommend_course = recommendByUsersFC(i, neighbor, score, user_contents)  # 得到每个用户的推荐课程ID
        downloadcourseDB(i, recommend_course, db)   # 将数据存入数据库
    db.close()  # 关闭数据库连接