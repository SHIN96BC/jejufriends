alter session set "_oracle_script"=true;
create user spring identified by java;
grant connect, resource, unlimited tablespace to spring;
conn spring/java;

drop table LANDMARKREVIEW;
drop sequence LRNUM_SEQ;
purge recyclebin;

create table LANDMARKREVIEW (
	LNUM number REFERENCES LANDMARK(LNUM) ON DELETE CASCADE,
	lrnum number PRIMARY key,
	writer varchar(50) NOT NULL,
	rdate date NOT NULL,
	content varchar(1000) NOT NULL
);

create sequence lrnum_seq increment by 1 start with 1 nocache;
commit;