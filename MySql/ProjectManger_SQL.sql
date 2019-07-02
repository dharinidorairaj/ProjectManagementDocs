CREATE DATABASE PROJECTMANAGER;

drop table task_entity;
drop table parent_task_entity;
drop table project_entity;
drop table users;
drop table user_entity;

create table user_entity(
user_id BIGINT(10) NOT NULL AUTO_INCREMENT,
employee_id VARCHAR(6) NOT NULL,
first_name VARCHAR(50) NULL DEFAULT NULL,
last_name VARCHAR(50) NULL DEFAULT NULL,
PRIMARY KEY (user_id)
);

CREATE TABLE task_entity (
	task_id BIGINT(10) NOT NULL AUTO_INCREMENT,
	task VARCHAR(50) NULL DEFAULT NULL,
	parent_id BIGINT(10) not NULL,
	user_id BIGINT(10) NOT NULL,
	start_date date NULL DEFAULT NULL,
	end_date date NULL DEFAULT NULL,
	priority VARCHAR(2) NULL DEFAULT NULL,
	status VARCHAR(1) NULL DEFAULT NULL,
	project_id BIGINT(10) NOT NULL,
	PRIMARY KEY (task_id)	
);

Correct code for task table

CREATE TABLE task_entity (
	task_id BIGINT(10) NOT NULL AUTO_INCREMENT,
	task VARCHAR(50) NULL DEFAULT NULL,	
	user_id BIGINT(10) NOT NULL,
	start_date date NULL DEFAULT NULL,
	end_date date NULL DEFAULT NULL,
	priority VARCHAR(2) NULL DEFAULT NULL,
	status VARCHAR(10) NULL DEFAULT NULL,
	project_id BIGINT(10) NOT NULL,
	PRIMARY KEY (task_id)	
);
CREATE TABLE parent_task_entity (
	parent_id BIGINT(10) NOT NULL AUTO_INCREMENT,
	parent_task VARCHAR(50) NULL DEFAULT NULL,	
	PRIMARY KEY (parent_id)	
);

CREATE TABLE project_Entity (
	project_id BIGINT(10) NOT NULL AUTO_INCREMENT,
	project VARCHAR(50) NULL DEFAULT NULL,
	start_date date NULL DEFAULT NULL,
	end_date date NULL DEFAULT NULL,
	priority VARCHAR(2) NULL DEFAULT NULL,	
	user_id BIGINT(10) NOT NULL,
	PRIMARY KEY (project_id),
	CONSTRAINT FK_PROJECT_entity_MANAGER_ID FOREIGN KEY (user_id) REFERENCES user_entity (user_id)
);

select * from user_entity;
select * from parent_task_entity;
select * from project_entity;
select * from task_entity;