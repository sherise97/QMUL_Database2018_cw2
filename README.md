# QMUL_Database2018_cw2

Question/ Guildlines:

This deliverable is concerned with the implementation of your relational schema using the Oracle ORDBMS (interactive SQL is sufficient for this coursework). You should base your implementation on the outcomes of coursework 1 (original or refined). The coursework should be delivered in a form so that the tables can be easily created, data inserted and queries and views run easily by the person marking the work. 

You can create your tables using individual “create table” statements, but we would recommend instead that you put all of these into one script file, so that it is easier to reconstruct your entire schema of tables should you find data or tables have been corrupted. You can use as a template for your create tables script, the script used to create the tables for the lab exercises. A link to this script is provided here. I would strongly recommend commenting out the “set termout off” command near the top of this file so that you see any problems with the creation of your tables while developing this script. Comment it out by simply adding 2 dashes “--“ at the start of the line. It is also the usual practice (as in the script) to drop each table before it is created because the “create table” statement will fail if a table already exists with that name.

Oracle provides a set of commands that can be used to format the output from queries. It enables you to provide headers, specify the length of columns, specify pagebreaks and other formatting to improve the presentation of query results. A link to a document describing the sqlplus commands available is provided here.
 
For coursework 2, you are asked to hand in:

- The relational schema from coursework 1 (no marks, but a zero mark for the deliverable if not included)

- A listing of all the 'create table' commands that were used to set up your database. (4 marks)

- The sample test data. This test data should be carefully designed in order to test that your queries will work under any conditions. (2 marks)

- A set of 3-4 view definitions ('create view' commands), with listings of the output you obtain when you list these views. (3 marks). A view definition, in this context, consists of both an English explanation of what the view is intended to do AND the SQL command itself. You should try to create views that would be useful for a particular person or group of people who would use the system.

- A set of 10-12 SQL queries, of varying complexity, that may be frequently used (canned queries), with listings of the output you obtain when you run these queries. Marks will be awarded for use of a wide range of SQL language constructs. (6 marks). 

A query, in this context, consists of both the English explanation of what the query is intended to do AND the SQL query itself and the output obtained when it is run.
(Total 15 marks)

	Note that it is essential that you build the database AND test out all the queries / views that you include in your report.  Any evidence that this has not been done, or that any problems have not been honestly reported, will be severely penalised.
