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


insert into FOOD values(FOOD_SEQ.nextval, '돌하르방밀면', '밀면과 보말칼국수를 함께 즐기고 싶다면 여기로!','사장님이 아주 친절하시고 음식점도 깨끗한 칼국수면이 쫄깃하고 국물 진해서 건강해지는 칼국수!','톳보말칼국수','바지락칼국수','칼국수','10000','9000','7000','서귀포시 중문관광로 331','064-739-0023','08:00 ~ 20:00','없음',default,'stonepush.png','stonepush2.png','stonepush3.png','stonepush4.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '하루방보쌈', '보쌈하면 무조건 하루방보쌈! 현지인 찐맛집','부드러운 보쌈에 감칠맛이 매력적인 김치와 무말랭이를 얹어 한입 가득~ 보쌈,쟁반국수,수제비를 세트로 주문하면 푸짐한 양에 가성비도 갑! 진정한 현지인 맛집 최고!','하루방보쌈세트 보쌈 대,쟁반국수,수제비','하루방족발세트 족발,쟁반국수,수제비','하루방보쌈','56000','51000','43000','제주시 중앙로2길 9','064-752-7890','11:30 ~ 23:00','매주 월요일 휴무',default,'harubang.png','harubang2.png','harubang3.png','harubang.png', 1,'맛있어요',5,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '백년귤화다', '청년농부가 만든 착한가격, 건강 먹거리','회원들이 꼽은 <백년귤화다>의 매력포인트 착한 가격 점심에 차 한잔 여유','아이스 아메리카노','아이스 카페라떼','아이스 카라멜마끼아또','2000','3000','2500','제주시 중앙로11길 1','010-6486-8640','10:00 ~ 18:00','없음',default,'baeknyun.png','baeknyun2.png','baeknyun3.png','baeknyun.png', 1,'맛있어요',5,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '각지불', '시각적 포만감부터 남다른 해물찜','해물 찜을 시켰는지, 콩나물 찜을 시켰는지 모를 집과는 격이 다른 집입니다. 해물찜이 테이블에 놓이는 순간 낙지, 꽃게, 전복 서너개, 곤이, 전복, 미더덕, 딱새우.. 몇 종류인지 세는 것도 어려울 신선한 해산물이 가득합니다. 신선한 재료만큼 맛도 훌륭합니다. 맛만큼 더 좋은 건 몇 번을 청해도 부끄럽지 않게 찬을 채워 주시는 친절함입니다.','해물찜 특대','해물탕 특대','아구찜','55000','45000','35000','제주시 조천읍 남조로1751','064-784-0809','11:30 ~ 20:00','15:30 ~ 17:30',default,'gakjibul.png','gakjibul2.png','gakjibul3.png','gakjibul.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '퐁낭그늘', '멜튀김, 전, 매콤한 안주에 얼음생맥주 한 잔이면 게임 끝!','퐁낭그늘에서 시원한 맥주와 맛잇는 안주를 먹으며 스트레스 풀고 가시기 바랍니다.','퐁낭참치전','퐁낭멜튀김','누룽지탕','15000','15000','13000','제주특별자치도 제주시 연동 2317-8 1층','064-749-5792','18:00 ~ 01:00','없음',default,'pong.png','pong2.png','pong3.png','pong.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '쿤도', '얼큰한 국물이 먹고 싶을땐 쿤도 짬뽕라멘','얼큰한 국물이 먹고싶을때는 무조건 쿤도 짬뽕라멘입니다. 해장으로 최고, 순두부,계란 토핑 추가하면 더 맛있습니다. 꼭 추가해서 드세요 양도 엄~청많아요','짬뽕라멘','순두부짬뽕라멘','공기밥','7000','8000','1000','제주시 화삼로1길17','070-8900-2486','11:00 ~ 10:00','없음',default,'kundo.png','kundo2.png','kundo3.png','kundo.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '형제갈비', '숯불에 구워서 배달하는 양념갈비 맛집','숯불에 구운 돼지양념갈비 맛집으로 배달해서 먹어본 양념 갈비 중에 최고!!','숯불돼지양념갈비','물냉면','비빔냉면','14000','7000','7000','제주시 은남4길41','064-748-7078','11:00 ~ 23:00','없음',default,'hyungje.png','hyungje2.png','hyungje3.png','hyungje.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '엄블랑호다', '잔잔히 즐기기에 분위기 좋은~ 그런 곳','넓고 쾌적한 분위기에 커피와 빙수 등 디저트가 끝내줍니다!!','아메리카노','카페 엄블랑','유채꽃라떼','4000','6000','6000','제주시 사장길 15 1층','0504-3139-1345','09:00 ~ 22:00','없음',default,'umble.png','umble2.png','umble3.png','umble.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '메밀꽃차롱', '방송 출연한 제주의 이색적인 꿩요리 맛집','가능하다면 꿩한마리코스로, 이색적이고 다양한 꿩요리를 드셔보시길 추천드려요~','꿩한마리코스','꿩메밀손칼국수','메밀들깨수제비','55000','11000','9000','제주시 연오로 136','064-711-6841','11:00 ~ 23:00','15:00 ~ 17:00',default,'memil.png','memil2.png','memil3.png','memil.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '우리양', '참숮으로 구운 최고 품질의 양고기를 맛보세요','참숯 양갈비 구이로 정말 맛있습니다 적극 추천합니다~','프렌치랙','숄더랙','해물짬뽕탕','22000','20000','17000','제주시 성산로1길 23,1층','064-744-2326','16:00 ~ 22:00','없음',default,'woori.png','woori2.png','woori3.png','woori.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '만선바다', '고등어회 전문 제주 향토음식점','신선한 고등어회에서 느끼는 살아있는 맛','고등어회(대)','고등어회(중)','고등어회(소)','77000','66000','55000','제주시 삼무로1길 6','064-742-6300','11:30 ~ 22:00','없음',default,'mansun.png','mansun2.png','mansun3.png','mansun.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '도도름', '유기농, 천연효모 발효종을 사용한 건강한 빵집','회원들이 꼽은 도도름의 매력포인트. 매장이 넓고 개별 분리된 여러 개의 공간이 있으며 인테리어가 이쁘고 깨끗함','미니당근케익','초코머드케익','우유생크림케익','20000','20000','30000','제주시 삼무로36','064-712-1013','12:30 ~ 00:30','없음',default,'dodo.png','dodo2.png','dodo3.png','dodo.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '연동길', '매콤한 낙지로 스트레스 날려보세요','낙지가 탱글탱글 싱싱하고 식감이 좋으며 같이 나오는 청국장도 너무 맛있어요','낙지볶음','청국장','소주','12000','3000','5000','제주시 은남2길 23','064-748-9363','10:30 ~ 21:00','없음',default,'yeondong.png','yeondong2.png','yeondong3.png','yeondong.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '도리스', '캐나다에 있는 듯한 제주 세계맥주 끝판왕!','제주에서 느낄수 있는 캐나다감성을 느껴보세요','피쉬앤칩스','필리치즈 스테이크 샌드위치','버팔로핫윙','12000','12000','12000','제주시 삼무로40','064-901-0755','17:00 ~ 02:00','없음',default,'doris.png','doris2.png','doris3.png','doris.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '양푼왕갈비', '든든한 양푼 왕갈비에, 밥까지 볶아먹으면 예술이쥬','매콤하게 즐길 수 있는 왕갈비','양푼왕갈비','낙지와갈비','볶음탕','14000','19000','28000','제주시 선덕로14','0507-1405-3663','11:00 ~ 22:00','없음',default,'yangpun.png','yangpun2.png','yangpun3.png','yangpun.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '서광마을국수', '면 종류별로 취향껏 골라 잡숴봐','뷰 맛집, 국수 맛집','고기국수','전복죽칼국수','낙지덮밥','8000','10000','10000','제주시 서해안로 356','064-713-5999','09:00 ~ 19:00','없음',default,'seogwang.png','seogwang2.png','seogwang3.png','seogwang.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '파도국수', '맛, 가성비, 서비스 모두 완벽한 공항근처 신상 맛집','최근 단백질 위주 식문화 변화에 따른 잔치고기, 순대반, 고기반 세트는 오대표님의 튀어난 아이디어!!!','멸치국수','고기국수','비빔국수','6000','7500','7500','제주시 신대로15길 2, 1층(연동)','064-749-1611','10:30 ~ 21:00','없음',default,'pado.png','pado2.png','pado3.png','pado.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '신흥관', '튀김의 일인자가 아니고선 나올 수 없는 탕수육!','제주 최강 탕수육을 드시려면 바로 신흥관! 바삭한 탕수육은 찐 감동입니다 한입 베어 물었을때의 그 감동...','탕수육','쟁반짜장','삼선간짜장','12000','8000','9000','제주시 문송길 19','064-748-2112','11:00 ~ 21:00','없음',default,'sin.png','sin2.png','sin3.png','sin.png', 1,'맛있어요',4,0,1,default,default);
insert into FOOD values(FOOD_SEQ.nextval, '수목원집밥', '집밥이 먹고 싶을땐 여기로 오세요','밑반찬이 진수성찬 깔끔하고 맛있어요.','정식','뚝배기소갈비찜','김치찌개','8000','16000','8000','제주시 삼무로82 1층, 1층','064-742-4483','09:00 ~ 22:00','없음',default,'soomok.png','soomok2.png','soomok3.png','soomok.png', 1,'맛있어요',4,0,1,default,default);


commit;
