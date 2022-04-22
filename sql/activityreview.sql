alter session set "_oracle_script"=true;
create user spring identified by java;
grant connect, resource, unlimited tablespace to spring;
conn spring/java;

drop table ACTIVITYREVIEW;
drop sequence ARNUM_SEQ;
purge recyclebin;

create table ACTIVITYREVIEW (
	ANUM number REFERENCES ACTIVITY(ANUM) ON DELETE CASCADE,
	arnum number PRIMARY key,
	writer varchar(50) NOT NULL,
	rdate date NOT NULL,
	content varchar(1000) NOT NULL
);

create sequence arnum_seq increment by 1 start with 1 nocache;
commit;