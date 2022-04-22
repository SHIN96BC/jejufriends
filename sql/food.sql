alter session set "_oracle_script"=true;
create user spring identified by java;
grant connect, resource, unlimited tablespace to spring;
conn spring/java;

drop table FOOD;
drop sequence FOOD_SEQ;
purge recyclebin;

create table FOOD(
	FNUM number constraint F_NUM_PK primary key,
	FNAME nvarchar2(30) constraint F_NAME_NN not null,
	FINTRO nvarchar2(100) constraint F_INTRO_NN not null,
	FINTRO2 nvarchar2(1000) constraint F_INTRO2_NN not null,
	FMENU nvarchar2(100),
	FMENU2 nvarchar2(100),
	FMENU3 nvarchar2(100),
	FCOST number,
	FCOST2 number,
	FCOST3 number,
	FADDRESS nvarchar2(50) constraint F_ADDRESS_NN not null,
	FPHONE nvarchar2(15),
	FOPCL nvarchar2(100),
	FBREAK nvarchar2(100),
	FCLOSED date default SYSDATE,
	FPHOTO nvarchar2(50) constraint F_PHOTO_NN not null,
	FPHOTO2 nvarchar2(50) constraint F_PHOTO2_NN not null,
	FPHOTO3 nvarchar2(50) constraint F_PHOTO3_NN not null,
	FORIPHOTO nvarchar2(50) constraint F_ORI_PHOTO_NN not null,
	CHOOSED number,
	REVIEW nvarchar2(50),
	STAR NUMBER CHECK(STAR IN(1, 2, 3, 4, 5)) constraint STAR_CHECK not null,
	VIEWS number,
	DIVISION NUMBER CHECK(DIVISION IN(1, 2, 3, 4, 5)) constraint DIVISION_CHECK not null,
	XLOCATION nvarchar2(50) default '0',
	YLOCATION nvarchar2(50) default '0'
);
create sequence FOOD_SEQ increment by 1 start with 1 nocache;


insert into FOOD values(FOOD_SEQ.nextval, '���ϸ���и�', '�и�� ����Į������ �Բ� ���� �ʹٸ� �����!','������� ���� ģ���Ͻð� �������� ������ Į�������� �̱��ϰ� ���� ���ؼ� �ǰ������� Į����!','�꺸��Į����','������Į����','Į����','10000','9000','7000','�������� �߹������� 331','064-739-0023','08:00 ~ 20:00','����',default,'stonepush.png','stonepush2.png','stonepush3.png','stonepush4.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '�Ϸ�溸��', '�����ϸ� ������ �Ϸ�溸��! ������ �����','�ε巯�� ���ӿ� ��ĥ���� �ŷ����� ��ġ�� �������̸� ��� ���� ����~ ����,��ݱ���,������ ��Ʈ�� �ֹ��ϸ� Ǫ���� �翡 ������ ��! ������ ������ ���� �ְ�!','�Ϸ�溸�Ӽ�Ʈ ���� ��,��ݱ���,������','�Ϸ�����߼�Ʈ ����,��ݱ���,������','�Ϸ�溸��','56000','51000','43000','���ֽ� �߾ӷ�2�� 9','064-752-7890','11:30 ~ 23:00','���� ������ �޹�',default,'harubang.png','harubang2.png','harubang3.png','harubang.png', 1,'���־��',5,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '����ȭ��', 'û���ΰ� ���� ���Ѱ���, �ǰ� �԰Ÿ�','ȸ������ ���� <����ȭ��>�� �ŷ�����Ʈ ���� ���� ���ɿ� �� ���� ����','���̽� �Ƹ޸�ī��','���̽� ī���','���̽� ī��Ḷ���ƶ�','2000','3000','2500','���ֽ� �߾ӷ�11�� 1','010-6486-8640','10:00 ~ 18:00','����',default,'baeknyun.png','baeknyun2.png','baeknyun3.png','baeknyun.png', 1,'���־��',5,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '������', '�ð��� ���������� ���ٸ� �ع���','�ع� ���� ���״���, �ᳪ�� ���� ���״��� �� ������ ���� �ٸ� ���Դϴ�. �ع����� ���̺� ���̴� ���� ����, �ɰ�, ���� ���ʰ�, ����, ����, �̴���, ������.. �� �������� ���� �͵� ����� �ż��� �ػ깰�� �����մϴ�. �ż��� ��Ḹŭ ���� �Ǹ��մϴ�. ����ŭ �� ���� �� �� ���� û�ص� �β����� �ʰ� ���� ä�� �ֽô� ģ�����Դϴ�.','�ع��� Ư��','�ع��� Ư��','�Ʊ���','55000','45000','35000','���ֽ� ��õ�� ������1751','064-784-0809','11:30 ~ 20:00','15:30 ~ 17:30',default,'gakjibul.png','gakjibul2.png','gakjibul3.png','gakjibul.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '�����״�', '��Ƣ��, ��, ������ ���ֿ� ���������� �� ���̸� ���� ��!','�����״ÿ��� �ÿ��� ���ֿ� ���մ� ���ָ� ������ ��Ʈ���� Ǯ�� ���ñ� �ٶ��ϴ�.','������ġ��','������Ƣ��','��������','15000','15000','13000','����Ư����ġ�� ���ֽ� ���� 2317-8 1��','064-749-5792','18:00 ~ 01:00','����',default,'pong.png','pong2.png','pong3.png','pong.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '�ﵵ', '��ū�� ������ �԰� ������ �ﵵ «�Ͷ��','��ū�� ������ �԰�������� ������ �ﵵ «�Ͷ���Դϴ�. �������� �ְ�, ���κ�,��� ���� �߰��ϸ� �� ���ֽ��ϴ�. �� �߰��ؼ� �弼�� �絵 ��~û���ƿ�','«�Ͷ��','���κ�«�Ͷ��','�����','7000','8000','1000','���ֽ� ȭ���1��17','070-8900-2486','11:00 ~ 10:00','����',default,'kundo.png','kundo2.png','kundo3.png','kundo.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '��������', '���ҿ� ������ ����ϴ� ��䰥�� ����','���ҿ� ���� ������䰥�� �������� ����ؼ� �Ծ ��� ���� �߿� �ְ�!!','���ҵ�����䰥��','���ø�','����ø�','14000','7000','7000','���ֽ� ����4��41','064-748-7078','11:00 ~ 23:00','����',default,'hyungje.png','hyungje2.png','hyungje3.png','hyungje.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '�����ȣ��', '������ ���⿡ ������ ����~ �׷� ��','�а� ������ �����⿡ Ŀ�ǿ� ���� �� ����Ʈ�� �����ݴϴ�!!','�Ƹ޸�ī��','ī�� �����','��ä�ɶ�','4000','6000','6000','���ֽ� ����� 15 1��','0504-3139-1345','09:00 ~ 22:00','����',default,'umble.png','umble2.png','umble3.png','umble.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '�޹в�����', '��� �⿬�� ������ �̻����� ��丮 ����','�����ϴٸ� ���Ѹ����ڽ���, �̻����̰� �پ��� ��丮�� ��ź��ñ� ��õ�����~','���Ѹ����ڽ�','��޹м�Į����','�޹е��������','55000','11000','9000','���ֽ� ������ 136','064-711-6841','11:00 ~ 23:00','15:00 ~ 17:00',default,'memil.png','memil2.png','memil3.png','memil.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '�츮��', '���G���� ���� �ְ� ǰ���� ���⸦ ��������','���� �簥�� ���̷� ���� ���ֽ��ϴ� ���� ��õ�մϴ�~','����ġ��','�����','�ع�«����','22000','20000','17000','���ֽ� �����1�� 23,1��','064-744-2326','16:00 ~ 22:00','����',default,'woori.png','woori2.png','woori3.png','woori.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '�����ٴ�', '����ȸ ���� ���� ����������','�ż��� ����ȸ���� ������ ����ִ� ��','����ȸ(��)','����ȸ(��)','����ȸ(��)','77000','66000','55000','���ֽ� �﹫��1�� 6','064-742-6300','11:30 ~ 22:00','����',default,'mansun.png','mansun2.png','mansun3.png','mansun.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '������', '�����, õ��ȿ�� ��ȿ���� ����� �ǰ��� ����','ȸ������ ���� �������� �ŷ�����Ʈ. ������ �а� ���� �и��� ���� ���� ������ ������ ���׸�� �̻ڰ� ������','�̴ϴ������','���ڸӵ�����','������ũ������','20000','20000','30000','���ֽ� �﹫��36','064-712-1013','12:30 ~ 00:30','����',default,'dodo.png','dodo2.png','dodo3.png','dodo.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '������', '������ ������ ��Ʈ���� ����������','������ �ʱ��ʱ� �̽��ϰ� �İ��� ������ ���� ������ û���嵵 �ʹ� ���־��','��������','û����','����','12000','3000','5000','���ֽ� ����2�� 23','064-748-9363','10:30 ~ 21:00','����',default,'yeondong.png','yeondong2.png','yeondong3.png','yeondong.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '������', 'ĳ���ٿ� �ִ� ���� ���� ������� ���ǿ�!','���ֿ��� ������ �ִ� ĳ���ٰ����� ����������','�ǽ���Ĩ��','�ʸ�ġ�� ������ũ ������ġ','���ȷ�����','12000','12000','12000','���ֽ� �﹫��40','064-901-0755','17:00 ~ 02:00','����',default,'doris.png','doris2.png','doris3.png','doris.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '��Ǭ�հ���', '����� ��Ǭ �հ���, ����� ���Ƹ����� ��������','�����ϰ� ��� �� �ִ� �հ���','��Ǭ�հ���','�����Ͱ���','������','14000','19000','28000','���ֽ� ������14','0507-1405-3663','11:00 ~ 22:00','����',default,'yangpun.png','yangpun2.png','yangpun3.png','yangpun.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '������������', '�� �������� ���ⲯ ��� �⽤��','�� ����, ���� ����','��ⱹ��','������Į����','��������','8000','10000','10000','���ֽ� ���ؾȷ� 356','064-713-5999','09:00 ~ 19:00','����',default,'seogwang.png','seogwang2.png','seogwang3.png','seogwang.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '�ĵ�����', '��, ������, ���� ��� �Ϻ��� ���ױ�ó �Ż� ����','�ֱ� �ܹ��� ���� �Ĺ�ȭ ��ȭ�� ���� ��ġ���, �����, ���� ��Ʈ�� ����ǥ���� Ƣ� ���̵��!!!','��ġ����','��ⱹ��','�������','6000','7500','7500','���ֽ� �Ŵ��15�� 2, 1��(����)','064-749-1611','10:30 ~ 21:00','����',default,'pado.png','pado2.png','pado3.png','pado.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '�����', 'Ƣ���� �����ڰ� �ƴϰ� ���� �� ���� ������!','���� �ְ� �������� ��÷��� �ٷ� �����! �ٻ��� �������� �� �����Դϴ� ���� ���� ���������� �� ����...','������','���¥��','�Ｑ��¥��','12000','8000','9000','���ֽ� ���۱� 19','064-748-2112','11:00 ~ 21:00','����',default,'sin.png','sin2.png','sin3.png','sin.png', 1,'���־��',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '���������', '������ �԰� ������ ����� ������','�ع����� �������� ����ϰ� ���־��.','����','�ҹ��Ұ�����','��ġ�','8000','16000','8000','���ֽ� �﹫��82 1��, 1��','064-742-4483','09:00 ~ 22:00','����',default,'soomok.png','soomok2.png','soomok3.png','soomok.png', 1,'���־��',4,0,1,default,default);


commit;
