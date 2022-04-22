drop table ACTIVITY;
drop sequence ACTIVITY_SEQ;
purge recyclebin;


create table ACTIVITY(
	ANUM number constraint A_NUM_PK primary key,
	ANAME nvarchar2(30) constraint A_NAME_NN not null,
	AINTRO nvarchar2(100) constraint A_INTRO_NN not null,
	AINTRO2 nvarchar2(1000) constraint A_INTRO2_NN not null,
	ACOST number,
	AADDRESS nvarchar2(50) constraint A_ADDRESS_NN not null,
	APHONE nvarchar2(15),
	AOPCL nvarchar2(100),
	ABREAK nvarchar2(100),
	ACLOSED date default SYSDATE,
	APHOTO nvarchar2(50) constraint A_PHOTO_NN not null,
	APHOTO2 nvarchar2(50) constraint A_PHOTO2_NN not null,
	APHOTO3 nvarchar2(50) constraint A_PHOTO3_NN not null,
	AORIPHOTO nvarchar2(50) constraint A_ORI_PHOTO_NN not null,
	CHOOSED number,
	REVIEW nvarchar2(50),
	STAR NUMBER CHECK(STAR IN(1, 2, 3, 4, 5)) constraint STAR3_CHECK not null,
	VIEWS number,
	DIVISION NUMBER CHECK(DIVISION IN(1, 2, 3, 4, 5)) constraint DIVISION3_CHECK not null,
	XLOCATION nvarchar2(50) default '0',
	YLOCATION nvarchar2(50) default '0'
);
create sequence ACTIVITY_SEQ increment by 1 start with 1 nocache;


insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'û�ʹ�','�ڿ��� �ﳪ�� ����','û�ʹ��� �ڿ� ��ȯ������� �����ϰ� ����̳� ȭ�к�Ḧ ���� ���� ������, �ڿ��� ���Ҿ� ������ ȯ�� �ӿ��� ����Ǵ� ������ �԰Ÿ��� �����ϱ� ���Ͽ� �ּ��� ���ϴ� ģȯ�� �����Դϴ�.','5000','�������� �����̸���57���� 34','064-787-7811','10:00 ~ 18:00','����',default,'chungcho.png','chungcho2.png','chungcho3.png','chungcho.png',1,'�Ƿ� Ǯ����',3,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'������������','����, �ܵ���, �������� �� ������ �ؾ��� ������ ������ �� �ִ� ������','������ �ִ� ������ ������! ������ �ؾ� ����� ����� �� ���� �� �� �ִ� ������ ������!','16500','�������� �����߷� 40','064-732-1717','09:00 ~ 18:00','����',default,'seoguipo.png','seoguipo2.png','seoguipo3.png','seoguipo.png',1,'�Ƿ� Ǯ����',2,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'����ī��帣���','��ħ���� ������ �ʿ��� �޸���','�� ������ ���������� ��ſ���! ����ϴ� ���� �Ǵ� ���ε�� �Բ� �Ѱ����� ������ ���� ������ ������ ��� �� �ִ� �پ��� ü�� �Բ� �غ�����.','10000','�������� ������ 2454','064-787-5220','������ 08:30 ~ 19:30 ������ 09:00 ~ 17:30','����',default,'mokjang.png','mokjang2.png','mokjang3.png','mokjang.png',1,'�Ƿ� Ǯ����',5,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�����μӸ���','�ֹε��� ���� �����ϰ� �ִ� �μ���','ǥ���� �������� ��ġ�� ���������� �� ���� ������ ����� �״�� �����Ǿ� �ִ� ���̴�. �߻갣 ������ 1163ȣ���� �����ΰ� ���� ���� ����ϴ� ������ ������ �湮�ϱ� ���ϸ�, �ٸ� �μ��̵�� �ٸ��� ���� ���� ������� ���� �����ϰ� �ִ�.','0','�������� ������������19','064-710-6797','09:00 ~ 18:00','����',default,'sungeup.png','sungeup2.png','sungeup3.png','sungeup.png',1,'�Ƿ� Ǯ����',5,0,2,default,default);


insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'��Ұ�','�ι��� �ٴ幰�� ������ ���� ��ġ�� �¸� ü����','���ֵ� �������ÿ� �ִ� �ڿ���õ. ��� ��78ȣ�̴�. 2011�� 6�� 30�� ��ȭ��û�� �ܵ���, ����� �Բ� ����������ȭ�� ������� �����ߴ�.','8000','�������� ��ȿ�� 995','064-732-1562','09:00 ~ 18:00','����',default,'soggak.png','soggak2.png','soggak3.png','soggak.png',1,'�Ƿ� Ǯ����',3,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'ũ���� ����','������ �Ƿθ� Ǯ�� �ʹٸ� �����!','ũ���̿� �׶��Ǵ� ���� 110��~160���� �ð���쳪�� �� 3�е��� �׶��Ǹ� �޴� ����̿���.','70000','���ֽ� ������ 3785-1','070-7543-8373','10:00 ~ 20:00','����',default,'cry.png','cry2.png','cry3.png','cry.png',1,'�Ƿ� Ǯ����',2,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'����ī�� �÷�','�Ѵ��غ� ���޶��� �� �ٴٸ� �����ٺ��� ��� �� �ִ� �ְ��� ��Ƽ��Ƽ','�Ѵ��غ����� �ٴٰ� ���̴� ī��, ��Ƽ��Ƽ ����Ȳ�� ���� �������� ����','10000','���ֽ� �ֿ��� �ֿ��� 2490-1','010-4683-6492','09:30 ~ 19:00','����',default,'kayak.png','kayak2.png','kayak3.png','kayak.png',1,'�Ƿ� Ǯ����',5,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�򺼷���','�Ѷ�� �߻갣���� ���� ���߾�Ƽ��Ƽ!','���� ž���ϱ� ������ �ڵ��� ������ �������� �����̷���? ��� ������ �ߴµ�, ū ���� �������ϰ� �������� ���� �ƴ϶� �ణ �����ϸ鼭 �� - �� �������� �Ŷ� �� �ݵ��� ����� ���մϴ�.','33000','����Ư����ġ�� ���ֽ� �ֿ��� ��ϼ��� 15','1588-6418','10:00 ~ 17:30','����',default,'bigball.png','bigball2.png','bigball3.png','bigball.png',1,'�Ƿ� Ǯ����',5,0,2,default,default);


insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'��漱������','����� �۾ǻ� �α� �ؾ��� ������ ������ �� �ִ� ������ ���ֿ����� �ʼ��ڽ�','����� �Ƹ��ٿ� ���ֵ��� �ٴٿ��� �ٶ���! ���� �������� ���ֵ����� ��,����,����,�ܿ� ������� �Ƹ��ٿ� ���� ��ó �ؾȰ��� ���鼭 ���ֵ��� ������� �������� �� �ֽ��ϴ�.','18000','���� �������� �ȴ��� ȭ���ؾȷ�106���� 16','064-792-1188','11:00 ~ 16:20','����',default,'sanbang.png','sanbang2.png','sanbang3.png','sanbang.png',1,'�Ƿ� Ǯ����',3,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'���־߻�����Ž��','���ֹٴٸ� ���� �� �ƴ� ����԰� �Բ� �߻������� ã�� ������ ������.','Ǫ�� �ٴٸ� �����Ӱ� �ٳ�� �������� �����ϼ���','33000','����Ư����ġ�� �������� ������ �����ϸ��98���� 14-32','0507-1485-3413','09:00 ~ 18:00','����',default,'yasaeng.png','yasaeng2.png','yasaeng3.png','yasaeng.png',1,'�Ƿ� Ǯ����',2,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'����������','���ֿ��� ���� �ڳ������ �̱��� ����','�����ƿ��� �� �ڳ����� ���� ���û簡 �����а� �Բ� ���� �ڳ��� �׸����, �������� ���� �����Ͻô� ������ �Բ� �غ�Ǿ� �ֽ��ϴ�.','15000','�������� �ȴ��� ��ȭ�� 3119���� 31-11','064-792-1233','09:30 ~ 17:30','����',default,'jumbo.png','jumbo2.png','jumbo3.png','jumbo.png',1,'�Ƿ� Ǯ����',5,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�������̿����','����ģ������� �޽İ� ������ �ð�','����ī, ��, ��, �䳢, �糪�� �� �Ϳ��� ���� ģ������ ������ �޽İ� ������ �ð��� ��������~','10000','���ֽ� ������ 4554-20','064-794-2828','09:30 ~ 18:00','����',default,'saebyul.png','saebyul2.png','saebyul3.png','saebyul.png',1,'�Ƿ� Ǯ����',5,0,2,default,default);


insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�Ѷ���������','�Ѷ��� �Բ��ϴ� ����� ���ֿ���','�Ѷ�� ���� 68���� ����� ����ִ� ���丮, �Ѷ�� ���ְ� ����� ���� ������ ���� ���̵带 ���� �˱� ���� �����ص帳�ϴ�.','6000','���ֽ� �Ѹ��� 555','064-729-1958','13:00 ~ 16:00','����',default,'hanra.png','hanra2.png','hanra3.png','hanra.png',1,'�Ƿ� Ǯ����',3,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'���ֹٴ��ϴô��̺꼾��','��Ų������� �ŷ¼�����~ �ٴټ����� ǳ��!','��ȣ�ʿ� ����Ⱑ ������ ���� �ٴ���� �����غ�����! ���� �������� �������ƿ�~','90000','���ֽ� ����3�� 20','064-702-2664','08:00 ~ 22:00','����',default,'jejubada.png','jejubada2.png','jejubada3.png','jejubada.png',1,'�Ƿ� Ǯ����',2,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'������׸���ũ','¥���� ��ſ��� ���Ѵ�� ��ܶ�! ������׸���ũ','���� �Ѷ����� �αٿ� ��ġ�� LED����. ���� 6�ú��ʹ� Ǫ��Ʈ�� �߽����� ����ǰ�, ���� �ø����ϵ� ������.','10000','���ֽ� ������ 69','��ȭ��ȣ ����','09:00 ~ 21:00','����',default,'soomok.png','soomok2.png','soomok3.png','soomok.png',1,'�Ƿ� Ǯ����',5,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'��ħ�̼Ҹ���','���̵�� �Բ��ϴ� ����ü��','��ħ�̼Ҹ����� ���� 1978�� �����Ǿ� ���� ���ҵ��� �ǰ��ϰ� �淯���� 2008�� ����ü��������� �����Ǿ� ģȯ�� �������� �����Ǿ���.','0','���ֽ� ���� 155','064-727-2545','10:00 ~ 17:00','����',default,'achim.png','achim2.png','achim3.png','achim.png',1,'�Ƿ� Ǯ����',5,0,2,default,default);


insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'��Ű����','�پ��� ������ �����ϴ� ��','��� ������ ���ϴ� �������� ������ �������鼭 ������� ������ ������ �� �־��.','5400','���ֽ� �ƶ�2�� 113-1','064-755-5920','10:40 ~ 19:00','����',default,'donkey.png','donkey2.png','donkey3.png','donkey.png',1,'�Ƿ� Ǯ����',3,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'��ȣĵ��','Ǫ�� �� ���ϼ�ó�� ������ �ٴٸ� ���� ��','���������ʼ�!','30000','���ֽ� ���ؾȷ� 66 2��','010-2907-2754','09:00 ~ 22:00','����',default,'iho.png','iho2.png','iho3.png','iho.png',1,'�Ƿ� Ǯ����',2,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'��ټ�����','������ Ǫ�� �ڿ� ���� �޸��� �¸�','�ʿ��ڽ�,��Ʈ��2����,��ټ��� ����','6300','���ֽ� ���ڸ��� 485-15','064-784-1441','09:00 ~ 17:30','����',default,'samdasoo.png','samdosoo2.png','samdasoo3.png','samdasoo.png',1,'�Ƿ� Ǯ����',5,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'���ֿ����ε�','�߻��� ����� ������ ���ڿа� ȯ������ �����̸��� ǳ���� ������� ¥���� �����ε带 ��ܿ�','��õ�� ���긮�� ��ġ�� ������ķ���� ���ݲ� �߰����� ���ߴ� �ڿ� �״���� ���ֿ� ���� ��Ƽ��Ƽ�� �����е��� ��ٸ��� �ֽ��ϴ�.','39000','���ֽ� ���긮 624-4 ������ķ��','050-5558-3838','09:00 ~ 18:00','����',default,'offroad.png','offroad2.png','offroad3.png','offroad.png',1,'�Ƿ� Ǯ����',5,0,2,default,default);


insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'����Ʈ','��Ʈ���� ���� ������ ǳ��','���⸸ �ص� ������ �����̴� ���Ÿ� ��Ʈ�� �Բ� ������ �ڿ� �״���� �ٶ��� �̿��Ͽ� �����ϴ� ���� ���ϸ� ü���̴�.','43200','���ֽ� �����ؾȷ� 229-16','064-725-0225','09:00 ~ 18:00','����',default,'kimnyung.png','kimnyung2.png','kimnyung3.png','kimnyung.png',1,'�Ƿ� Ǯ����',3,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'����������Ŭ��','����� �ؾ緹���� �׸���ũ','���޶���� �ٴٻ��� �Ƹ��ٿ� ���� ��ġ�Ͽ�, �θ����ڰ��� ������ �ְ��� �ؾ緹���� �������� �����Ǿ� ������ ����� �ູ���� ������ִ� �ؾ緹���� �׸���ũ �Դϴ�.','30000','���ֽ� ���︮ 1-11','064-783-0000','09:00 ~ 18:00','����',default,'kukje.png','kukje2.png','kukje3.png','kukje.png',1,'�Ƿ� Ǯ����',2,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�κ�������','���� ������ ������ �� �ִ� �κ����ð�','���ֵ� ������ �κ��׸� ü����� �κ�������� IT�� �κ��� �����Ͽ� ������� �������� ��鵿 ���̵鵵 ���� �κ��� ���� �� �ִ� �κ�ü����Դϴ�.','8000','���ֽ� �ظ����ؾȷ� 1032','064-783-0825','10:00 ~ 18:30','����',default,'robot.png','robot2.png','robot3.png','robot.png',1,'�Ƿ� Ǯ����',5,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'���ַ��Ϲ���ũ','���� ������ ��������� ���� �� �� �ִ� ��Ƽ��Ƽ �ڵ�����','������ ����! ������ ���ڿ��� �޸��� ü�� �� �� �ִ� ���ַ��Ϲ���ũ','8820','���ֽ� �봫�̿����� 641��','064-783-0033','09:30 ~ 17:00','����',default,'jejurail.png','jejurail2.png','jejurail3.png','jejurail.png',1,'�Ƿ� Ǯ����',5,0,2,default,default);

commit;