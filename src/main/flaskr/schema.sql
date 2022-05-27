CREATE TABLE registered_user 
(R_EMAIL VARCHAR2(20) NOT NULL,
R_FULL_NAME VARCHAR2(40) NOT NULL,
R_PASS CHAR(8) NOT NULL, 
R_CONFIRM_PASS CHAR(8) NOT NULL,
R_CON_NUM CHAR(8) NOT NULL,
PRIMARY KEY (R_EMAIL));

CREATE TABLE webform 
(U_CAR_MODEL VARCHAR2(40) NOT NULL,
R_EMAIL VARCHAR2(20) NOT NULL, 
U_YEAR_CAR DATE NOT NULL,
PRIMARY KEY (U_CAR_MODEL));
FOREIGN KEY (R_EMAIL) REFERENCES registered_user(R_EMAIL));

CREATE TABLE recall_issues 
(C_REC_NUM CHAR(6) NOT NULL,
U_CAR_MODEL VARCHAR2(40) NOT NULL,
C_DEFECTS VARCHAR2(150) NOT NULL, 
C_YEAR_RANGE DATE NOT NULL,
C_PUBLISHED_DATE DATE NOT NULL,
C_HAZARD VARCHAR2(150) NOT NULL,
C_ACTION_REQUIRED VARCHAR2(150) NOT NULL,
PRIMARY KEY (C_REC_NUM));
FOREIGN KEY (U_CAR_MODEL) REFERENCES webform(U_CAR_MODEL));

CREATE TABLE contact_info 
(CON_ID INT NOT NULL,
C_REC_NUM CHAR(6) NOT NULL,
CON_NAME VARCHAR2(40) NOT NULL,
CON_MOB_NUM CHAR(8) NOT NULL,
CON_EMAIL VARCHAR2(20) NOT NULL,
CON_EMAIL VARCHAR2(40) NOT NULL,
PRIMARY KEY (CON_ID));
FOREIGN KEY (C_REC_NUM) REFERENCES recall_issues(C_REC_NUM));