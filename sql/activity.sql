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


insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'청초밭','자연속 삼나무 숲길','청초밭은 자연 순환농법만을 고집하고 농약이나 화학비료를 전혀 쓰지 않으며, 자연과 더불어 깨끗한 환경 속에서 생산되는 안전한 먹거리를 제공하기 위하여 최선을 다하는 친환경 농장입니다.','5000','서귀포시 성읍이리로57번길 34','064-787-7811','10:00 ~ 18:00','없음',default,'chungcho.png','chungcho2.png','chungcho3.png','chungcho.png',1,'피로 풀려요',3,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'서귀포유람선','범섬, 외돌개, 정방폭포 등 서귀포 해안의 절경을 감상할 수 있는 유람선','낭만이 있는 동양의 나폴리! 서귀포 해안 절경과 비경을 한 눈에 볼 수 있는 서귀포 유람선!','16500','서귀포시 남성중로 40','064-732-1717','09:00 ~ 18:00','없음',default,'seoguipo.png','seoguipo2.png','seoguipo3.png','seoguipo.png',1,'피로 풀려요',2,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'목장카페드르쿰다','거침없이 제주의 초원을 달린다','한 곳에서 여러가지의 즐거움을! 사랑하는 가족 또는 연인들과 함께 한가로이 여유를 즐기며 남녀노소 누구나 즐길 수 있는 다양한 체험 함께 해보세요.','10000','서귀포시 번영로 2454','064-787-5220','하절기 08:30 ~ 19:30 동절기 09:00 ~ 17:30','없음',default,'mokjang.png','mokjang2.png','mokjang3.png','mokjang.png',1,'피로 풀려요',5,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'성읍민속마을','주민들이 실제 거주하고 있는 민속촌','표선면 성읍리에 위치한 성읍마을은 옛 제주 마을의 모습이 그대로 유지되어 있는 곳이다. 중산간 도로인 1163호선과 번영로가 마을 안을 통과하는 교통의 요지로 방문하기 편리하며, 다른 민속촌들과 다르게 마을 내에 사람들이 실제 거주하고 있다.','0','서귀포시 성읍정의현로19','064-710-6797','09:00 ~ 18:00','없음',default,'sungeup.png','sungeup2.png','sungeup3.png','sungeup.png',1,'피로 풀려요',5,0,2,default,default);


insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'쇠소각','민물과 바닷물이 만나는 곳에 위치한 뗏목 체험장','제주도 서귀포시에 있는 자연하천. 명승 제78호이다. 2011년 6월 30일 문화재청이 외돌개, 산방산과 함께 국가지정문화재 명승으로 지정했다.','8000','서귀포시 하효동 995','064-732-1562','09:00 ~ 18:00','없음',default,'soggak.png','soggak2.png','soggak3.png','soggak.png',1,'피로 풀려요',3,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'크라이 오유','여행의 피로를 풀고 싶다면 여기로!','크라이오 테라피는 영하 110도~160도의 냉각사우나에 들어가 3분동안 테라피를 받는 요법이에요.','70000','제주시 노형동 3785-1','070-7543-8373','10:00 ~ 20:00','없음',default,'cry.png','cry2.png','cry3.png','cry.png',1,'피로 풀려요',2,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주카약 올레','한담해변 에메랄드 빛 바다를 내려다보며 즐길 수 있는 최고의 액티비티','한담해변에서 바다가 보이는 카약, 액티비티 기상상황에 따라 영업여부 결정','10000','제주시 애월읍 애월리 2490-1','010-4683-6492','09:30 ~ 19:00','없음',default,'kayak.png','kayak2.png','kayak3.png','kayak.png',1,'피로 풀려요',5,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'빅볼랜드','한라산 중산간에서 즐기는 수중액티비티!','빅볼을 탑승하기 전에는 자동차 바퀴가 굴러가는 느낌이려나? 라고 생각을 했는데, 큰 공이 스무스하게 내려가는 것이 아니라 약간 점프하면서 퉁 - 퉁 내려가는 거라서 그 반동이 상당히 심합니다.','33000','제주특별자치도 제주시 애월읍 산록서로 15','1588-6418','10:00 ~ 17:30','없음',default,'bigball.png','bigball2.png','bigball3.png','bigball.png',1,'피로 풀려요',5,0,2,default,default);


insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'산방선유람선','산방산과 송악산 인근 해안의 절경을 감상할 수 있는 유람선 제주여행의 필수코스','경관이 아름다운 제주도를 바다에서 바라보자! 산방산 유람선은 제주도에서 봄,여름,가을,겨울 사계절이 아름다운 산방산 근처 해안가를 돌면서 제주도의 사계절을 만나보실 수 있습니다.','18000','제주 서귀포시 안덕면 화순해안로106번길 16','064-792-1188','11:00 ~ 16:20','없음',default,'sanbang.png','sanbang2.png','sanbang3.png','sanbang.png',1,'피로 풀려요',3,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주야생돌고래탐사','제주바다를 가장 잘 아는 선장님과 함께 야생돌고래를 찾아 모험을 떠나요.','푸른 바다를 자유롭게 뛰노는 돌고래떼를 맞이하세요','33000','제주특별자치도 서귀포시 대정읍 동일하모로98번길 14-32','0507-1485-3413','09:00 ~ 18:00','없음',default,'yasaeng.png','yasaeng2.png','yasaeng3.png','yasaeng.png',1,'피로 풀려요',2,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'점보빌리지','제주에서 즐기는 코끼리쇼와 이국의 정취','동남아에서 온 코끼리와 현지 조련사가 여러분과 함께 즐기는 코끼리 테마쇼로, 여러분이 직접 참여하시는 공연이 함께 준비되어 있습니다.','15000','서귀포시 안덕면 평화로 3119번길 31-11','064-792-1233','09:30 ~ 17:30','없음',default,'jumbo.png','jumbo2.png','jumbo3.png','jumbo.png',1,'피로 풀려요',5,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'새별헤이요목장','동물친구들과의 휴식과 힐링의 시간','알파카, 말, 양, 토끼, 당나귀 등 귀여운 동물 친구들을 만나며 휴식과 힐리의 시간과 만들어보세요~','10000','제주시 봉성리 4554-20','064-794-2828','09:30 ~ 18:00','없음',default,'saebyul.png','saebyul2.png','saebyul3.png','saebyul.png',1,'피로 풀려요',5,0,2,default,default);


insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'한라산소주투어','한라산과 함께하는 우아한 소주여행','한라산 소주 68년의 역사와 재미있는 스토리, 한라산 소주가 만들어 지는 과정에 대해 가이드를 통해 알기 쉽게 설명해드립니다.','6000','제주시 한림로 555','064-729-1958','13:00 ~ 16:00','없음',default,'hanra.png','hanra2.png','hanra3.png','hanra.png',1,'피로 풀려요',3,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주바다하늘다이브센터','스킨스쿠버의 매력속으로~ 바다속으로 풍덩!','산호초와 물고기가 가득한 제주 바닷속을 감상해보세요! 물이 무서워도 걱정말아요~','90000','제주시 도두3길 20','064-702-2664','08:00 ~ 22:00','없음',default,'jejubada.png','jejubada2.png','jejubada3.png','jejubada.png',1,'피로 풀려요',2,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'수목원테마파크','짜릿한 즐거움을 무한대로 즐겨라! 수목원테마파크','제주 한라수목원 인근에 위치한 LED공원. 저녁 6시부터는 푸드트럭 야시장이 개장되고, 작은 플리마켓도 열린다.','10000','제주시 은수길 69','전화번호 없음','09:00 ~ 21:00','없음',default,'soomok.png','soomok2.png','soomok3.png','soomok.png',1,'피로 풀려요',5,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'아침미소목장','아이들과 함께하는 목장체험','아침미소목장은 지난 1978년 설립되어 많은 젖소들을 건강하게 길러내고 2008년 낙농체험목장으로 선정되어 친환경 목장으로 인정되었다.','0','제주시 월평동 155','064-727-2545','10:00 ~ 17:00','없음',default,'achim.png','achim2.png','achim3.png','achim.png',1,'피로 풀려요',5,0,2,default,default);


insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'돈키쥬쥬','다양한 동물과 교감하는 곳','평소 접하지 못하는 동물들을 실제로 만져보면서 동물들과 교감을 형설할 수 있어요.','5400','제주시 아라2동 113-1','064-755-5920','10:40 ~ 19:00','없음',default,'donkey.png','donkey2.png','donkey3.png','donkey.png',1,'피로 풀려요',3,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'이호캔들','푸른 밤 은하수처럼 빛나는 바다를 담은 곳','사전예약필수!','30000','제주시 서해안로 66 2층','010-2907-2754','09:00 ~ 22:00','없음',default,'iho.png','iho2.png','iho3.png','iho.png',1,'피로 풀려요',2,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'삼다수목장','제주의 푸른 자연 속을 달리는 승마','초원코스,원트랙2바퀴,삼다수길 가능','6300','제주시 비자림로 485-15','064-784-1441','09:00 ~ 17:30','없음',default,'samdasoo.png','samdosoo2.png','samdasoo3.png','samdasoo.png',1,'피로 풀려요',5,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주오프로드','야생의 모습을 간직한 곶자왈과 환상적인 선새미못의 풍광을 배경으로 짜릿한 오프로드를 즐겨요','조천읍 선흘리에 위치한 제라진캠프엔 지금껏 발견하지 못했던 자연 그대로의 제주와 놀라운 액티비티가 여러분들을 기다리고 있습니다.','39000','제주시 선흘리 624-4 제라진캠프','050-5558-3838','09:00 ~ 18:00','없음',default,'offroad.png','offroad2.png','offroad3.png','offroad.png',1,'피로 풀려요',5,0,2,default,default);


insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'김녕요트','요트에서 즐기는 제주의 풍광','보기만 해도 마음이 설레이는 럭셔리 요트와 함께 제주의 자연 그대로의 바람을 이용하여 항해하는 리얼 세일링 체험이다.','43200','제주시 구좌해안로 229-16','064-725-0225','09:00 ~ 18:00','없음',default,'kimnyung.png','kimnyung2.png','kimnyung3.png','kimnyung.png',1,'피로 풀려요',3,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'국제리더스클럽','사계절 해양레포츠 테마파크','에메랄드빛 바다색이 아름다운 곳에 위치하여, 인명구조자격을 보유한 최고의 해양레포츠 전문가로 구성되어 안전한 여행과 행복함을 만들어주는 해양레포츠 테마파크 입니다.','30000','제주시 신흥리 1-11','064-783-0000','09:00 ~ 18:00','없음',default,'kukje.png','kukje2.png','kukje3.png','kukje.png',1,'피로 풀려요',2,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'로봇스퀘어','직접 만지며 조종할 수 있는 로봇전시관','제주도 최초의 로봇테마 체험관인 로봇스퀘어는 IT와 로봇이 결합하여 만들어진 컨텐츠로 어른들동 ㅏ이들도 쉽게 로봇을 접할 수 있는 로봇체험관입니다.','8000','제주시 해맞이해안로 1032','064-783-0825','10:00 ~ 18:30','없음',default,'robot.png','robot2.png','robot3.png','robot.png',1,'피로 풀려요',5,0,2,default,default);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주레일바이크','유명 오름과 성산일출봉 등을 볼 수 있는 액티비티 자동으로','스릴과 힐링! 제주의 대자연을 달리고 체험 할 수 있는 제주레일바이크','8820','제주시 용눈이오름로 641번','064-783-0033','09:30 ~ 17:00','없음',default,'jejurail.png','jejurail2.png','jejurail3.png','jejurail.png',1,'피로 풀려요',5,0,2,default,default);

commit;