drop table COURSE_LANDMARK;
drop sequence CL_SEQ;
purge recyclebin;

create table COURSE_LANDMARK (
	CLNUM number constraint CL_PK primary key,
	LNAME nvarchar2(30),
	CDAY number(3),
	CORDER number(1),
	CNUM number,
	constraint CL_FK foreign key(CNUM) references COURSE(CNUM) on delete cascade
);
create sequence CL_SEQ increment by 1 start with 1 nocache;