drop table LANDMARK;
drop sequence LANDMARK_SEQ;
purge recyclebin;

create table LANDMARK(
	LNUM number constraint L_NUM_PK primary key,
	LNAME nvarchar2(30) constraint L_NAME_NN not null,
	LINTRO nvarchar2(100) constraint L_INTRO_NN not null,
	LINTRO2 nvarchar2(1000) constraint L_INTRO2_NN not null,
	LCOST number,
	LADDRESS nvarchar2(50) constraint L_ADDRESS_NN not null,
	LPHONE nvarchar2(15),
	LOPCL nvarchar2(50),
	LCLOSED date default SYSDATE,
	LPHOTO nvarchar2(50) constraint L_PHOTO_NN not null,
	LPHOTO2 nvarchar2(50) constraint L_PHOTO2_NN not null,
	LPHOTO3 nvarchar2(50) constraint L_PHOTO3_NN not null,
	LORIPHOTO nvarchar2(50) constraint L_ORI_PHOTO_NN not null,
	CHOOSED number,
	REVIEW nvarchar2(50),
	STAR NUMBER CHECK(STAR IN(1, 2, 3, 4, 5)) constraint STAR2_CHECK not null,
	VIEWS number,
	DIVISION NUMBER CHECK(DIVISION IN(1, 2, 3, 4, 5)) constraint DIVISION2_CHECK not null,
	XLOCATION nvarchar2(50) default '0',
	YLOCATION nvarchar2(50) default '0'
);
create sequence LANDMARK_SEQ increment by 1 start with 1 nocache;

insert into LANDMARK values(LANDMARK_SEQ.nextval, '�����ؾȵ���','��� Ư�� �ϸ��� �߰��� �Ƹ����� ������ ���� �α� �ؾȵ���','�Ķ� ���� �ϴð� �� �Ʒ��� ������ ������ ������ ������ �� �ִ� �����ȣ�ؾȵ���. ���ְ��װ� ����� ���� �־� ���� ���ķ� ������ ����̺긦 ��� �� �ִ� ���̴�.','0','���ֽ� �����ϵ� 1734','��ȭ��ȣ ����','��� �̿� ����',default,'dodu.png','dodu2.png','dodu3.png','dodu.png', 2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�Ѷ���½�','Ʈ��ŷ�� �Բ� �ڿ����°��� �پ��� ����� ��� �� �ִ� 516���� �αٽ�, ���������ó','�Ѷ���½��� �ѼյǾ� ��ġ�Ǿ��� �������� ������ ������ ���� ������ ������ �긲Ʈ��ŷ�� �Բ� �ڿ����°��� �پ��� ����� ��� �� �ִ�.','0','���ֽ� 516�� 2596','064-710-8688','������ 09:00 ~ 18:00 ������ 09:00 ~ 17:00',default,'saengtae.png','saengtae2.png','saengtae3.png','saengtae.png',2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�쵵','�Ұ� �����ִ� ������ �ϰ� �ִ� ������ ���� ū �μӼ� �Ƹ��ٿ� �غ��� ǳ������ ����','�쵵�� �Ұ� �����ִ� ����� ��Ҵٰ� �ؼ� ������� �Ҽ� �Ǵ� �������� �Ҹ�����. �ϸ��� ���� ����, ǳ���� ����, �쵵�Ȱ� �� õ���� �ڿ������� ���� �������ν� ���� �� 200�� ���� �������� ã�� ������ ��ǥ���� �μӼ��̴�.','0','���ֽ� �쵵�� ���� 904-1','064-782-5671','�쵵�� 07:00, 08:00(30�� ����) ~ 18:30(��������)',default,'woodo.png','woodo2.png','woodo3.png','woodo.png',2,'GOOD',3,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�Ѷ�����','���� �� �ڿ� �޾縲','���ֽ� ���� 1100���κ��� ���̿��� �⽾�� ��ġ�� �Ѷ������� ������ �ڻ������� �ƿ��� �Ĺ� �� 1,100�� ���� �Ĺ��� ���� ���õǾ� �ִ� ��������ν� �л� �� �������� ���� ������ ������ ������ ������ �ϰ� �ִ�.','0','���ֽ� �ƶ�1�� 387','064-724-6830','09:00 ~ 17:00',default,'hanra.png','hanra2.png','hanra3.png','hanra.png', 2,'GOOD',2,0,1,default,default);

insert into LANDMARK values(LANDMARK_SEQ.nextval, 'õ���� ����','����3�������� �Ը� ����鿡�� ������ ���� �ֺ��� �������� �־� �㿡 ��å�ϱ� ����','���� 22m, �ʺ� 12m(���� ���� ��), ���� ���� 20m. ������ �Ȼ������ �̷���� ��� �������� ���� ������ �������� ������̴�.','0','�������� �����߷� 2-15','064-733-1528','����� ~ 22:00',default,'chunji.png','chunji2.png','chunji3.png','chunji.png', 2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '���̳���ưũ���������ڹ���','���� ���� ũ�������� �ڹ���','ũ���������� ���� �𸣰� �ִ� ����ִ� �̾߱��, �Ʊ��ڱ��ϰ� �Ƹ��ٿ� ũ�������� ��ĵ�, �ڹ������� ����������.','0','�������� ��ȭ��654','010-2236-6306','10:30 ~ 17:30',default,'bye.png','bye2.png','bye3.png','bye.png',2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '��õ�������𷡻���','�Ϳ��� ���� �������� �ִ� �غ����� ��ȭ�Ӱ� ���ֹٴٸ� ��� �� �ִ� ��','�ؾȵ��θ� ���� �ȴ� ���� ������ ������ �ϴ� �Ҹ��� ���� �� �ִ�. �ٴٷ� �������� ������ �ٴ幰�� �̲����鼭 ���� �Ҹ���� ���� �� �� �ִ�.','0','�������� ������ �ŷʸ� 72-18','��ȭ��ȣ ����','���߹���',default,'gong.png','gong2.png','gong3.png','gong.png',2,'GOOD',3,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�ؽ���ǻ�͹ڹ���','��� ���� ��� ��� �� �ִ� �پ��� ���Ӱ� ��÷�� VR��� ���� ���� �� �ִ� �ڹ���','�ؽ���ǻ�͹ڹ����� �η��� ���� ���� ������ ��ȭ��Ų ���� ������ ��ü�� ��ǻ�Ϳ� �� ������ �⿩�� �� ������ ���縦 �Բ� ���������ν� �츮�� �̷��� ����� �� �� �ִ� ü���� �ڹ����Դϴ�.','0','���ֽ� 1100�� 3198-8','064-745-1994','10:00 ~ 18:00',default,'nexon.png','nexon2.png','nexon3.png','nexon.png', 2,'GOOD',2,0,1,default,default);

insert into LANDMARK values(LANDMARK_SEQ.nextval, '�������','�Ѷ��� ���� ������� ���� ������ ���� �� �ִ� �ʿ�����','5.16 ���ο� �ִ� ���ָ�������� 1986�� ���� õ����买 347ȣ�� ���� ��ȣ�ǰ� �ִ� ���� ���� ���������� �� �� �ִ�.','0','���ֽ� �밭�� ��14-34','064-710-2298','��� �̿� ����',default,'mabang.png','mabang2.png','mabang3.png','mabang.png', 2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '������','���͵��� �������� �ϸ��� ������ �� �ִ� ��� �ؾȼ��� ���� ��Ư�� ȭ�������� �ִ� ��','����Ư����ġ�� ���ֽ� �Ѱ�� ��긮�� �ִ� ��. ���� 77m. ���ֽ� ������, ���� �ϼ��ʿ� ��ġ�ϸ� ��ȭ������ ���ʿ��� 300ha�� �Ѵ� ������밡 �ִ�.','0','���ֽ� �Ѱ�� ��긮 3760','064-772-3334','���߹���',default,'soowall.png','soowall2.png','soowall3.png','soowall.png',2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�ֿ��ؾȵ���','������ ���޶��� �غ�, �㿡�� ���� �ϸ��� �� �� �ִ� �ؾȵ���','�ϼ����� �ؾȼ��� ���� �̾��� �ֿ��ؾȵ��δ� ��� ������ �ٴ� ǳ���� ������ �� �ִ� �� 9km�� ����̺� �ڽ��̴�.','0','���ֽ� �ֿ��� �ž��� 2719-3','��ȭ��ȣ ����','���߹���',default,'aewol.png','aewol2.png','aewol3.png','aewol.png',2,'GOOD',3,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '���ŰƼ���Ϸ���','���� ����!�ִ�! ���ŰƼ �� ����','�� ���� ���� ����鿡�� ����޴� �۷ι� ĳ���� ���ŰƼ!��̰� �ູ�� �̾߱���� ������ �� ��, Hello Kitty Island�� �������� �ʴ��մϴ�.','14000','�������� �ȴ��� ��â�� 340','064-792-6114','09:00 ~ 18:00',default,'hello.png','hello2.png','hello3.png','hello.png', 2,'GOOD',2,0,1,default,default);

insert into LANDMARK values(LANDMARK_SEQ.nextval, '�����ؼ�����','�Ѵ��غ��� ����� ���޶��� �� ���� �ٴ� ������ ���� ���̵��� ��� ���� ��','����Ư����ġ�� ���ֽ� �ֿ��� �������� �ִ� �ؼ���������, ���� �� 350m, �� 70m�� ������ ��� ���� 1.5m�� ���� ���� ������ ���߾���.','0','���ֽ� �ֿ��� ������ 1565','064-728-3394','��� �̿� ����',default,'gwakji.png','gwakji2.png','gwakji3.png','gwakji.png', 2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�������۸��R','�����Ÿ�� �� ������ ����','���ſ� ������ ���� �� �ٸ� ����� �� ��° ������ �����ϴ� ���� �־����.','15000','���ֽ� ������ 89','064-713-1888','09:30 ~ 19:00',default,'nohyung.png','nohyung2.png','nohyung3.png','nohyung.png',2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�������غ�','�̱����� �������� ���� ������ �����غ� �ٴ幰�� ������ ���� ������ �Ҹ��� �ŷ�����','���ֽ� �������� �ִ� ������ �غ��� ����� �𷡻������� �̷���� �غ����� �ٸ��� ���۵����� ����� �̷���� �غ��̴�.','0','���ֽ� ������ 475','��ȭ��ȣ ����','��� �̿� ����',default,'aljak.png','aljak2.png','aljak3.png','aljak.png',2,'GOOD',3,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '������','�޽�, ����ϱ� ���� ������ ��ǥ ������ �Ѷ�� Ž��ηε� ������','���Ѻұ������� ��23���� �������μ� ���ֵ��� 30�� �� ���縦 �����Ѵ�.','0','���ֽ� �ƶ�1�� 387','064-724-6830','�Ի�ð� 05:00 ~ 13:00',default,'gwaneum.png','gwaneum2.png','gwaneum3.png','gwaneum.png', 2,'GOOD',2,0,1,default,default);

insert into LANDMARK values(LANDMARK_SEQ.nextval, '��������','���ֽùε��� �ϸ� ���','������ ���� ���ε� ���� ���� ���̴� ���츮�� ���ֽʰ��� �ϳ��� ��������� �� �� �ִ�.','0','���ֽ� �������� 74','064-728-4643','��� �̿� ����',default,'sarabong.png','sarabong2.png','sarabong3.png','sarabong.png', 2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '������','������ ��¡','���� �ô��� ���� �ǹ��� �ϳ��� �̸��� ������ ���� �翹�� ������ "Ȱ���� ���� ���� ���� ���캸�� ��"�̶�� �������� �����ߴ�.','0','���ֽ� ������ 19','064-710-6711','��� �̿� ����',default,'gwanduk.png','gwanduk2.png','gwanduk3.png','gwanduk.png',2,'GOOD',4,0,1,default,default);



commit;
