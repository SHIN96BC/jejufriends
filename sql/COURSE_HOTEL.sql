drop table COURSE_HOTEL ;
drop sequence CH_SEQ ;
purge recyclebin;

create table COURSE_HOTEL (
	CHNUM number constraint CH_PK primary key,
	HNAME nvarchar2(30),
	CDAY number(3),
	CORDER number(1),
	CNUM number,
	constraint CH_FK foreign key(CNUM) references COURSE(CNUM) on delete cascade
);
create sequence CH_SEQ increment by 1 start with 1 nocache;