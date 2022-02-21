create database health_insurance
use health_insurance
create table Admin
(
UserName varchar(50) not null,
PassWord varchar(50) not null
)
select * from AdminLogin


create table CompanyDetails
(
CompanyId int not null primary key,
CompanyName varchar(50) not null,
Address varchar(150) ,
Phone varchar(20),
CompanyURL varchar(50)
)
select * from CompanyDetails

create table EmpRegister
(
empno int not null primary key,
designation varchar(50),
joindate datetime,
salary money,
firstname varchar(50),
lastname varchar(50),
username varchar(50),
password varchar(50),
address varchar(150),
contactno varchar(50),
state varchar(50),
country varchar(50),
city varchar(50),
policystatus varchar(30),
policyid int,
)
select * from EmpRegister

create table HospitalInfo
(
HospitalId varchar(50) not null primary key,
HospitalName varchar(50),
PhoneNO varchar(50),
Location varchar(50),
Url varchar(50)
)
select * from HospitalInfo

create table policies
(
policyid int not null primary key,
policyname varchar(50),
policydesc varchar(150),
amount money,
Emi money,
companyid int,
medicalid varchar(50)
)
select * from policies

create table policiesonemployees
(
empno varchar(10) not null,
policyid int not null,
policyname varchar(50) not null,
policyamount money not null,
policyduration decimal(7,2) not null,
emi decimal(7,2) not null,
pstartdate datetime not null,
penddate datetime not null,
companyid varchar(30) not null,
companyname varchar(50) not null,
medical varchar(50)
)
select * from policiesonemployees

create table PolicyApprovalDetails
(
PolicyId int not null,
RequestId int,
Date datetime,
Amount money,
status char(50),
Reason varchar(50)
)
select * from PolicyApprovalDetails

create table PolicyRequestDetails
(
RequestId int not null,
RequestDate datetime,
Empno int not null,
PolicyId int,
PolicyName varchar(50),
PolicyAmount money,
Emi money,
CompanyId int,
CompanyName varchar(50),
Status varchar(50) not null
)
select * from PolicyRequestDetails

create table PolicyTotalDescription
(
policyid int not null,
policyname varchar(50),
policydes varchar(250),
EMI money,
policydurationinMonths int,
Companyname varchar(50) not null,
medicalid varchar(50) not null
)
select * from PolicyTotalDescription