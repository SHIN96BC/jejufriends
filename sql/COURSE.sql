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
	LOVE number
	VIEWS number,
	DIVISION number(1),
	STARTDATE date,
	LASTDATE date,
	CDATE date,
	constraint COURSE_DIV_CHECK check (DIVISION in (1,2,3,4,5,6))
);
create sequence COURSE_SEQ increment by 1 start with 1 nocache;


insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�1', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�1', 0, '80000', 0, 0, 1, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '�����ؾȵ���', 1, 1, 1);
insert into COURSE_FOOD values(CL_SEQ.nextval, '�Ϸ�溸��', 1, 2, 1);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '�쵵', 1, 3, 1);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '�Ѷ�����', 1, 4, 1);
insert into COURSE_FOOD values(CL_SEQ.nextval, '���ϸ���и�', 2, 1, 1);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '�Ѷ���½�', 2, 2, 1);
insert into COURSE_FOOD values(CL_SEQ.nextval, '����ȭ��', 2, 3, 1);


insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�2', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�2', 0, '80000', 0, 0, 1, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '�����ؾȵ���', 1, 1, 2);
insert into COURSE_FOOD values(CL_SEQ.nextval, '�Ϸ�溸��', 1, 2, 2);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '�쵵', 1, 3, 2);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '�Ѷ�����', 1, 4, 2);
insert into COURSE_FOOD values(CL_SEQ.nextval, '���ϸ���и�', 2, 1, 2);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '�Ѷ���½�', 2, 2, 2);
insert into COURSE_FOOD values(CL_SEQ.nextval, '����ȭ��', 2, 3, 2);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '�ð�����', 2, 4, 2);


insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�3', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�3', 0, '80000', 0, 0, 1, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '�����ؾȵ���', 1, 1, 3);
insert into COURSE_FOOD values(CL_SEQ.nextval, '�Ϸ�溸��', 1, 2, 3);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '�쵵', 1, 3, 3);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '�Ѷ�����', 1, 4, 3);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '���ξ�������', 2, 4, 3);
insert into COURSE_FOOD values(CL_SEQ.nextval, '���ϸ���и�', 2, 1, 3);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '�Ѷ���½�', 2, 2, 3);
insert into COURSE_FOOD values(CL_SEQ.nextval, '����ȭ��', 2, 3, 3);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '�ð�����', 2, 4, 3);


insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�4', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�4', 0, '80000', 0, 0, 2, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, 'û�ʹ�', 1, 1, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '������������', 1, 2, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '����ī��帣���', 1, 3, 4);
insert into COURSE_FOOD values(CL_SEQ.nextval, '��������', 1, 4, 4);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '���ξ�������', 2, 4, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '��Ұ�', 2, 1, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, 'ũ���� ����', 2, 2, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '����ȭ��', 2, 3, 4);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '�ð�����', 2, 4, 4);
insert into COURSE_FOOD values(CL_SEQ.nextval, '�ﵵ', 1, 5, 4);



insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�5', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�5', 0, '80000', 0, 0, 2, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, 'û�ʹ�', 1, 1, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '������������', 1, 2, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '����ī��帣���', 1, 3, 4);
insert into COURSE_FOOD values(CL_SEQ.nextval, '��������', 1, 4, 4);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '���ξ�������', 2, 4, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '��Ұ�', 2, 1, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, 'ũ���� ����', 2, 2, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '����ȭ��', 2, 3, 4);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '�ð�����', 2, 4, 4);
insert into COURSE_FOOD values(CL_SEQ.nextval, '�ﵵ', 1, 5, 4);


insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�6', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�6', 0, '80000', 0, 0, 2, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�7', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�7', 0, '80000', 0, 0, 3, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�8', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�8', 0, '80000', 0, 0, 3, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�9', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�9', 0, '80000', 0, 0, 3, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�10', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�10', 0, '80000', 0, 0, 4, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�11', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�11', 0, '80000', 0, 0, 4, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�12', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�12', 0, '80000', 0, 0, 4, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�13', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�13', 0, '80000', 0, 0, 5, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�14', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�14', 0, '80000', 0, 0, 5, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�15', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�15', 0, '80000', 0, 0, 5, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�16', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�16', 0, '80000', 0, 0, 6, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�17', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�17', 0, '80000', 0, 0, 6, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�18', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�18', 0, '80000', 0, 0, 6, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�19', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�19', 0, '80000', 0, 0, 1, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�20', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�20', 0, '80000', 0, 0, 2, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�21', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�21', 0, '80000', 0, 0, 3, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�22', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�22', 0, '80000', 0, 0, 4, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '������', '�ڽ�23', '�׽�Ʈ �ڽ� �Դϴ�.', '#�׽�Ʈ #Ȯ�ο�23', 0, '80000', 0, 0, 5, SYSDATE+1, SYSDATE+2, SYSDATE);



