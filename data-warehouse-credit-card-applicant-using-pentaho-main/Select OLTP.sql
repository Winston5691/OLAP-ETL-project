-- Mario Caesar | TP061966

--Application_Record
SELECT ID, CODE_GENDER, FLAG_OWN_CAR, FLAG_OWN_REALTY, CNT_CHILDREN, AMT_INCOME_TOTAL, NAME_EDUCATION_TYPE, NAME_FAMILY_STATUS, NAME_HOUSING_TYPE, DAYS_BIRTH, DAYS_EMPLOYED, FLAG_MOBIL, FLAG_WORK_PHONE, FLAG_PHONE, FLAG_EMAIL, OCCUPATION_TYPE, CNT_FAM_MEMBERS
FROM OLTP_CP.dbo.application_record_db

--Credit_Record
SELECT ID, MONTHS_BALANCE, STATUS
FROM OLTP_CP.dbo.credit_record_db

--ID that exists in both tables
SELECT ar.ID, ar.CODE_GENDER, ar.FLAG_OWN_CAR, ar.FLAG_OWN_REALTY, ar.CNT_CHILDREN, ar.AMT_INCOME_TOTAL, ar.NAME_EDUCATION_TYPE, ar.NAME_FAMILY_STATUS, ar.NAME_HOUSING_TYPE, ar.DAYS_BIRTH, ar.DAYS_EMPLOYED, ar.FLAG_MOBIL, ar.FLAG_WORK_PHONE, ar.FLAG_PHONE, ar.FLAG_EMAIL, ar.OCCUPATION_TYPE, ar.CNT_FAM_MEMBERS, cr.MONTHS_BALANCE, cr.STATUS
FROM OLTP_CP.dbo.application_record_db ar, OLTP_CP.dbo.credit_record_db cr
WHERE ar.ID=cr.ID