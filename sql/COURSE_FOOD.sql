drop table COURSE_FOOD;
drop sequence CF_SEQ;
purge recyclebin;

create table COURSE_FOOD (
	CFNUM number constraint CF_PK primary key,
	FNAME nvarchar2(30),
	CDAY number(3),
	CORDER number(1),
	CNUM number,
	constraint CF_FK foreign key (CNUM) references COURSE(CNUM) on delete cascade
);
create sequence CF_SEQ increment by 1 start with 1 nocache;