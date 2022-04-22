alter session set "_oracle_script"=true;
create user spring identified by java;
grant connect, resource, unlimited tablespace to spring;
conn spring/java;

drop table HOTELREVIEW;
drop sequence HRNUM_SEQ;
purge recyclebin;

create table HOTELREVIEW (
	HNUM number REFERENCES HOTEL(HNUM) ON DELETE CASCADE,
	hrnum number PRIMARY key,
	writer varchar(50) NOT NULL,
	rdate date NOT NULL,
	content varchar(1000) NOT NULL
);

create sequence hrnum_seq increment by 1 start with 1 nocache;
commit;