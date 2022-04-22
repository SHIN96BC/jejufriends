alter session set "_oracle_script"=true;
create user spring identified by java;
grant connect, resource, unlimited tablespace to spring;
conn spring/java;

drop table FOODREVIEW;
drop sequence FRNUM_SEQ;
purge recyclebin;

create table FOODREVIEW (
	FNUM number REFERENCES FOOD(FNUM) ON DELETE CASCADE,
	frnum number PRIMARY key,
	writer varchar(50) NOT NULL,
	rdate date NOT NULL,
	content varchar(1000) NOT NULL
);

create sequence frnum_seq increment by 1 start with 1 nocache;
commit;