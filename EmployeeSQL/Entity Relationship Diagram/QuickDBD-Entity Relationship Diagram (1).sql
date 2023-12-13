﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/rW4ECM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Departments] (
    [dep_no] VARCHAR(10)  NOT NULL ,
    [dep_name] VARCHAR(20)  NOT NULL 
)

CREATE TABLE [Dept_Employees] (
    [empoyee_no] INTERGER  NOT NULL ,
    [dep_no] VARCHAR(10)  NOT NULL 
)

CREATE TABLE [Dept_Manangers] (
    [empoyee_no] INTERGER  NOT NULL ,
    [dep_no] VARCHAR(10)  NOT NULL 
)

CREATE TABLE [Employees] (
    [empoyee_no] INTERGER  NOT NULL ,
    [empoyee_title_id] (VARCHAR(10)  NOT NULL ,
    [first_name] VARCHAR(50  NOT NULL ,
    [last_name] VARCHAR(50  NOT NULL ,
    [gender] VARCHAR(10)  NOT NULL ,
    [birth_date] INTERGER  NOT NULL ,
    [hire_date] INTERGER  NOT NULL 
)

CREATE TABLE [Salaries] (
    [empoyee_no] INTERGER  NOT NULL ,
    [Salary] INTERGER  NOT NULL 
)

CREATE TABLE [Titles] (
    [title_id] VARCHAR(10)  NOT NULL ,
    [title_name] VARCHAR(10)  NOT NULL 
)

ALTER TABLE [Departments] WITH CHECK ADD CONSTRAINT [FK_Departments_dep_no] FOREIGN KEY([dep_no])
REFERENCES [Dept_Employees] ([dep_no])

ALTER TABLE [Departments] CHECK CONSTRAINT [FK_Departments_dep_no]

ALTER TABLE [Dept_Employees] WITH CHECK ADD CONSTRAINT [FK_Dept_Employees_empoyee_no] FOREIGN KEY([empoyee_no])
REFERENCES [Employees] ([empoyee_no])

ALTER TABLE [Dept_Employees] CHECK CONSTRAINT [FK_Dept_Employees_empoyee_no]

ALTER TABLE [Dept_Manangers] WITH CHECK ADD CONSTRAINT [FK_Dept_Manangers_empoyee_no] FOREIGN KEY([empoyee_no])
REFERENCES [Employees] ([empoyee_no])

ALTER TABLE [Dept_Manangers] CHECK CONSTRAINT [FK_Dept_Manangers_empoyee_no]

ALTER TABLE [Dept_Manangers] WITH CHECK ADD CONSTRAINT [FK_Dept_Manangers_dep_no] FOREIGN KEY([dep_no])
REFERENCES [Departments] ([dep_no])

ALTER TABLE [Dept_Manangers] CHECK CONSTRAINT [FK_Dept_Manangers_dep_no]

ALTER TABLE [Employees] WITH CHECK ADD CONSTRAINT [FK_Employees_empoyee_no] FOREIGN KEY([empoyee_no])
REFERENCES [Salaries] ([empoyee_no])

ALTER TABLE [Employees] CHECK CONSTRAINT [FK_Employees_empoyee_no]

ALTER TABLE [Employees] WITH CHECK ADD CONSTRAINT [FK_Employees_empoyee_title_id] FOREIGN KEY([empoyee_title_id])
REFERENCES [Titles] ([title_id])

ALTER TABLE [Employees] CHECK CONSTRAINT [FK_Employees_empoyee_title_id]

COMMIT TRANSACTION QUICKDBD