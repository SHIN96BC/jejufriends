drop table COURSE_ACTIVITY;
drop sequence CA_SEQ;
drop table COURSE_HOTEL ;
drop sequence CH_SEQ ;
drop table COURSE_LANDMARK;
drop sequence CL_SEQ;
drop table COURSE_FOOD;
drop sequence CF_SEQ;
drop table COURSE;
drop sequence COURSE_SEQ;
purge recyclebin;

create table COURSE (
	CNUM number constraint COURSE_PK primary key,
	NICK nvarchar2(50),
	CNAME nvarchar2(50),
	CINTRO nvarchar2(300),
	CTAG nvarchar2(200),
	CHOOSED number,
	CCOST nvarchar2(20),
	LOVE number,
	VIEWS number,
	DIVISION number(1),
	STARTDATE date,
	LASTDATE date,
	CDATE date,
	constraint COURSE_DIV_CHECK check (DIVISION in (1,2,3,4,5,6))
);
create sequence COURSE_SEQ increment by 1 start with 1 nocache;


create table COURSE_ACTIVITY (
	CANUM number constraint CA_PK primary key,
	ANAME nvarchar2(30),
	CDAY number(3),
	CORDER number(1),
	CNUM number,
	constraint CA_FK foreign key(CNUM) references COURSE(CNUM) on delete cascade
);
create sequence CA_SEQ increment by 1 start with 1 nocache;


create table COURSE_FOOD (
	CFNUM number constraint CF_PK primary key,
	FNAME nvarchar2(30),
	CDAY number(3),
	CORDER number(1),
	CNUM number,
	constraint CF_FK foreign key (CNUM) references COURSE(CNUM) on delete cascade
);
create sequence CF_SEQ increment by 1 start with 1 nocache;


create table COURSE_LANDMARK (
	CLNUM number constraint CL_PK primary key,
	LNAME nvarchar2(30),
	CDAY number(3),
	CORDER number(1),
	CNUM number,
	constraint CL_FK foreign key(CNUM) references COURSE(CNUM) on delete cascade
);
create sequence CL_SEQ increment by 1 start with 1 nocache;


create table COURSE_HOTEL (
	CHNUM number constraint CH_PK primary key,
	HNAME nvarchar2(30),
	CDAY number(3),
	CORDER number(1),
	CNUM number,
	constraint CH_FK foreign key(CNUM) references COURSE(CNUM) on delete cascade
);
create sequence CH_SEQ increment by 1 start with 1 nocache;