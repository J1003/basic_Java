CREATE TABLE STUDENT (
    ID VARCHAR2(10) PRIMARY KEY,
    NAME VARCHAR2(30) NOT NULL, 
    KOR NUMBER(3) DEFAULT 0 CHECK (KOR BETWEEN 0 AND 100),
    ENG NUMBER(3) DEFAULT 0 CHECK (ENG BETWEEN 0 AND 100),
    MATH NUMBER(3) DEFAULT 0 CHECK (MATH BETWEEN 0 AND 100),
    TOT NUMBER(3) DEFAULT 0 CHECK (TOT BETWEEN 0 AND 300),
    AVG NUMBER(5,2) DEFAULT 0 CHECK (AVG BETWEEN 0 AND 100)
);
INSERT INTO STUDENT (ID, NAME, KOR, ENG, MATH, TOT, AVG)
VALUES ('2023001', '홍길동', 100, 30, 81, 0, 0);

INSERT INTO STUDENT (ID, NAME, KOR, ENG, MATH)
VALUES ('2023002', '홍길동', 95, 85, 75);
COMMIT;

SELECT * FROM STUDENT;
COMMIT;


---- (참고) ---------------------------------
SELECT ID, NAME, KOR, ENG, MATH, TOT, AVG
FROM STUDENT
WHERE ID = '2023002'
ORDER BY ID
;

SELECT * FROM STUDENT;
-- UPDATE
SELECT * FROM STUDENT WHERE ID = '2023002';
UPDATE STUDENT
    SET -- NAME = '홍길동UPT', 
      KOR = 98
    , ENG = 88
    , MATH = 78
WHERE NAME  = '2023002'
;

INSERT INTO STUDENT (ID, NAME, KOR, ENG, MATH, TOT, AVG)
VALUES ('2023007', '홍길동7', 100, 30, 81, 0, 0);
COMMIT;

DELETE FROM STUDENT WHERE ID = '2023007';
COMMIT; 



SELECT ID, NAME, KOR, ENG, MATH, TOT, AVG
FROM STUDENT
WHERE ID = '2023002'
;


SELECT ID, NAME, KOR, ENG, MATH, TOT, AVG
FROM STUDENT
WHERE ID = ''; UPDATE STUDENT SET NAME = '홍길동'
;
----------------------
SELECT ID, NAME, KOR, ENG, MATH, TOT, AVG
FROM STUDENT
WHERE ID = '' OR '1'='1' //여러개 데이터 찾을 수 있음
;
----------------
// PreparedStatement 바인드 실행시 사용 방법
SELECT ID, NAME, KOR, ENG, MATH, TOT, AVG
FROM STUDENT 
WHERE ID = :id
;
--------------------
DELETE FROM STUDENT 
WHERE ID = :id
;