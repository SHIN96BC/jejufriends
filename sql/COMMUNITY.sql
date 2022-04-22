drop table COMMUNITY;
drop sequence COMMUNITY_SEQ;
purge recyclebin;

create table COMMUNITY (
	COMNUM number constraint COMMUNITY_PK primary key,
	EMAIL nvarchar2(120),
	NICK nvarchar2(50),
	COMSUBJECT nvarchar2(100),
	COMCONTENT nvarchar2(500),
	KATEGORIE nvarchar2(13),
	COMTAG nvarchar2(200),
	COMPHOTO nvarchar2(200),
	COMORIPHOTO nvarchar2(200),
	views number,
	love number,
	COMDATE date,
	COMUPDATE date,
	DIVISION number(1),
	constraint COMMUNITY_KATE_CHECK check (KATEGORIE in ('����', '������', '����ü��', '����', '�׿�')),
	constraint COMMUNITY_DIV_CHECK check (DIVISION in (1,2,3,4,5))
);
create sequence COMMUNITY_SEQ increment by 1 start with 1 nocache;

insert into COMMUNITY values(COMMUNITY_SEQ.nextval, 'bbb@bbb.com', '������', 'ù��° ��', '�ȳ��ϼ���1 ������', '�׿�', '#�������� #ù��°', '1.png', '1.png', 0, 0, SYSDATE, SYSDATE, 1);
insert into COMMUNITY values(COMMUNITY_SEQ.nextval, 'ccc@ccc.com', '������', '�ι�° ��', '�ȳ��ϼ���2 ������', '����', '#�������� #�ι�°', '1.png', '1.png', 0, 0, SYSDATE, SYSDATE, 2);
insert into COMMUNITY values(COMMUNITY_SEQ.nextval, 'ddd@ddd.com', '������', '����° ��', '�ȳ��ϼ���3 ������', '������', '#�������� #����°', '1.png', '1.png', 0, 0, SYSDATE, SYSDATE, 3);