# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import csv
import numpy as np
import csv_to_sqlite

MAXSCHOOL = 5

school_dict = {}

upper_letter = [chr(ord("A")+i) for i in range(MAXSCHOOL)]
upper_letter_dict = {}

for i in upper_letter:
    if(ord(i) < 67):
        upper_letter_dict[i] = 1
    elif(ord(i) < 69):
        upper_letter_dict[i] = 2
    else:
        upper_letter_dict[i] = 3

for i in range(len(upper_letter)):
    school_dict[upper_letter[i] + "_high_school"] = str(i+1).zfill(6)


#print(school_dict)

test_format = {'general_5_subjects':1, 'general_3_subjects':2,\
               'general_english_subject':3, 'general_math_subject':4,\
               'general_japanese_subject':5, 'AO':6, 'candidates_recommended':7}

test_subject = {1:'英国数理社', 2:'英国数', 3:'英', 4:'数', 5:'国', 6:'小論文', 7:'面接,小論文'}

np.random.seed(seed=1)
school_db = [['school_name', 'school_ID', 'test_format', 'test_ID', 'date', 'subjects']]
test_id = []
for i in range(MAXSCHOOL):
    for j in range(np.random.randint(6) + 1):
        test_id.append(school_dict[upper_letter[i] + "_high_school"] + str(j+1))
        school_db.append([upper_letter[i] + "_high_school", school_dict[upper_letter[i] + "_high_school"], j+1 ,\
                          test_id[-1], '2/' + str(upper_letter_dict[upper_letter[i]] + 10), test_subject[j+1]] )

with open('school.csv', "w", newline='') as f:
    dataWriter = csv.writer(f)
    dataWriter.writerows(school_db)
f.close()

user_db = [['user_ID', 'high_school', 'test_ID', 'impression', 'Pass_or_Fail', 'subject_s/he_is_good_at']]
goodSubjects = ['英', '国', '数', '理', '社']
for user_id in range(1000):
    testTaken = set()
    dateToken = set()
    for i in range(np.random.randint(2)+np.random.randint(2)+1):
        test = test_id[np.random.randint(len(test_id))]
        if(upper_letter_dict[chr(int(test[-2])+64)] in dateToken):
            continue
        testTaken.add(test)
        dateToken.add(upper_letter_dict[chr(int(test[-2])+64)])
    testList = sorted(list(testTaken))
    testString = ''
    for i in testList:
        testString += str(int(i)) + ',  '
    testString = testString[:-3]
    passedSchool = int(testList[np.random.randint(len(testList))][:-1])
    user_db.append([str(user_id).zfill(6), passedSchool,\
                    testString, 'example' + str(user_id) , 'pass', goodSubjects[np.random.randint(5)]])

with open('user.csv', "w", newline='') as f:
    dataWriter = csv.writer(f)
    dataWriter.writerows(user_db)
f.close()

options = csv_to_sqlite.CsvOptions(typing_style="full", encoding="ANSI") 
input_file_school = ["school.csv"]
csv_to_sqlite.write_csv(input_file_school, "school.db", options)
input_file_user = ["user.csv"]
csv_to_sqlite.write_csv(input_file_user, "user.db", options)
