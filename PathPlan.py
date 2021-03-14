# coding: utf-8

import math
import pymysql
from collections import defaultdict

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
    sql = "TRUNCATE table path_course_table"
    cursor.execute(sql)
    sql = "TRUNCATE table path_table"
    cursor.execute(sql)
    db.commit()


'''
*查找所有用户

'''
def findUser(db):
    ans = []
    cursor = db.cursor()
    sql = "select user_id from user_table"
    cursor.execute(sql)
    results = cursor.fetchall()
    for i in results:
        ans.append(i[0])
    # print(ans)
    return ans


'''
*查询每个用户所属部门
'''
def findUserDept(userid,db):
    cursor = db.cursor()
    sql = "select user_dept_id from user_table where user_id = " + str(userid)
    cursor.execute(sql)
    results = cursor.fetchall()
    # print(str(results[0][0]))
    return results[0][0]


'''
*查找每个用户所学课程
'''
def findUserCourse(userid,db):
    ans = []
    cursor = db.cursor()
    sql = "select course_id from user_course_table where user_id = " + str(userid)
    cursor.execute(sql)
    results = cursor.fetchall()
    for i in results:
        ans.append(i[0])
    # print("用户：", userid , "所学课程ID为：", ans)
    return ans


'''
*查找最大课程类别号

'''
def findCourseType(db):
    cursor = db.cursor()
    sql = "select max(course_type) from course_table"
    cursor.execute(sql)
    results = cursor.fetchall()
    # print(results[0][0])
    return results[0][0]


'''
*查找最大课程号

'''
def findCourseId(db):
    cursor = db.cursor()
    sql = "select max(course_id) from course_table"
    cursor.execute(sql)
    results = cursor.fetchall()
    # print(results[0][0])
    return results[0][0]


'''
*查找最大课程热度
'''
def findCourseMaxPopularity(db):
    cursor = db.cursor()
    sql = "select max(course_click) from course_table"
    cursor.execute(sql)
    results = cursor.fetchall()
    return results[0][0]


'''
*查找某一类别的所有课程

'''
def findCourseByType(db,type):
    cursor = db.cursor()
    sql = "select course_id from course_table where course_type = " + str(type)
    cursor.execute(sql)
    results = cursor.fetchall()
    ans = []
    for i in results:
        ans.append(i[0])
    # print("类别为：",type,"的课程有：",ans)
    return ans


'''
*查找最大课程等级

'''
def findCourseMaxLevel(db):
    cursor = db.cursor()
    sql = "select max(course_level) from course_table"
    cursor.execute(sql)
    results = cursor.fetchall()
    return results[0][0]


'''
*查找某个课程等级
'''
def findCourseLevel(db,courseid):
    cursor = db.cursor()
    sql = "select course_level from course_table where course_id = " + str(courseid)
    cursor.execute(sql)
    results = cursor.fetchall()
    return results[0][0]


'''
*查找某个课程的评分
'''
def findCourseScore(db,courseid):
    cursor = db.cursor()
    sql = "select course_score from course_table where course_id = " + str(courseid)
    cursor.execute(sql)
    results = cursor.fetchall()
    return results[0][0]


'''
*找出每个课程的收费信息
'''
def findCourseCost(db, courseid):
    cursor = db.cursor()
    sql = "select course_price from course_table where course_id = " + str(courseid)
    cursor.execute(sql)
    results = cursor.fetchall()
    return results[0][0]


'''
*找出每个用户的部门所关联的课程类别
'''
def findUserType(db, userid):
    cursor = db.cursor()
    sql = "select user_dept_id from user_table where user_id = " + str(userid)
    cursor.execute(sql)
    result = cursor.fetchall()
    l = -1
    for i in result:
        l = i[0]
    # print("用户", userid, "的部门为：l= ", l)
    sql = "select course_type_id from department_type_table where department_id = " + str(l)
    cursor.execute(sql)
    results = cursor.fetchall()
    anss = []
    for i in results:
        anss.append(i[0])
    # print("部门l=",l,"的相关课程类别为：ans=", anss)
    return anss


'''
*找出每个用户的4大能力值
'''
def findUserAbility(db, userid):
    cursor = db.cursor()
    sql = "select * from user_ability_table where " \
          "user_id = " + str(userid) + " order by user_ability_date DESC"
    cursor.execute(sql)
    results = cursor.fetchall()
    anss = []
    anss.append(results[0][2])
    anss.append(results[0][3])
    anss.append(results[0][4])
    anss.append(results[0][5])
    print("能力值分别为：",anss)
    return anss


'''
*查找某个课程的热度
'''
def findCoursePop(db,courseid):
    cursor = db.cursor()
    sql = "select course_click from course_table where course_id = " + str(courseid)
    cursor.execute(sql)
    results = cursor.fetchall()
    return results[0][0]


'''
*查找某个用户某个类别的单挑路径ID
'''
def findPathId(db, userid, coursetype, style):
    cursor = db.cursor()
    sql = "select path_id from path_table " \
          "where user_id = " + str(userid) + " and " \
          "path_type = " + str(coursetype) + " " \
          "and path_style = " + str(style)
    # print(sql)
    cursor.execute(sql)
    result = cursor.fetchall()
    # print("用户为：", userid, "的类别为：", coursetype, "路径ID为：", result[0][0])
    return result[0][0]


'''
*计算课程权值
'''
def calSimilarCourse(db,score,popularity):
    max_popularity = findCourseMaxPopularity(db)
    ans = score/10.0 * 0.5 + popularity/max_popularity * 0.5
    return ans


'''
*将推荐学习路径信息存入路径课程数据库
'''
def downLoadDB(db, userid, coursetype, style):
    cursor = db.cursor()
    # print("调用了downLoadDB")
    sql = "insert into path_table(user_id," \
          "path_type,path_style) " \
          "values("+str(userid)+","+str(coursetype)+","+str(style)+")"
    cursor.execute(sql)
    db.commit()



'''
*将推荐学习路径信息存入路经信息数据库
'''
def downLoadCourseDB(db, userid, coursetype, courseid, courselevel, style):
    cursor = db.cursor()
    path_id = findPathId(db, userid, coursetype, style)
    sql = "insert into path_course_table(path_id," \
          "course_id,path_course_seq) " \
          "values(" + str(path_id) + "," + str(courseid) + "," + str(courselevel) + ")"
    cursor.execute(sql)
    db.commit()


'''
*根据课程权值和用户的历史记录生成推荐最优路径规划
*根据课程权值和用户的历史记录及课程付费信息生成推荐免费路径规划
*将数据存入数据库
'''
def recommendStudyPathPlan(db, userid, course1,course_type,course_quanzhi,course_level,max_level,course_cost):
    ans_path1 = []
    ans_path2 = []
    course_level1 = defaultdict(list)  # 声明每个等级的课程的列表
    for i in course1[course_type]:
        k = course_level[i]  # 得到该课程的等级
        course_level1.setdefault(k, []).append(i)
    for i in range(max_level+1):
        if i == 0:
            continue
        # list(d1[key]) 获取值
        temp = list(course_level1[i])
        if(len(temp) == 0):
            continue
        anss = temp[0]  # 该等级最高权值的课程
        maxx = course_quanzhi[anss]   # 该等级最高权值的课程的权值
        for j in temp:
            if course_quanzhi[j] > maxx:
                anss = j
                maxx = course_quanzhi[j]
        ans_path1.append(anss)
        maxx = -1
        anss = -1
        for j in temp:
            if course_quanzhi[j] > maxx and course_cost[j] == 0:
                anss = j
                maxx = course_quanzhi[j]
        if(anss!=-1):
            ans_path2.append(anss)
    # class_quanzhi1 = sorted(class_quanzhi.items(), key=lambda x: x[1], reverse=True)
    print("类别为：", course_type, "的课程最优路径推荐为：")
    if ans_path1.__len__() >= 3:   # 如果推荐课程数大于2，生成数据存入最优学习路径数据库
        style = 0
        downLoadDB(db, userid, course_type, style)
        length = 0
        for i in ans_path1:
            length += 1
            print("课程：", i, "该课程等级为：", course_level[i])
            downLoadCourseDB(db, userid, course_type, i, course_level[i], style)
            if length>5 :
                break

    print("类别为：", course_type, "的课程免费路径推荐为：")
    if ans_path2.__len__() >= 3:    # 如果推荐课程数大于2，生成数据存入免费学习路径数据库
        style = 1
        downLoadDB(db, userid, course_type, style)
        length = 0
        for i in ans_path2:
            length += 1
            print("课程：", i, "该课程等级为：", course_level[i])
            downLoadCourseDB(db, userid, course_type, i, course_level[i], style)
            if length>5 :
                break


'''
*根据课程权值和用户的历史记录生成推荐最优路径规划
*根据课程权值和用户的历史记录及课程付费信息生成推荐免费路径规划
*将数据存入数据库
'''
def recommendStudyPathPlanAbility(db, userid, coursetype, course_level):
    course1 = findCourseByType(db, coursetype)
    style = 1
    # print("调用了4个能力值的推荐，类别为：", coursetype)
    downLoadDB(db, userid, coursetype, style)
    print("该能力值", coursetype, "不足，推荐课程为：", course1)
    for i in course1:
        downLoadCourseDB(db, userid, coursetype, i, course_level[i], style)


'''
*主函数 该程序为推荐路径算法(包括部门专业，以及4个对应能力值的推荐路径)

'''
if __name__ == '__main__':
    print("（PathPLAN）智能学习路径规划算法：")
    db = conndb()    # 连接数据库
    user_contents = findUser(db)  # 所有用户
    max_type = findCourseType(db)  # 最大课程类别号
    max_course = findCourseId(db)  # 最大课程ID号
    max_level = findCourseMaxLevel(db)  #最大课程等级
    course_typeUse = [0 for i in range(max_type+1)]  # 声明保存该类别是否计算过数组
    course_type = [0 for i in range(max_course+1)]  # 声明保存该课程的类别数组
    course_level = [0 for i in range(max_course+1)]  # 声明保存每门课程的等级数组
    course_quanzhi = [0 for i in range(max_course+1)]  # 声明保存每个课程的权值数组
    course_cost = [0 for i in range(max_course+1)]   # 声明保存每个课程的收费信息数组
    course1 = defaultdict(list)  # 声明每个类别对应的所有课程列表
    for i in range(max_type+1):
        if i == 0:
            continue
        course1[i] = findCourseByType(db, i)   # 该类别所有课程
        for j in course1[i]:
            course_cost[j] = findCourseCost(db, j)   # 保存每门课程的收费信息
            course_level[j] = findCourseLevel(db, j)  # 保存每门课程的等级
            course_type[j] = i   # 保存每个课程的类别
            score = findCourseScore(db, j)    # 每门课的分数
            popularity = findCoursePop(db, j)   # 每门课的热度（点击量）
            course_quanzhi[j] = calSimilarCourse(db, score, popularity)  # 保存课程的权值
            # print("课程：", j, "分数为：", score, "热度为：", popularity, "权值为:", course_quanzhi[j])

    cleardb(db)  # 清空数据库，重新生成学习规划路径

    for i in user_contents:    # 为每个用户规划学习路径
        course123 = findUserCourse(i, db)  # 该用户所学课程
        course = []
        type_course = findUserType(db, i)
        for j in course123:
            for k in type_course:
                if course_type[j] == k:
                    course.append(j)
                    break
        # print("用户", i, "所学的与部门相关的课程：", course)
        course_typeUse = [0 for i in range(max_type + 1)]   # 对每位用户，该类别是否计算过数据清零
        print("用户：", i, "的推荐路径规划有以下几条：")
        for j in course:
            if course_typeUse[course_type[j]] == 0:  # 判断改类别是否推荐过路径，否则推荐
                course_typeUse[course_type[j]] = 1
                # 生成最优学习路径数据及免费学习路径并存入数据库
                recommendStudyPathPlan(db, i, course1, course_type[j], course_quanzhi,
                                       course_level, max_level, course_cost)
        ability_score = findUserAbility(db, i)
        l1 = 29
        for j in ability_score:
            if j < 60:
                recommendStudyPathPlanAbility(db, i, l1, course_level)
            l1 = l1 + 1
    db.close()    # 关闭数据库连接
