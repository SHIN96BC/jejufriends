drop table HOTEL;
drop sequence HOTEL_SEQ;
purge recyclebin;


create table HOTEL(
   HNUM number constraint H_NUM_PK primary key,
   HNAME nvarchar2(30) constraint H_NAME_NN not null,
   HINTRO nvarchar2(100) constraint H_INTRO_NN not null,
   HINTRO2 nvarchar2(1000) constraint H_INTRO2_NN not null,
   HCOST number,
   HADDRESS nvarchar2(50) constraint H_ADDRESS_NN not null,
   HPHONE nvarchar2(15),
   HOPCL nvarchar2(100),
   HBREAK nvarchar2(100),
   HCLOSED date default SYSDATE,
   HPHOTO nvarchar2(50) constraint H_PHOTO_NN not null,
   HPHOTO2 nvarchar2(50) constraint H_PHOTO2_NN not null,
   HPHOTO3 nvarchar2(50) constraint H_PHOTO3_NN not null,
   HORIPHOTO nvarchar2(50) constraint H_ORI_PHOTO_NN not null,
   CHOOSED number,
   REVIEW nvarchar2(50),
   STAR NUMBER CHECK(STAR IN(1, 2, 3, 4, 5)) constraint STAR4_CHECK not null,
   VIEWS number,
   DIVISION NUMBER CHECK(DIVISION IN(1, 2, 3, 4, 5)) constraint DIVISION4_CHECK not null,
   XLOCATION nvarchar2(50) default '0',
   YLOCATION nvarchar2(50) default '0'
);
create sequence HOTEL_SEQ increment by 1 start with 1 nocache;


insert into HOTEL values(HOTEL_SEQ.nextval,'�ð�����','�������� �ִ� �������� �ʰ���','���� �μ��̿� �ִ� ������ �ʰ� �ܿ��� �� ä ���� ���� �� ���� ���� �ð� �������� �����ϰ� �����ִ� �ʰ��� �Դϴ�.','270000','����Ư����ġ�� ���ֽ� �ֿ��� �ž��� 1700-1 �ð�����','0507-1392-6103','���߹���','����',default,'all.png','all2.png','all3.png','all.png',1,'�Ƿ� Ǯ����',3,0,3,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'���ξ�������','�������� �ξ��� �����帳�ϴ�','���ξ� �������� 1������ ħ��, ���, �ֹ�, �׸��� 16���� ���־��� �� �ִ� ���̴׷��� �ֽ��ϴ�. �����÷� ������ ���氨�� �������� 2���� ħ��, ���, ��õ��, ������������ �ٸ��� �ֽ��ϴ�.','130000','���ֵ� ���ֽ� �Ѱ�� ��������� 568','010-3242-1624','���߹���','����',default,'pall.png','pall2.png','pall3.png','pall.png',1,'�Ƿ� Ǯ����',2,0,2,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'����������','���ֵ� �������� ��ġ�ϰ� Ǯ���� �Բ��ִ� ���������Դϴ� ','���������̴� ���� ���ʿ� ��ġ�� ����ϰ� ����� ������ ���� ���� �����Դϴ�. �������� �̿��Ͻ� �� �ִ� ū �����嵵 �ִ�ϴ�.','150000','����Ư����ġ�� ���ֽ� ������ ����� 175-24','0507-1346-2702','���߹���','����',default,'yoon.png','yoon2.png','yoon3.png','yoon.png',1,'�Ƿ� Ǯ����',5,0,4,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'�����������','35�� 2���� 150�� �ܵ𸶴� �� ���� ���� �������Ը�','�Ѱ�� �������� ��ġ�� ������������Դϴ�. 2�������� 5�α��� �Խ� ������ ��ä������� ���� ������ ������ �� �ִ� �����̺� ���������Դϴ�.','290000','�������� ������������19','064-710-6797','���߹���','����',default,'uonae.png','uonae2.png','uonae3.png','uonae.png',1,'�Ƿ� Ǯ����',5,0,2,default,default);

insert into HOTEL values(HOTEL_SEQ.nextval,'���� ����Ʈ','���� ����Ʈ�� ���ֱ������׿��� ���� 30�� �Ÿ��� ��ġ�� �ֽ��ϴ�','�����ڿ��������� ������ ���屼�� ���� 1�ð� 10��, ���� ������� 1�ð� 20�� �Ÿ��� �ֽ��ϴ�. ���ֿ� ��ġ�� ����ϰ� �ƴ��� �� ����Ʈ������ ���� ���ͳݰ� ���þ��� ���� �� 24�ð� ������ ���� �̿��Ͻ� �� �ֽ��ϴ�.','250000','���ֵ� ���ֽ� 1100�� 2671-51','0507-1308-8695','���߹���','����',default,'amber.jpg','amber2.jpg','amber3.jpg','amber.jpg',1,'����� �ʹ� �Ϳ��� ������',3,0,1,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'�Ƹ��� ����Ʈ','�Ƹ��� ����Ʈ�� �ض� ������ ���ְ��淣�忡�� ����� �Ÿ��� �ֽ��ϴ�','��ϴ��� �ִ� �Ѷ�� ���������� ���� 50�� �Ÿ��� �ֽ��ϴ�. ���ֿ� �ӹ��ô� ���� �� ����Ʈ���� �ƴ��� ���� �� �ü��� �̿��Ͻ� �� �ֽ��ϴ�.','18170','���ֵ� ���ֽ� �ֿ��� ��ȭ�� 2482','064-799-1177','���߹���','����',default,'arbon.jpg','arbon2.jpg','arbon3.jpg','arbon.jpg',1,'û������ ���� ����',2,0,1,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'�ɸ�ä ���','���ֿ� �ڸ��� �ɸ�ä ��ǿ����� ���� ���� ���ͳ��� �����մϴ�','�׶�, ��쳪�� ������ �ֽ��ϴ�. ���ǿ� �ֹ�, �� ���� ���� ���� ���ͳ�, ����� ���� ���õǾ� �ֽ��ϴ�.','60000','���ֵ� ���ֽ� �ֿ��� �ұ泲�� 202-4','0507-1375-4665','���߹���','����',default,'ggot.jpg','ggot2.jpg','ggot3.jpg','ggot.jpg',1,'�������ϴ�',2,0,1,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'�Ƶ��� ����Ʈ','������ �Ϻ�Ǿ� �ֽ��ϴ�','�ֺ��� ���� ��ҷδ� ���� �� 30�� �Ÿ��� ������ �ڿ��޾縲','20�� �Ÿ��� ������ Ƽ�������� ���α� �׸���ũ�� �ֽ��ϴ�.','130000','���ֵ� ���ֽ� �Ѹ��� ȭ���� 82','0507-1432-7002�ȳ�','���߹���','����',default,'adenhill.jpg','adenhill2.jpg','adenhill3.jpg','adenhill.jpg',1,'�ʹ� ���ƿ�',3,0,1,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'�������� ���','������� �ٺ�ť �ü�, ������, �������� �� ���� �ü��� ���񽺸� �̿��Ͻ� �� �ֽ��ϴ�','���� ���� ���ఴ�� �湮�ϱ� ���� ���ڷ��� �׸���ũ�� ���� �� 8��, õ����买�� ������ ���ڸ��� �ɼ��� �Ƹ��ٿ� �봫�� ������ ���� �� 25�� ���� �ҿ�˴ϴ�.','103000','���ֵ� ���ֽ� ��õ�� ������ 1717-24','0507-1317-4284','���߹���','����',default,'thegall.jpg','thegall2.jpg','thegall3.jpg','thegall.jpg',1,'�����ϰ� �����ϸ� ģ���ϱ� ������ �װ�!',3,0,1,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'�ٻ���','�� 25�� �Ÿ����� ���� �Կ����� ��絵�� ���� �谡 �ִ� �Ѹ����� �ֽ��ϴ�','��ǰ ������, 24�ð� ������, ���þ��� ���� �ܿ��� �پ��� ���񽺸� �����ϰ� �ֽ��ϴ�. �������� ���ᵵ �����մϴ�.','117000','���ֵ� ���ֽ� �Ѱ�� �Ѱ��ؾȷ� 448-6','070-7719-9811','���߹���','����',default,'basapan.jpg','basapan2.jpg','basapan3.jpg','basapan.jpg',1,'����մϴ�',3,0,2,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'��ť�� �ڹ輭�� ����','ȣ�� ������ ���Ǵ�Ƽ Ǯ�� ��Ʈ�Ͻ�����','��ť�� �ڹ輭�� ���ֿ��� ���� 15���̸� ������Ƽ������, �����װ����ֹڹ���, ���α� �׸���ũ���� ���� �� �ֽ��ϴ�. ����, ���� 20���̸� �渶 ��⸦ �����Ͻ� �� �ִ� ��������ũ ���ֱ��� ���� �� �ֽ��ϴ�.','176000','���ֵ� �������� �ȴ��� ��â�� 365','064-793-1131','���߹���','����',default,'mercure.jpg','mercure2.jpg','mercure3.jpg','mercure.jpg',1,'�����ϰ� ģ����',4,0,2,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'���ڴ� ����ũ','����� �������� ������ ����','���ֿ� �ӹ��ô� ���� �� ���ڽü����� �ƴ��� ���� �� �ü��� �̿��Ͻ� �� �ֽ��ϴ�.','195000','���ֵ� ���ֽ� �Ѱ�� ��ݷ� 206','0507-1342-0319','���߹���','����',default,'bike.jpg','bike2.jpg','bike3.jpg','bike.jpg',1,'������ ������ ��� ����',5,0,2,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'�Ѷǹٱ�','����� �������� ������ ����','���ֿ� ��ġ�� �� �Ѷǹٱ�� �Դ� �ؼ����忡�� ����� �Ÿ��� �ֽ��ϴ�.','59000','���ֵ� ���ֽ� ��õ�� ��õ18�� 65','070-8833-3461','���߹���','����',default,'handdo.jpg','handdo2.jpg','handdo3.jpg','handdo.jpg',1,'������ ���ƿ�',2,0,3,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'�α� ����Ʈ','��� ���ǿ� �������� �Ϻ�','����� ���� �� �ü��� ���Ҿ� ������ ����� �̿��Ͻ� �� �ֽ��ϴ�.','82000','���ֵ� ���ֽ� ���ؾȷ� 442-11','0507-1363-3341','���߹���','����',default,'loginresort.jpg','loginresort2.jpg','loginresort3.jpg','loginresort.jpg',1,'������ �� �����ϸ� ���� ���ۿ�',4,0,3,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'ȣ�� ��Ÿ','�Ѷ�� ���� ������ ��ġ�� ȣ��','ȣ�ڿ��� 260�� �Ը��� ȸ�� ���� �׷��庼��, ��Ÿ ������ �پ��� ����ȸ�Ǹ� �� �� �ִ� 650�� �Ը��� ���۷��� ��, ����Ͻ� ����, ��Ʈ�Ͻ� ����, ������ ���� ���ǽü��� ���õǾ� �ֽ��ϴ�.',85500'','���ֵ� ���ֽ� �����񵿱� 56-26','0507-1446-1805','���߹���','����',default,'nanta.jpg','nanta2.jpg','nanta3.jpg','nanta.jpg',1,'�����ϰ� ģ���ϳ� �������� ����',4,0,3,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'���� ���','����ϰ� ������ ���׸���','���ֵ� �μ��ڿ���ڹ����� ���� �� 15��, �پ��� �԰Ÿ��� ������ �����緡������ ���� �� 20��.','65000','���ֵ� ���ֽ� ������ 659','0507-1410-2417','���߹���','����',default,'thejun.jpg','thejun2.jpg','thejun3.jpg','thejun.jpg',1,'�������ϴ�',3,0,3,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'�κ�غ��','�ϰ���� �غ����� �ɾ �� 5��','����� �������� ������ �����ϰ� ������ �� ���ǿ��� ���������� �ʿ��� �⺻���� ������ �ü��� �Ϻ�Ǿ� �ֽ��ϴ�.','91000','���ֵ� �쵵 �쵵�� �쵵�ؾȱ� 856','0507-1309-8595','���߹���','����',default,'robin.jpg','robin2.jpg','robin3.jpg','robin.jpg',1,'�쵵�� �ٴٰ� ������� ����',3,0,4,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'���Ͼ� ĳ�� ����Ʈ','���� ������ ���� ��� �ü�',' ���������� ������ö�� ���� ��� �������ϴ�.','69000','���ֵ� �������� ������ ���ֵ��� 5199','0507-1375-4665','���߹���','����',default,'lasania.jpg','lasania2.jpg','lasania3.jpg','lasania.jpg',1,'������ �ȵ˴ϴ�..',2,0,4,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'���� ���','�������� �ڸ��� ����','���� ���� ���� ���� ���ͳ� ���� �Ϻ�Ǿ� �ֽ��ϴ�. ����� �������� ������ �����մϴ�.','100000','���ֵ� �������� ������ ���Է� 473','0507-1317-0061','���߹���','����',default,'leeds.jpg','leeds2.jpg','leeds3.jpg','leeds.jpg',1,'�������� �����Դϴ�',2,0,4,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'���㵵�� ���','�ƴ��� ���� �� �ü�','�ʴ��� ���� ���� �� �� �Ը� �ڶ��ϴ� ������ö�����ֿ� ��ǳ���� �Կ����ε� ������ ���������� �������ϴ�.','80000','���ֵ� �������� ������ ���ֵ��� 5363-75','064-782-1544','���߹���','����',default,'dodam.jpg','dodam2.jpg','dodam3.jpg','dodam.jpg',1,'���� �α� �ӹ��� ���� ���',3,0,4,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'��ȣ ���','����� �������� ������ ����','���� �����Ű���忡�� ����� �Ÿ��� �ֽ��ϴ�.','100000','���ֵ� �������� ��ȫ��239���� 43-14','064-733-7348','���߹���','����',default,'dongho.jpg','dongho2.jpg','dongho3.jpg','dongho.jpg',1,'������ �����ƿ�',2,0,5,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'�ֹٶ��ĵ��Ҹ� ���','�ٺ�ť �� Ŀ��/�� ����Ŀ�� ����','���� ���ͳݰ� ���� �� �׶� ���� �̿��Ͻ� �� �ֽ��ϴ�.','73000','���ֵ� �������� ������ ������398���� 45','010-9048-5963','���߹���','����',default,'sol.jpg','sol2.jpg','sol3.jpg','sol.jpg',1,'�����մϴ�',2,0,5,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'Ŭ���̿������� ����Ʈ','Ű�� Ŭ��, �ǿ� Ǯ, ���� ���� ���� ���� ���ͳ�','�������Ĺ���, ���� �����Ű���忡�� ������ �Ÿ��� �ֽ��ϴ�.','132000','���ֵ� �������� 1100�� 501','064-739-3328','���߹���','����',default,'club.jpg','club2.jpg','club3.jpg','club.jpg',1,'�ٽ� ã����� ����',4,0,5,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'�����Ͽ콺 ������ ��ä���','����� �������� ����','�� ���ǿ��� ���������� �ʿ��� �⺻���� ������ �ü��� ������ �ֽ��ϴ�.','253000','���� �������� �߻갣���� 253-12','0507-1482-7792','���߹���','����',default,'joeun.jpg','joeun2.jpg','joeun3.jpg','joeun.jpg',1,'��ä�� ������ ���մϴ�',4,0,5,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'�󺥴��� ȣ��&����Ʈ','�̱����̰� ����� ������','����Ʈ������ ���������� ���� ���� ���� ������ ���õǾ� ������ ��ǰ ������ �ٺ�ť �ü� �뿩 ���� ���񽺸� �����ϰ� �ֽ��ϴ�.','78000','���ֵ� �������� �����߾ӷ�252���� 50','0507-1343-0770','���߹���','����',default,'lavender.jpg','lavender2.jpg','lavender3.jpg','lavender.jpg',1,'���� ���ҽ��ϴ�',5,0,5,default,default);

commit;