
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
  INSERT INTO STUD VALUES
    (000000001, 'Ethan Sung', 'j.y.s@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (000000002, 'Sam Law', 'w.s.l@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (000000003, 'Simon Carucci', 's.c@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (000000004, 'Agata Miakisz', 'a.m@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (110519970, 'Sheri Rice', 's.r@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (123456789, 'Brown Bear', 'b.b@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (234567891, 'Black Cat', 'b.c@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (345678912, 'Lazy Pig', 'l.p@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (456789123, 'Sleepy Wakey', 's.w@se16.qmul.ac.uk');


-- table for subjects --
CREATE TABLE SUBJ
(
  SubjectCode VARCHAR2(8),
  SubjName VARCHAR2(50),
  SubjYear DATE,
  SubjSem NUMBER(1)
);

  INSERT INTO SUBJ VALUES
    ('ECS529U', 'Database Systems', TO_DATE('01-2018','MON-YYYY'), 5);
  INSERT INTO SUBJ VALUES
    ('ECS522U', 'Graphical User Interfaces', TO_DATE('01-2018','MON-YYYY'), 5);
  INSERT INTO SUBJ VALUES
    ('ECS506U', 'Software Engineering Project', TO_DATE('01-2018','MON-YYYY'), 5);
  INSERT INTO SUBJ VALUES
    ('ECS518U', 'Operating Systems', TO_DATE('01-2018','MON-YYYY'), 5);
  INSERT INTO SUBJ VALUES
    ('ECS509U', 'Probability and Matrices', TO_DATE('10-2017','MON-YYYY'), 4);
  INSERT INTO SUBJ VALUES
    ('ECS524U', 'Internet Protocals and Application', TO_DATE('10-2017','MON-YYYY'), 4);
  INSERT INTO SUBJ VALUES
    ('ECS510U', 'Algorithms and Data Structures IN AN OBJECT-ORIENTED FRAMEWORK', TO_DATE('10-2017','MON-YYYY'), 4);
  INSERT INTO SUBJ VALUES
    ('ECS505U', 'Software Engineering', TO_DATE('10-2017','MON-YYYY'), 4);

  INSERT INTO SUBJ VALUES
    ('ECS421U', 'Automata and Formal Languages', TO_DATE('01-2017','MON-YYYY'), 2);
  INSERT INTO SUBJ VALUES
    ('ECS419U', 'Information System Analysis', TO_DATE('01-2017','MON-YYYY'), 2);
  INSERT INTO SUBJ VALUES
    ('ECS417U', 'Fundamentals of Web Technology', TO_DATE('01-2017','MON-YYYY'), 2);
  INSERT INTO SUBJ VALUES
    ('ECS414U', 'Onject-Oriented Programming', TO_DATE('01-2017','MON-YYYY'), 2);
  INSERT INTO SUBJ VALUES
    ('ECS407U', 'Logic and Discrete Structures', TO_DATE('10-2016','MON-YYYY'), 1);
  INSERT INTO SUBJ VALUES
    ('ECS404U', 'Computer Systems and Network', TO_DATE('10-2016','MON-YYYY'), 1);
  INSERT INTO SUBJ VALUES
    ('ECS402U', 'Professional and Research Themes', TO_DATE('10-2016','MON-YYYY'), 1);
  INSERT INTO SUBJ VALUES
    ('ECS401U', 'Procedural Programming', TO_DATE('10-2016','MON-YYYY'), 1);


-- table for student subject --
-- maybe ADD LECTSUBJ! as at least one lecturer taught one subject. --
CREATE TABLE STUDSUBJ -- not working at the moment... --
(
  StudentID NUMBER(9),
  SubjectCode VARCHAR2(8),
  LecturerID NUMBER(9)
);

  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS529U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS522U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS506U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS518U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS509U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS524U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS510U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS505U', 520131400);

  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS421U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS419U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS417U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS414U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS407U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS404U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS402U', 520131400);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS401U', 520131400);


-- table for lecturers --
CREATE TABLE LECT
(
  LecturerID NUMBER(9),
  LName VARCHAR2(30),
  LEmail VARCHAR2(30)
);

  INSERT INTO LECT VALUES
    (520131400, 'Neshanthan Annalingam', 'n.a@se16.qmul.ac.uk');
  INSERT INTO LECT VALUES
    (123456789, 'Daniyaal Beg', 'd.b@se16.qmul.ac.uk');


-- table for Courseworks --
CREATE TABLE CW -- not working atm... --
(
  CWCode NUMBER(10),
  CWName VARCHAR2(30),
  CWDeadline DATE,
  CWMark NUMBER(3),
  SubjectCode VARCHAR2(8),
  StudentID NUMBER(9) -- add student ID because Courseworks done by student\.
);

  INSERT INTO CW VALUES
    (0136794, 'Coursework02 - Implementation', TO_DATE('23-03-2018 23:55','DD-MON-YY HH:MI'
      83, 'ECS529U', 161017024);
  INSERT INTO CW VALUES
    (0136790, 'Coursework01 - Design', TO_DATE('16-02-2018 23:55','DD-MON-YY HH:MI'
      90, 'ECS529U', 161017024);


-- table for exams --
CREATE TABLE EXAM -- not working atm.. --
(
  ExamCode NUMBER(5),
  EName VARCHAR2(15),
  EType VARCHAR2(10),
  EDate DATE,
  ETime TIME,
  EMark NUMBER(3),
  SubjectCode VARCHAR2(8),
  LecturerID NUMBER(9),
  StudentID NUMBER(9) -- added studentID because student takes exams.
);

  INSERT INTO EXAM VALUES
    (0159, 'Final Exam', 'First Sit', TO_DATE('03-05-2018','DD-MM-YYYY'),
      TIME('10:00','HH:MI'), 79, 'ECS529U', 520131400, 161017024);
  INSERT INTO EXAM VALUES
    (2107, 'Final Exam', 'First Sit', TO_DATE('07-05-2018','DD-MM-YYYY'),
      TIME('11:00','HH:MI'), 89, 'ECS505U', 123456789, 161017024);
  INSERT INTO EXAM VALUES
    (3459, 'Final Exam', 'First Sit', TO_DATE('10-05-2018','DD-MM-YYYY'),
      TIME('09:00','HH:MI'), 73, 'ECS522U', 520131400, 161017024);
  INSERT INTO EXAM VALUES
    (1122, 'Final Exam', 'First Sit', TO_DATE('13-05-2018','DD-MM-YYYY'),
      TIME('14:00','HH:MI'), 92, 'ECS509U', 123456789, 161017024);


-- table for questions --
CREATE TABLE QUEST
(
  QuestionNo NUMBER(2),
  QMark NUMBER(2), -- max marks of each question is 5
  QAuthor VARCHAR2(30),
  ExamCode NUMBER(5),
  LecturerID NUMBER(9)
);

  INSERT INTO QUEST VALUES
    (05, 4, 'Daniyaal Beg', 3459, 520131400);
  INSERT INTO QUEST VALUES
    (11, 3, 'Neshanthan Annalingam', 0159, 123456789);
  INSERT INTO QUEST VALUES
    (17, 4, 'Daniyaal Beg', 2107, 123456789);
  INSERT INTO QUEST VALUES
    (23, 5, 'Neshanthan Annalingam', 1122, 520131400);


COMMIT;

SET TERMOUT ON
PROMPT Demonstration table build is complete.
