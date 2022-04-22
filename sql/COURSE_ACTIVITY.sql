drop table COURSE_ACTIVITY;
drop sequence CA_SEQ;
purge recyclebin;

create table COURSE_ACTIVITY (
	CANUM number constraint CA_PK primary key,
	ANAME nvarchar2(30),
	CDAY number(3),
	CORDER number(1),
	CNUM number,
	constraint CA_FK foreign key(CNUM) references COURSE(CNUM) on delete cascade
);
create sequence CA_SEQ increment by 1 start with 1 nocache;