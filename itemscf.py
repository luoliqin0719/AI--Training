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
    sql = "TRUNCATE table recommend_course_course_table"
    cursor.execute(sql)
    db.commit()


'''
*查找最大的课程类别号

'''
def findMaxtype(db):
    cursor = db.cursor()
    sql = "select max(course_type) from course_table"
    cursor.execute(sql)
    result = cursor.fetchall()
    return result[0][0]


'''
*查找最大的课程号

'''
def findMaxCourse(db):
    cursor = db.cursor()
    sql = "select max(course_id) from course_table"
    cursor.execute(sql)
    result = cursor.fetchall()
    return result[0][0]


'''
*查找所有课程id号

'''
def findcourse(db):
    cursor = db.cursor()
    test = []
    sql = "select course_id from course_table"
    cursor.execute(sql)
    result = cursor.fetchall()
    for i in result:
        test.append(i[0])
    return test

'''
*查找用户看过的课程id号

'''
def findcourse2(user_id,db):
    cursor = db.cursor()
    test = []
    sql = "select course_id from user_course_table where user_id = " + str(user_id)
    cursor.execute(sql)
    result = cursor.fetchall()
    for i in result:
        test.append(i[0])
    sql = "select coll_id from video_coll_table where coll_type = 'course' and user_id = " + str(user_id)
    cursor.execute(sql)
    result = cursor.fetchall()
    for i in result:
        if i[0] in test:
            continue
        test.append(i[0])
    return test

'''
*查找某个课程类别号

'''
def findcourseType2(course_id,db):
    cursor = db.cursor()
    sql = "select course_type from course_table where course_id = " + str(course_id)
    cursor.execute(sql)
    result = cursor.fetchall()
    return result[0][0]


'''
*查找所有用户id号

'''
def finduser(db):
    cursor = db.cursor()
    test = []
    sql = "select user_id from user_table"
    cursor.execute(sql)
    result = cursor.fetchall()
    for i in result:
        test.append(i[0])
    return test


'''
*查找某个课程号被喜欢的用户数

'''
def findCourseUser(course_id,db):
    cursor = db.cursor()
    sql = "select user_id from user_course_table where course_id = " + str(course_id)
    cursor.execute(sql)
    result = cursor.fetchall()
    test = []
    for i in result:
        test.append(i[0])
    return test


'''
*计算某两个课程号被喜欢的共同用户数 a ∩ b 

'''
def calCourseUser2(course_id1,course_id2,db):
    test1 = findCourseUser(course_id1,db)
    test2 = findCourseUser(course_id2,db)
    sum1 = 0
    for i in test1:
        for j in test2:
            if i == j:
                sum1 += 1
    return sum1


'''
*计算某两个课程号被喜欢的用户数 a || b

'''
def calCourseUser3(course_id1,course_id2,db):
    test1 = findCourseUser(course_id1,db)
    test2 = findCourseUser(course_id2,db)
    l2 = test2.__len__()
    result = l2
    for i in test1:
        sum1 = 0
        for j in test2:
            if i != j:
                sum1 += 1
        if sum1 == l2:
            result += 1
    return result


'''
*查找相同类别的课程信息

'''
def findCourseType(course_type,db):
    cursor = db.cursor()
    sql = "select course_id from course_table where course_type = " + str(course_type)
    cursor.execute(sql)
    results = cursor.fetchall()
    test_contents = []
    for i in results:
        test_contents.append(i[0])
    return test_contents


'''
*查找课程等级信息

'''
def findCourseLevel(course_id,db):
    cursor = db.cursor()
    sql = "select course_level from course_table where course_id = " + str(course_id)
    cursor.execute(sql)
    results = cursor.fetchall()
    return results[0][0]


'''
*计算相似函数

'''
def calSimilaryCosDist(c, d):
    ansSimi = abs(c) / math.sqrt(d)
    return ansSimi


'''
*计算课程的相似度

'''
def calSimilarCourse(type_course, ans1, ans2, w, level_course,db):
    for i in type_course:
        for j in type_course:
            if i != j :
                w[i][j] = 1
            if i != j and ans1[i][j] == 0:
                ans1[i][j] = calCourseUser2(i, j,db)
                ans1[j][i] = ans1[i][j]
            if i != j and ans2[i][j] == 0:
                ans2[i][j] = calCourseUser3(i, j,db)
                ans2[j][i] = ans2[i][j]
            if ans1[i][j] != 0 and ans2[i][j] != 0:
                if abs(level_course[i]-level_course[j]) != 0:
                    w[i][j] += calSimilaryCosDist(ans1[i][j],ans2[i][j])+1/abs(level_course[i]-level_course[j])
                else:
                    w[i][j] += calSimilaryCosDist(ans1[i][j], ans2[i][j]) + 2
            # print("课程：", i, "和课程：", j, "的共同用户数为：", ans1[i][j])
            # print("w["+str(i)+"]["+str(j)+"] = ", w[i][j])


'''
*   使用ItemsFC进行推荐
*   输入：用户，课程相似度表,课程类别表
*   输出：该用户推荐的课程ID，基于相似度大小和课程最相近等级进行TOP排序后感兴趣课程

'''
def recommendByItemsFC(userid, w, type_course,db):
    course_ids = findcourse2(userid,db)
    recommend_course = {}
    recommend_course2 = []
    for i in course_ids:
        type_1 = findcourseType2(i,db)
        for j in type_course[type_1]:
            if w[i][j] != 0 and j not in course_ids and j not in recommend_course:
                recommend_course[j] = w[i][j]
    recommend_course1 = sorted(recommend_course.items(), key=lambda x: x[1], reverse=True)
    for i in recommend_course1:
        recommend_course2.append(i[0])
    print("用户", userid, "推荐的课程为：", recommend_course2)
    return recommend_course2


'''
*将推荐数据保存到数据库

'''
def downloadcourseDB(userid,recommend_course_data,db):
    cursor = db.cursor()
    l = 1
    for i in recommend_course_data:
        if l > 5:
            break
        sql = "INSERT into recommend_course_course_table" \
              "(user_id,course_id,priority)" \
              " values("+str(userid)+","+str(i)+"," + str(l)+")"
        cursor.execute(sql)
        db.commit()
        l += 1
        print("插入数据库成功！！！！")


'''
*主函数
'''
if __name__ == '__main__':
    print("（ItemCF）基于课程的协同过滤算法：")
    db = conndb()
    k = findMaxtype(db)  # 最大课程类别号
    Max_course = findMaxCourse(db)  # 最大课程号
    course_id = findcourse(db)  # 所有课程
    user_id = finduser(db)  # 所有用户

    level_course = [0 for i in range(Max_course+1)]  # 课程等级

    for i in course_id:  # 查询所有课程的等级
        level_course[i] = findCourseLevel(i,db)

    """定义共现矩阵"""
    ans1 = [[0 for i in range(Max_course+1)] for i in range(Max_course+1)]  # 每两个课程之间的共同用户数 a ∩ b
    ans2 = [[0 for i in range(Max_course + 1)] for i in range(Max_course + 1)]  # 每两个课程之间的所有用户数 a \\ b
    w = [[0 for i in range(Max_course + 1)] for i in range(Max_course + 1)]  # 定义每两个课程之间的相似度矩阵
    type_course = []
    type_course1 = [[0 for i in range(k + 1)] for i in range(Max_course + 1)]  # 课程类别
    """计算课程相似度"""
    for i in range(1, k+1):
        type_course.append(findCourseType(i, db))  # 同一类别的所有课程
        for j in type_course[i-1]:
            type_course1[i].append(j)
        l = type_course[i-1].__len__()
        # print("类别为：", i, "的课程有：", type_course1[i], "数据长度为：", l)
        calSimilarCourse(type_course[i-1], ans1, ans2, w, level_course, db)  # 计算每两个课程之间的相似度
    cleardb(db)
    for i in user_id:
        recommend_course_data = recommendByItemsFC(i, w, type_course1, db)
        # print("用户：", i, "的推荐课程为：", recommend_course_data)
        downloadcourseDB(i, recommend_course_data, db)
    db.close()