
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
    (160000001, 'Ethan Sung', 'j.y.s@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (160448269, 'Sam Law', 'w.s.l@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (160000003, 'Simon Carucci', 's.c@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (160000004, 'Agata Miakisz', 'a.m@se16.qmul.ac.uk');
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
  SubjName VARCHAR2(65),
  SubjYear DATE,
  SubjSem NUMBER(1)
);

  INSERT INTO SUBJ VALUES
    ('ECS529U', 'Database Systems', TO_DATE('01-2018','MM-YYYY'), 5);
  INSERT INTO SUBJ VALUES
    ('ECS522U', 'Graphical User Interfaces', TO_DATE('01-2018','MM-YYYY'), 5);
  INSERT INTO SUBJ VALUES
    ('ECS506U', 'Software Engineering Project', TO_DATE('01-2018','MM-YYYY'), 5);
  INSERT INTO SUBJ VALUES
    ('ECS518U', 'Operating Systems', TO_DATE('01-2018','MM-YYYY'), 5);
  INSERT INTO SUBJ VALUES
    ('ECS509U', 'Probability and Matrices', TO_DATE('10-2017','MM-YYYY'), 4);
  INSERT INTO SUBJ VALUES
    ('ECS524U', 'Internet Protocols and Application', TO_DATE('10-2017','MM-YYYY'), 4);
  INSERT INTO SUBJ VALUES
    ('ECS510U', 'Algorithms and Data Structures in an Object-Oriented Framework', TO_DATE('10-2017','MM-YYYY'), 4);
  INSERT INTO SUBJ VALUES
    ('ECS505U', 'Software Engineering', TO_DATE('10-2017','MM-YYYY'), 4);
  --INSERT INTO SUBJ VALUES
  --  ('ECS421U', 'Automata and Formal Languages', TO_DATE('01-2017','MM-YYYY'), 2);
  --INSERT INTO SUBJ VALUES
  --  ('ECS419U', 'Information System Analysis', TO_DATE('01-2017','MM-YYYY'), 2);
  --INSERT INTO SUBJ VALUES
  --  ('ECS417U', 'Fundamentals of Web Technology', TO_DATE('01-2017','MM-YYYY'), 2);
  --INSERT INTO SUBJ VALUES
  --  ('ECS414U', 'Object-Oriented Programming', TO_DATE('01-2017','MM-YYYY'), 2);
  --INSERT INTO SUBJ VALUES
  --  ('ECS407U', 'Logic and Discrete Structures', TO_DATE('10-2016','MM-YYYY'), 1);
  --INSERT INTO SUBJ VALUES
  --  ('ECS404U', 'Computer Systems and Network', TO_DATE('10-2016','MM-YYYY'), 1);
  --INSERT INTO SUBJ VALUES
  --  ('ECS402U', 'Professional and Research Themes', TO_DATE('10-2016','MM-YYYY'), 1);
  --INSERT INTO SUBJ VALUES
  --  ('ECS401U', 'Procedural Programming', TO_DATE('10-2016','MM-YYYY'), 1);


-- table for student subject --
-- maybe ADD LECTSUBJ! as at least one lecturer taught one subject. --
CREATE TABLE STUDSUBJ
(
  StudentID NUMBER(9),
  SubjectCode VARCHAR2(8),
  LecturerID NUMBER(9)
);

  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS529U', 100000012);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS522U', 100000005);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS506U', 100000041);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS518U', 100000001);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS509U', 100000001);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS524U', 100000003);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS510U', 100000021);
  INSERT INTO STUDSUBJ VALUES
    (161017024, 'ECS505U', 100000041);
  -- INSERT INTO STUDSUBJ VALUES
  --   (161017024, 'ECS421U', 520131400);
  -- INSERT INTO STUDSUBJ VALUES
  --   (161017024, 'ECS419U', 520131400);
  -- INSERT INTO STUDSUBJ VALUES
  --   (161017024, 'ECS417U', 520131400);
  -- INSERT INTO STUDSUBJ VALUES
  --   (161017024, 'ECS414U', 520131400);
  -- INSERT INTO STUDSUBJ VALUES
  --   (161017024, 'ECS407U', 520131400);
  -- INSERT INTO STUDSUBJ VALUES
  --   (161017024, 'ECS404U', 520131400);
  -- INSERT INTO STUDSUBJ VALUES
  --   (161017024, 'ECS402U', 520131400);
  -- INSERT INTO STUDSUBJ VALUES
  --   (161017024, 'ECS401U', 520131400);


-- table for lecturers --
CREATE TABLE LECT
(
  LecturerID NUMBER(9),
  LName VARCHAR2(30),
  LEmail VARCHAR2(30)
);

  INSERT INTO LECT VALUES
    (100000001, 'Tassos Tombros', 'a.tombros@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (100000011, 'Anthony Stockman', 't.stockman@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (100000012, 'Thomas Roelleke', 't.roelleke@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (100000021, 'Matthew Huntbach', 'm.m.huntbach@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (100000022, 'Nikos Tzevelekos', 'nikos.tzevelekos@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (100000003, 'Steve Uhlig', 'steve.uhlig@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (100000041, 'Mustafa Bozkurt', 'm.bozkurt@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (100000042, 'Lorenzo Jamone', 'l.jamone@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (100000005, 'Juan Alvarado', 'j.alvaradolopez@qmul.ac.uk');

-- table for Courseworks --
-- add student ID because Courseworks done by student. --
CREATE TABLE CW
(
  CWCode NUMBER(10),
  CWName VARCHAR2(30),
  CWDeadline DATE,
  CWMark NUMBER(3),
  SubjectCode VARCHAR2(8),
  StudentID NUMBER(9)
);

  INSERT INTO CW VALUES
    (0136794, 'Coursework02 - Implementation', TO_DATE('23-03-2018 23:55','DD-MM-YYYY HH24:MI'),
      83, 'ECS529U', 161017024);
  INSERT INTO CW VALUES
    (0136790, 'Coursework01 - Design', TO_DATE('16-02-2018 23:55','DD-MM-YYYY HH24:MI'),
      90, 'ECS529U', 161017024);


-- table for exams --
-- maybe add studentID because student takes exams. StudentID NUMBER(9) --
CREATE TABLE EXAM
(
  ExamCode NUMBER(5),
  EName VARCHAR2(15),
  EType VARCHAR2(10),
  EDate DATE,
  ETime TIMESTAMP,
  EMark NUMBER(3),
  SubjectCode VARCHAR2(8),
  LecturerID NUMBER(9),
);

  INSERT INTO EXAM VALUES
    (0159, 'Final Exam', 'First Sit', TO_DATE('30-04-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('14:30','HH24:MI'), 79, 'ECS529U', 100000011);
  INSERT INTO EXAM VALUES
    (2107, 'Final Exam', 'First Sit', TO_DATE('04-05-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('14:30','HH24:MI'), 89, 'ECS505U', 100000041);
  INSERT INTO EXAM VALUES
    (3459, 'Final Exam', 'First Sit', TO_DATE('02-05-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('14:30','HH24:MI'), 73, 'ECS522U', 100000005);
  INSERT INTO EXAM VALUES
    (1122, 'Final Exam', 'First Sit', TO_DATE('22-05-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('10:00','HH24:MI'), 92, 'ECS509U', 100000001);
  INSERT INTO EXAM VALUES
    (1312, 'Final Exam', 'First Sit', TO_DATE('16-05-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('10:00','HH24:MI'), 80, 'ECS518U', 520131400);
  INSERT INTO EXAM VALUES
    (2198, 'Final Exam', 'First Sit', TO_DATE('25-05-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('10:00','HH24:MI'), 89, 'ECS510U', 123456789);
  INSERT INTO EXAM VALUES
    (0710, 'Final Exam', 'First Sit', TO_DATE('08-05-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('10:00','HH24:MI'), 70, 'ECS524U', 520131400);

-- table for questions --
-- max marks of each question is 5 --
CREATE TABLE QUEST
(
  QuestionNo NUMBER(2),
  QMark NUMBER(2),
  QAuthor VARCHAR2(30),
  ExamCode NUMBER(5),
  LecturerID NUMBER(9)
);

  INSERT INTO QUEST VALUES
    (05, 4, 'Juan Alvarado', 3459, 100000005);
  INSERT INTO QUEST VALUES
    (11, 3, 'Thomas Roelleke', 0159, 100000011);
  INSERT INTO QUEST VALUES
    (17, 4, 'Lorenzo Jamone', 2107, 100000042);
  INSERT INTO QUEST VALUES
    (23, 5, 'Tassos Tombros', 1122, 100000001);


COMMIT;

SET TERMOUT ON
PROMPT Demonstration table build is complete.
