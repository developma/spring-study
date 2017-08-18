CREATE TABLE IF NOT EXISTS GRADE (
  GRADE_CODE INTEGER NOT NULL,
  BONUS_MAGNIFICATION INTEGER,
  FIXED_BONUS INTEGER,
  PRIMARY KEY (GRADE_CODE)
);

CREATE TABLE IF NOT EXISTS EMP (
  EMP_ID INTEGER NOT NULL,
  EMP_NAME VARCHAR(50),
  BASIC_SALARY INTEGER,
  GRADE_CODE INTEGER NOT NULL,
  PRIMARY KEY (EMP_ID),
  FOREIGN KEY (
    GRADE_CODE
  ) REFERENCES GRADE (
    GRADE_CODE
  )
);

CREATE TABLE IF NOT EXISTS BONUS (
  EMP_ID INTEGER NOT NULL,
  PAYMENTS INTEGER,
  PRIMARY KEY (EMP_ID),
  FOREIGN KEY (
    EMP_ID
  ) REFERENCES EMP (
    EMP_ID
  )
);

TRUNCATE TABLE EMP CASCADE;
TRUNCATE TABLE BONUS;
