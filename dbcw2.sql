-- Sherise version --
-- Database System Coursework02 - Implementation. --
SET TERMOUT ON
PROMPT Building demonstration tables.  Please wait.
SET TERMOUT OFF

-- creating 8 tables --
DROP TABLE STUD CASCADE CONSTRAINTS;
DROP TABLE LECT CASCADE CONSTRAINTS;
DROP TABLE SUBJ CASCADE CONSTRAINTS;
DROP TABLE STUDSUBJ CASCADE CONSTRAINTS;
DROP TABLE SUBJLECT CASCADE CONSTRAINTS;
DROP TABLE CW CASCADE CONSTRAINTS;
DROP TABLE EXAM CASCADE CONSTRAINTS;
DROP TABLE QUEST CASCADE CONSTRAINTS;

-- table for students --
CREATE TABLE STUD
( StudentID INTEGER NOT NULL,
  FirstName VARCHAR2(30) NOT NULL,
  LastName VARCHAR2(30) NOT NULL,
  SEmail VARCHAR2(30) NOT NULL,
  PRIMARY KEY (StudentID)
);

  INSERT INTO STUD VALUES
    (seq_StudentID.nextval, 'Sherise', 'Lam', 's.y.lam@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (seq_StudentID.nextval, 'Ethan', 'Sung', 'j.y.s@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (seq_StudentID.nextval, 'Sam', 'Law', 'w.s.l@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (seq_StudentID.nextval, 'Simon', 'Carucci', 's.c@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (seq_StudentID.nextval, 'Agata', 'Miakisz', 'a.m@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (seq_StudentID.nextval, 'Happy', 'Kitty', 'h.k@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (seq_StudentID.nextval, 'Choco', 'Latte', 'c.l@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (seq_StudentID.nextval, 'Black', 'Cat', 'b.c@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (seq_StudentID.nextval, 'Lazy', 'Pig', 'l.p@se16.qmul.ac.uk');
  INSERT INTO STUD VALUES
    (seq_StudentID.nextval, 'Jack', 'Walker', 'j.w@se16.qmul.ac.uk');


-- table for lecturers --
CREATE TABLE LECT
( LecturerID INTEGER NOT NULL,
  FirstName VARCHAR2(30) NOT NULL,
  LastName VARCHAR2(30) NOT NULL,
  LEmail VARCHAR2(30) NOT NULL,
  PRIMARY KEY (LecturerID)
);

  INSERT INTO LECT VALUES
    (seq_LecturerID.nextval, 'Tassos', 'Tombros', 'a.tombros@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (seq_LecturerID.nextval, 'Anthony', 'Stockman', 't.stockman@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (seq_LecturerID.nextval, 'Thomas', 'Roelleke', 't.roelleke@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (seq_LecturerID.nextval, 'Matthew', 'Huntbach', 'm.m.huntbach@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (seq_LecturerID.nextval, 'Nikos', 'Tzevelekos', 'nikos.tzevelekos@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (seq_LecturerID.nextval, 'Steve', 'Uhlig', 'steve.uhlig@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (seq_LecturerID.nextval, 'Mustafa', 'Bozkurt', 'm.bozkurt@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (seq_LecturerID.nextval, 'Lorenzo', 'Jamone', 'l.jamone@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (seq_LecturerID.nextval, 'Juan', 'Alvarado', 'j.alvaradolopez@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (seq_LecturerID.nextval, 'Ishani', 'Chandrasekara', 'i.chandrasekara@qmul.ac.uk');
  INSERT INTO LECT VALUES
    (seq_LecturerID.nextval, 'Graham', 'Spickett-Jones', 'spickett-jones@qmul.ac.uk');


-- table for subjects --
CREATE TABLE SUBJ
( SubjectCode VARCHAR2(8) NOT NULL,
  SubjName VARCHAR2(65) NOT NULL,
  SubjYear DATE NOT NULL,
  SubjSem NUMBER(1) NOT NULL,
  PRIMARY KEY (SubjectCode)
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
    ('BUS011U', 'Marketing ', TO_DATE('01-2018','MM-YYYY'), 5);
  INSERT INTO SUBJ VALUES
    ('ECS509U', 'Probability and Matrices', TO_DATE('10-2017','MM-YYYY'), 4);
  INSERT INTO SUBJ VALUES
    ('ECS524U', 'Internet Protocols and Application', TO_DATE('10-2017','MM-YYYY'), 4);
  INSERT INTO SUBJ VALUES
    ('ECS510U', 'Algorithms and Data Structures in an Object-Oriented Framework', TO_DATE('10-2017','MM-YYYY'), 4);
  INSERT INTO SUBJ VALUES
    ('ECS505U', 'Software Engineering', TO_DATE('10-2017','MM-YYYY'), 4);
  INSERT INTO SUBJ VALUES
    ('BUS021U', 'Financial Accounting ', TO_DATE('10-2017','MM-YYYY'), 4);


-- table for student subject --
-- maybe ADD LECTSUBJ! as at least one lecturer taught one subject. --
CREATE TABLE STUDSUBJ
( StudentID INTEGER NOT NULL,
  SubjectCode VARCHAR2(8) NOT NULL
);

  INSERT INTO STUDSUBJ VALUES
    (seq_StudentID.nextval, 'ECS529U');
  INSERT INTO STUDSUBJ VALUES
    (seq_StudentID.nextval, 'BUS021U');
  INSERT INTO STUDSUBJ VALUES
    (seq_StudentID.nextval, 'BUS011U');
  INSERT INTO STUDSUBJ VALUES
    (seq_StudentID.nextval, 'ECS522U');
  INSERT INTO STUDSUBJ VALUES
    (seq_StudentID.nextval, 'ECS506U');
  INSERT INTO STUDSUBJ VALUES
    (seq_StudentID.nextval, 'ECS518U');
  INSERT INTO STUDSUBJ VALUES
    (seq_StudentID.nextval, 'ECS509U');
  INSERT INTO STUDSUBJ VALUES
    (seq_StudentID.nextval, 'ECS524U');
  INSERT INTO STUDSUBJ VALUES
    (seq_StudentID.nextval, 'ECS510U');
  INSERT INTO STUDSUBJ VALUES
    (seq_StudentID.nextval, 'ECS505U');


-- table for subjects lecturer --
-- might erase afterward --
CREATE TABLE SUBJLECT
( SubjectCode VARCHAR2(8) NOT NULL,
  LecturerID NUMBER(9) NOT NULL
);

  INSERT INTO SUBJLECT VALUES
    ('ECS529U', seq_LecturerID.nextval);
  INSERT INTO SUBJLECT VALUES
    ('ECS522U', seq_LecturerID.nextval);
  INSERT INTO SUBJLECT VALUES
    ('ECS506U', seq_LecturerID.nextval);
  INSERT INTO SUBJLECT VALUES
    ('ECS518U', seq_LecturerID.nextval);
  INSERT INTO SUBJLECT VALUES
    ('ECS509U', seq_LecturerID.nextval);
  INSERT INTO SUBJLECT VALUES
    ('ECS524U', seq_LecturerID.nextval);
  INSERT INTO SUBJLECT VALUES
    ('ECS510U', seq_LecturerID.nextval);
  INSERT INTO SUBJLECT VALUES
    ('ECS505U', seq_LecturerID.nextval);
  INSERT INTO SUBJLECT VALUES
    ('BUS021U', seq_LecturerID.nextval);
  INSERT INTO SUBJLECT VALUES
    ('BUS011U', seq_LecturerID.nextval);


-- table for Courseworks --
-- add student ID because Courseworks done by student. --
CREATE TABLE CW
( CWCode INTEGER NOT NULL,
  CWName VARCHAR2(60) NOT NULL,
  CWDeadline DATE NOT NULL,
  CWMark NUMBER(3) NOT NULL,
  SubjectCode VARCHAR2(8) NOT NULL,
  StudentID INTEGER NOT NULL,
  PRIMARY KEY (CWCode),
  CONSTRAINT CW_SubjectCode
    FOREIGN KEY (SubjectCode) REFERENCES SUBJ(SubjectCode) ON DELETE CASCADE,
  CONSTRAINT CW_StudentID
    FOREIGN KEY (StudentID) REFERENCES STUD(StudentID) ON DELETE CASCADE
);

  INSERT INTO CW VALUES
    (seq_CWCode.nextval, 'Coursework02 - Implementation', TO_DATE('23-03-2018 23:55','DD-MM-YYYY HH24:MI'),
      83, 'ECS529U', 3);
  INSERT INTO CW VALUES
    (seq_CWCode.nextval, 'Coursework01 - Design', TO_DATE('16-02-2018 23:55','DD-MM-YYYY HH24:MI'),
      90, 'ECS529U', 2);
  INSERT INTO CW VALUES
    (seq_CWCode.nextval, 'Coursework01 - Stakeholders, requirements and design', TO_DATE('23-02-2018 23:55','DD-MM-YYYY HH24:MI'),
      80, 'ECS522U', 4);
  INSERT INTO CW VALUES
    (seq_CWCode.nextval, 'Coursework02 - Implementation', TO_DATE('23-03-2018 23:55','DD-MM-YYYY HH24:MI'),
      80, 'ECS522U', 5);

-- table for exams --
-- maybe add studentID because student takes exams. StudentID NUMBER(9) --
CREATE TABLE EXAM
( ExamCode INTEGER NOT NULL,
  EName VARCHAR2(15) NOT NULL,
  EType VARCHAR2(10) NOT NULL,
  EDate DATE NOT NULL,
  ETime TIMESTAMP NOT NULL,
  EMark NUMBER(3) NOT NULL,
  SubjectCode VARCHAR2(8) NOT NULL,
  LecturerID INTEGER NOT NULL,
  StudentID INTEGER NOT NULL,
  PRIMARY KEY (ExamCode),
  CONSTRAINT EXAM_SubjectCode
    FOREIGN KEY (SubjectCode) REFERENCES SUBJ(SubjectCode) ON DELETE CASCADE,
  CONSTRAINT EXAM_LecturerID
    FOREIGN KEY (LecturerID) REFERENCES LECT(LecturerID) ON DELETE CASCADE,
  CONSTRAINT EXAM_STUDENTID
    FOREIGN KEY (StudentID) REFERENCES STUD(StudentID) ON DELETE CASCADE
);

  INSERT INTO EXAM VALUES
    (seq_ExamCode.nextval, 'Final Exam', 'First Sit', TO_DATE('30-04-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('14:30','HH24:MI'), 79, 'ECS529U', 2, 2);
  INSERT INTO EXAM VALUES
    (seq_ExamCode.nextval, 'Final Exam', 'First Sit', TO_DATE('18-05-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('10:00','HH24:MI'), 60, 'BUS021U', 11, 3);
  INSERT INTO EXAM VALUES
    (seq_ExamCode.nextval, 'Final Exam', 'First Sit', TO_DATE('08-05-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('10:00','HH24:MI'), 79, 'ECS524U', 3, 4);
  INSERT INTO EXAM VALUES
    (seq_ExamCode.nextval, 'Final Exam', 'First Sit', TO_DATE('30-04-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('14:30','HH24:MI'), 79, 'ECS518U', 4, 5);
  INSERT INTO EXAM VALUES
    (seq_ExamCode.nextval, 'Final Exam', 'First Sit', TO_DATE('07-05-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('14:30','HH24:MI'), 89, 'ECS505U', 5, 6);
  INSERT INTO EXAM VALUES
    (seq_ExamCode.nextval, 'Final Exam', 'First Sit', TO_DATE('10-05-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('14:30','HH24:MI'), 73, 'ECS522U', 6, 7);
  INSERT INTO EXAM VALUES
    (seq_ExamCode.nextval, 'Final Exam', 'First Sit', TO_DATE('13-05-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('10:00','HH24:MI'), 92, 'ECS509U', 7, 8);
  INSERT INTO EXAM VALUES
    (seq_ExamCode.nextval, 'Final Exam', 'Resit', TO_DATE('30-04-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('14:30','HH24:MI'), 79, 'ECS518U', 8, 9);
  INSERT INTO EXAM VALUES
    (seq_ExamCode.nextval, 'Final Exam', 'Resit', TO_DATE('07-05-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('14:30','HH24:MI'), 89, 'ECS505U', 9, 10);
  INSERT INTO EXAM VALUES
    (seq_ExamCode.nextval, 'Final Exam', 'Resit', TO_DATE('13-05-2018','DD-MM-YYYY'),
      TO_TIMESTAMP('10:00','HH24:MI'), 92, 'ECS509U', 10, 11);


-- table for questions --
-- max marks of each question is 5 --
CREATE TABLE QUEST
( QuestionNo NUMBER(2) NOT NULL,
  QMark NUMBER(2) NOT NULL,
  QAuthor VARCHAR2(60) NOT NULL,
  ExamCode INTEGER NOT NULL,
  LecturerID INTEGER NOT NULL,
  CONSTRAINT QUEST_ExamCode
    FOREIGN KEY (ExamCode) REFERENCES EXAM(ExamCode) ON DELETE CASCADE,
  CONSTRAINT QUEST_LecturerID
    FOREIGN KEY (LecturerID) REFERENCES LECT(LecturerID) ON DELETE CASCADE
);

  INSERT INTO QUEST VALUES
    (01, 2, 'Tassos Tombros', 82, 17);
  INSERT INTO QUEST VALUES
    (02, 3, 'Tassos Tombros', 83, 17);
  INSERT INTO QUEST VALUES
    (03, 4, 'Mustafa Bozkurt', 84, 21);
  INSERT INTO QUEST VALUES
    (04, 2, 'Tassos Tombros', 85, 17);
  INSERT INTO QUEST VALUES
    (05, 8, 'Tassos Tombros', 86, 17);
  INSERT INTO QUEST VALUES
    (13, 5, 'Anthony Stockman', 87, 15);
  INSERT INTO QUEST VALUES
    (15, 4, 'Anthony Stockman', 88, 14);
  INSERT INTO QUEST VALUES
    (21, 3, 'Matthew Huntbach', 89, 18);
  INSERT INTO QUEST VALUES
    (31, 2, 'Nikos Tzevelekos', 90, 19);
  INSERT INTO QUEST VALUES
    (23, 1, 'Steve Uhlig', 91, 20);
  INSERT INTO QUEST VALUES
    (03, 1, 'Lorenzo Jamone', 83, 22);
  INSERT INTO QUEST VALUES
    (07, 1, 'Steve Uhlig', 88, 21);
  INSERT INTO QUEST VALUES
    (20, 1, 'Lorenzo Jamone', 86, 16);
  INSERT INTO QUEST VALUES
    (18, 1, 'Juan Alvarado', 91, 15);
  INSERT INTO QUEST VALUES
    (17, 1, 'Juan Alvarado', 82, 16);


-- Creating sequences
CREATE SEQUENCE seq_StudentID
MINVALUE 0
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE SEQUENCE seq_LecturerID
MINVALUE 0
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE SEQUENCE seq_SubjectCode
MINVALUE 0
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE SEQUENCE seq_ExamCode
MINVALUE 0
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE SEQUENCE seq_CWCode
MINVALUE 0
START WITH 1
INCREMENT BY 1
CACHE 10;


COMMIT;

SET TERMOUT ON
PROMPT Demonstration table build is complete.
