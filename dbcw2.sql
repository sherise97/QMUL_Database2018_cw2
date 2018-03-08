
SET TERMOUT ON
Database System Coursework02 - Implementation.
PROMPT Building demonstration tables.  Please wait.
SET TERMOUT OFF

-- creating 7 tables --
DROP TABLE STUD;
DROP TABLE SUBJ;
DROP TABLE STUDSUBJ;
DROP TABLE LECT;
DROP TABLE CW;
DROP TABLE EXAM;
DROP TABLE QUEST;

-- table for students --
CREATE TABLE STUD
(
  StudentID NUMBER(9),
  StudentName VARCHAR2(20),
  SEmail VARCHAR2(30)
);

  INSERT INTO STUD VALUES
    (161017024, 'Sherise Lam', 's.y.lam@se16.qmul.ac.uk');

-- table for subjects --
CREATE TABLE SUBJ
(
  SubjectCode VARCHAR2(8),
  SubjName VARCHAR2(30),
  SubjYear DATE,
  SubjSem NUMBER(1)
);

  INSERT INTO SUBJ VALUES
    ('ECS529U', 'DATABASE SYSTEMS', TO_DATE('2018','YYYY'), 5);

-- table for student subject --
-- ADDED LECTURER! as at least one lecturer taught one subject.
CREATE TABLE STUDSUBJ
(
  StudentID NUMBER(9),
  SubjectCode VARCHAR2(8)
  LecturerID NUMBER(9)
);

  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS529U', 5201314);

-- table for lecturers --
CREATE TABLE LECT
(
  LecturerID NUMBER(9),
  LName VARCHAR2(30),
  LEmail VARCHAR2(30)
);

  INSERT INTO LECT VALUES
    (5201314, 'Neshanthan Annalingam', 'n.a@se16.qmul.ac.uk');
  INSERT INTO LECT VALUES
    (123456789, 'Daniyaal Beg', 'd.b@se16.qmul.ac.uk');

-- table for Courseworks --
CREATE TABLE CW
(
  CWCode NUMBER(10),
  CWName VARCHAR2(30),
  CWDeadline DATE,
  CWMark NUMBER(3),
  SubjectCode VARCHAR2(8)
);

  INSERT INTO CW VALUES
    (0136794, 'Coursework02 - Implementation', TO_DATE('23-03-2018 23:55','DD-MON-YY HH:MI'
      83, 'ECS529U');

-- table for exams --
CREATE TABLE EXAM
(
  ExamCode NUMBER(5),
  EName VARCHAR2(15),
  EType VARCHAR2(10),
  EDate DATE,
  ETime TIME,
  EMark NUMBER(3),
  SubjectCode VARCHAR2(8),
  LecturerID NUMBER(9)
);

  INSERT INTO EXAM VALUES
    (0159, 'Final Exam', 'First Sit', TO_DATE('03-05-2018','DD-MM-YYYY'),
      TIME('10:00','HH:MI'), 79, 'ECS529U', 5201314);

-- table for questions --
CREATE TABLE QUEST
(
  QuestionNo NUMBER(2),
  QMark NUMBER(3),
  QAuthor VARCHAR2(30),
  ExamCode NUMBER(5),
  LecturerID NUMBER(9)
);

  INSERT INTO QUEST VALUES
    (17, 4, 'Neshanthan Annalingam', 0159, 5201314);

COMMIT;

SET TERMOUT ON
PROMPT Demonstration table build is complete.
