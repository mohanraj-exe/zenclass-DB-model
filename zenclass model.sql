SELECT * FROM `zenclass db model`.`student-collection`;

insert into `student-collection` (name, email, courses, batchId, language, qualification) values ('aaa','aaa@gmail.com','cyberSecurity','b30we','tamil','NON-IT');
insert into `student-collection` (name, email, courses, batchId, language, qualification) values ('bbb','bbb@gmail.com','fullstack','b30we','english','NON-IT');
insert into `student-collection` (name, email, courses, batchId, language, qualification) values ('ccc','ccc@gmail.com','ui-ux','b31we','english','NON-IT');
insert into `student-collection` (name, email, courses, batchId, language, qualification) values ('ddd','ddd@gmail.com','datascience','b30we','hindi','NON-IT');
insert into `student-collection` (name, email, courseName, batchId, language, qualification) values ('eee','eee@gmail.com','cyberSecurity','b30we','tamil','IT');
insert into `student-collection` (name, email, courseName, batchId, language, qualification) values ('fff','fff@gmail.com','cyberSecurity','b30we','english','IT');

alter table `student-collection` modify column language enum('tamil','english','hindi');
alter table `student-collection` rename column courses to courseName;
alter table `student-collection` add column `contact` int;
alter table `student-collection` rename column `courseName` to phone; 
alter table `student-collection` modify column `phone` int;
update `student-collection` set phone = 1001 where id = 1;
update `student-collection` set phone = 1002 where id = 2; 
update `student-collection` set phone = 1003 where id = 3;
update `student-collection` set phone = 1004 where id = 4;
update `student-collection` set phone = 1005 where id = 5;
update `student-collection` set phone = 1006 where id = 6; 

update `student-collection` set batchId = 'b30we Tamil' where id = 1;
update `student-collection` set batchId = 'b31we English' where id = 2;
update `student-collection` set batchId = 'b32we English' where id = 3;
update `student-collection` set batchId = 'b33we Hindi' where id = 4;
update `student-collection` set batchId = 'b30we Tamil' where id = 5;
update `student-collection` set batchId = 'b30we Tamil' where id = 6;

alter table `student-collection` drop column language;
alter table `student-collection` rename column batchId to batch;
alter table `student-collection` add(
yearOfPassing int not null,
yearsOfExp int,
noticePeriod tinytext,
githubUrl varchar(255),
portfolioUrl varchar(255),
resumeUrl varchar(255)
);

update `student-collection` set yearOfPassing = 2019, yearsOfExp = 3, noticePeriod = '30 days', 
githubUrl = 'https://www.github.com/aaa', portfolioUrl = 'aaa_Web.com', resumeUrl = 'https://docs.google.com/aaa' where id = 1;

update `student-collection` set yearOfPassing = 2018, yearsOfExp = 4, noticePeriod = '30 days', 
githubUrl = 'https://www.github.com/bbb', portfolioUrl = 'bbb_Web.com', resumeUrl = 'https://docs.google.com/bbb' where id = 2;

update `student-collection` set yearOfPassing = 2020, yearsOfExp = 1, noticePeriod = '30 days', 
githubUrl = 'https://www.github.com/ccc', portfolioUrl = 'www.ccc_website.com', resumeUrl = 'https://docs.google.com/ccc' where id = 3;

update `student-collection` set yearOfPassing = 2020, yearsOfExp = 1, noticePeriod = '30 days', 
githubUrl = 'https://www.github.com/ddd', portfolioUrl = 'www.ddd_website.com', resumeUrl = 'https://docs.google.com/ddd' where id = 4;

update `student-collection` set yearOfPassing = 2019, yearsOfExp = 3, noticePeriod = '30 days', 
githubUrl = 'https://www.github.com/eee', portfolioUrl = 'www.eee_website.com', resumeUrl = 'https://docs.google.com/eee' where id = 5;

update `student-collection` set yearOfPassing = 2018, yearsOfExp = 4, noticePeriod = '30 days', 
githubUrl = 'https://www.github.com/fff', portfolioUrl = 'www.fff_website.com', resumeUrl = 'https://docs.google.com/fff' where id = 6;

update `student-collection` set portfolioUrl = 'www.aaa_website.com' where id = 1;
update `student-collection` set portfolioUrl = 'www.bbb_website.com' where id = 2;
alter table `student-collection` rename column id to Id;

update `student-collection` set  batch = 'fullstack' where Id = 1;  
update `student-collection` set  batch = 'fullstack' where Id = 2;   
update `student-collection` set  batch = 'cyberSecurity' where Id = 3;   
update `student-collection` set  batch = 'ui-ux' where Id = 4;   
update `student-collection` set  batch = 'ui-ux' where Id = 5;   
update `student-collection` set  batch = 'datascience' where Id = 6;   

alter table `student-collection` rename column batch to courses;
alter table `student-collection` modify column Id int;
alter table `student-collection` drop primary key;
alter table `student-collection` modify column email varchar(255);
ALTER TABLE `student-collection`
ADD constraint Id primary key (Id, courses);

alter table `student-collection` modify column `Id` int auto_increment;

alter table `student-collection` add foreign key (batchId) references `batch-collection` (BatchId);

alter table `student-collection` add column `batch-name` varchar(255) after `batchId`;

alter table `student-collection` rename column `Id` to `studentId`;

alter table `student-collection` rename column `batch-name` to `batchName`;

alter table `student-collection` drop column `batchName`;

update `student-collection` set batchId = 2 where studentId = 1;
update `student-collection` set batchId = 2 where studentId = 2;
update `student-collection` set batchId = 1 where studentId = 3;
update `student-collection` set batchId = 3 where studentId = 4;
update `student-collection` set batchId = 3 where studentId = 5;
update `student-collection` set batchId = 4 where studentId = 6;

describe `batch-collection`;

select * from `student-collection`;

select * from `student-collection` s right join `batch-collection` b on s.batchId = b.BatchId ;

alter table `batch-collection`
add (batchId tinytext not null,
courseName varchar(255) not null,
Duration varchar(255) not null,
language tinytext not null,
NumberOfStudents int not null,
Mentor tinytext not null,
studentsPlaced int);


select * from `batch-collection`;

-- alter
alter table `batch-collection` rename column BatchId to Id;
alter table `batch-collection` modify column language enum('tamil','english','hindi');
alter table `batch-collection` drop column auto_increment;

-- insert values
insert into `batch-collection` (Id, batchId, courseName, Duration, language, NumberOfStudents, Mentor, studentsPlaced) 
values ('1','b30we','cyberSecurity','3 months','tamil',20,'chris',15);

insert into `batch-collection` (batchId, courseName, Duration, language, NumberOfStudents, Mentor, studentsPlaced) 
values ('b31we','cyberSecurity','5 months','english',25,'bravo',20);

insert into `batch-collection` (batchId, courseName, Duration, language, NumberOfStudents, Mentor, studentsPlaced) 
values ('b32we','ui-ux','6 months','english', 35,'cummins',20);

insert into `batch-collection` (batchId, courseName, Duration, language, NumberOfStudents, Mentor, studentsPlaced) 
values ('b32we','datascience','6 months','hindi',25,'bravo',20);

-- alter 
update `batch-collection` set courseName = 'fullstack' where Id = 2;
update `batch-collection` set batchId = 'b33we' where Id = 4;
update `batch-collection` set Duration = '5 months' where Id = 3;
update `batch-collection` set Duration = '5 months' where Id = 4;

select * from `batch-collection`;

update `batch-collection` set batchId = 'b30we Tamil' where Id = 1;
update `batch-collection` set batchId = 'b31we English' where Id = 2;
update `batch-collection` set batchId = 'b32we English' where Id = 3;
update `batch-collection` set batchId = 'b33we Hindi' where Id = 4;
update `batch-collection` set Duration = '5 months' where Id = 1;

alter table `batch-collection` rename column batchId to batch;
alter table `batch-collection` rename column NumberOfStudents to No_of_students;
alter table `batch-collection` rename column studentsPlaced to Total_no_of_classes;
alter table `batch-collection` drop column language;

update `batch-collection` set Total_no_of_classes = 38 where id = 1 ;
update `batch-collection` set Total_no_of_classes = 38 where id = 2 ;
update `batch-collection` set Total_no_of_classes = 38 where id = 3 ;
update `batch-collection` set Total_no_of_classes = 38 where id = 4 ;

update `batch-collection` set Mentor = 'mitchell' where id = 4 ;
alter table `batch-collection` add (`classes_completed` int, `remaining classes` int);
update `batch-collection` set classes_completed = 28 where id = 1;
update `batch-collection` set classes_completed = 30 where id = 2;
update `batch-collection` set classes_completed = 30 where id = 3;
update `batch-collection` set classes_completed = 30 where id = 4;

alter table `batch-collection` drop column `remaining classes`;  
alter table `batch-collection` add column `remaining_classes` int; 
update `batch-collection` set remaining_classes = (`Total_no_of_classes` - `classes_completed`) where id = 1;
update `batch-collection` set remaining_classes = (`Total_no_of_classes` - `classes_completed`) where id = 2;
update `batch-collection` set remaining_classes = (`Total_no_of_classes` - `classes_completed`) where id = 3;
update `batch-collection` set remaining_classes = (`Total_no_of_classes` - `classes_completed`) where id = 4;

alter table `batch-collection` rename column `Id` to `BatchId`;

create table `task-collection` (
Id int primary key auto_increment,
batch tinytext not null,
taskName varchar(255) not null,
submitted_on varchar(255),
front_end_source_code varchar(255),
front_end_deployed_url varchar(255),
score int,
comments varchar(255)
);

insert into `task-collection` (batch, taskName, submitted_on, front_end_source_code, front_end_deployed_url, score, comments) 
values ('b30we','Js-Functions', '01-03-2022', 'https://www.github/Js-Functions.com','https://www.amazing_meitner_001.netfliy.app', 09, 'Your work is good, design your page responsive');

update `task-collection` set comments = 'Try using arrow functions instead normal functions' where id = 1 ;
update `task-collection` set batch = 'b30we Tamil' where id = 1;
update `task-collection` set batch = 'b30we Tamil' where id = 1;

alter table `task-collection` rename column `Id` to `TaskId`;

select * from `task-collection`;

insert into `task-collection` (batch, taskName, submitted_on, front_end_source_code, front_end_deployed_url, score, comments) 
values ('b30we Tamil','Js-Arrays', '01-02-2022', 'https://www.github/Js-Arrays.com','https://www.amazing_meitner_021.netfliy.app', 08, 'Try using let for initializing in the block scope');

insert into `task-collection` (batch, taskName, submitted_on, front_end_source_code, front_end_deployed_url, score, comments) 
values ('b30we Tamil','Js-MRF', '21-02-2022', 'https://www.github/Js-MRF.com','https://www.amazing_meitner_023.netfliy.app', 10, 'Good Work! Keep it up');

create table `mentor-collection`(
Id int primary key auto_increment,
mentorName tinytext not null,
phone int(10) unique not null,
email varchar(255) unique not null,
batch_assigned tinytext not null,
git_hub_url varchar(255) not null,
resume_url varchar(255) not null,
years_of_experience int,
date_of_join varchar(255) not null,
remarks varchar(255),
avg_rating tinytext  
);

insert into `mentor-collection` (mentorName, phone, email, batch_assigned, git_hub_url, resume_url, years_of_experience, date_of_join, remarks, avg_rating) 
values ('chris','2001','chris@gmail.com','b30we Tamil','https://www.github/chris-exe.com', 'https://www.google-docs/chris-jordan.com', 7, '01-02-2022', null ,5);

insert into `mentor-collection` (mentorName, phone, email, batch_assigned, git_hub_url, resume_url, years_of_experience, date_of_join, remarks, avg_rating) 
values ('bravo','2002','bravo@gmail.com','b31we English','https://www.github/bravo-exe.com', 'https://www.google-docs/dwayne-bravo.com', 2, '03-01-2022', null ,5);

insert into `mentor-collection` (mentorName, phone, email, batch_assigned, git_hub_url, resume_url, years_of_experience, date_of_join, remarks, avg_rating) 
values ('cummins','2003','cummins@gmail.com','b32we English','https://www.github/cummins-exe.com', 'https://www.google-docs/cummins.com', 6, '25-12-2021', null ,5);

insert into `mentor-collection` (mentorName, phone, email, batch_assigned, git_hub_url, resume_url, years_of_experience, date_of_join, remarks, avg_rating) 
values ('mitchell','2004','mitchell@gmail.com','b33we Hindi','https://www.github/mitchell-exe.com', 'https://www.google-docs/mitchell.com', 4, '23-01-2021', null ,5);

alter table `mentor-collection` rename column `Id` to `MentorId`; 

select * from `mentor-collection`;