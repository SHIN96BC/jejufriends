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


insert into HOTEL values(HOTEL_SEQ.nextval,'올곧제주','자쿠지가 있는 감성적인 초가집','제주 민속촌에 있는 전시형 초가 외에는 몇 채 남지 않은 옛 집이 작은 시골 마을에선 유일하게 남아있는 초가집 입니다.','270000','제주특별자치도 제주시 애월읍 신엄리 1700-1 올곧제주','0507-1392-6103','연중무휴','없음',default,'all.png','all2.png','all3.png','all.png',1,'피로 풀려요',3,0,3,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'폴부엌이층집','폴셰프의 부엌을 빌려드립니다','폴부엌 이층집의 1층에는 침실, 욕실, 주방, 그리고 16명이 마주앉을 수 있는 다이닝룸이 있습니다. 오픈플랜 구조로 개방감이 느껴지는 2층은 침대, 욕실, 노천탕, 옥상정원으로 꾸며져 있습니다.','130000','제주도 제주시 한경면 녹차분재로 568','010-3242-1624','연중무휴','없음',default,'pall.png','pall2.png','pall3.png','pall.png',1,'피로 풀려요',2,0,2,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'윤슬스테이','제주도 구좌읍에 위치하고 풀장이 함께있는 감성숙소입니다 ','윤슬스테이는 제주 동쪽에 위치한 깔끔하고 모던한 감성을 가진 예쁜 숙소입니다. 공동으로 이용하실 수 있는 큰 수영장도 있답니다.','150000','제주특별자치도 제주시 구좌읍 덕행로 175-24','0507-1346-2702','연중무휴','없음',default,'yoon.png','yoon2.png','yoon3.png','yoon.png',1,'피로 풀려요',5,0,4,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'어오내스테이','35평 2층집 150평 잔디마당 이 모든걸 오직 한팀에게만','한경면 저지리에 위치한 어오내스테이입니다. 2층집으로 5인까지 입실 가능한 독채펜션으로 오직 한팀만 지내실 수 있는 프라이빗 감성숙소입니다.','290000','서귀포시 성읍정의현로19','064-710-6797','연중무휴','없음',default,'uonae.png','uonae2.png','uonae3.png','uonae.png',1,'피로 풀려요',5,0,2,default,default);

insert into HOTEL values(HOTEL_SEQ.nextval,'엠버 리조트','엠버 리조트는 제주국제공항에서 차로 30분 거리에 위치해 있습니다','세계자연유산으로 지정된 만장굴은 차로 1시간 10분, 성산 일출봉은 1시간 20분 거리에 있습니다. 제주에 위치한 편안하고 아늑한 이 리조트에서는 무선 인터넷과 컨시어지 서비스 및 24시간 리셉션 등을 이용하실 수 있습니다.','250000','제주도 제주시 1100로 2671-51','0507-1308-8695','연중무휴','없음',default,'amber.jpg','amber2.jpg','amber3.jpg','amber.jpg',1,'고양이 너무 귀여웡 ㅋㅋㅋ',3,0,1,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'아르본 리조트','아르본 리조트는 극락 오름과 제주공룡랜드에서 가까운 거리에 있습니다','백록담이 있는 한라산 국립공원은 차로 50분 거리에 있습니다. 제주에 머무시는 동안 이 리조트에서 아늑한 객실 및 시설을 이용하실 수 있습니다.','18170','제주도 제주시 애월읍 평화로 2482','064-799-1177','연중무휴','없음',default,'arbon.jpg','arbon2.jpg','arbon3.jpg','arbon.jpg',1,'청결하지 못한 숙소',2,0,1,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'꽃머채 펜션','제주에 자리한 꽃머채 펜션에서는 무료 무선 인터넷을 제공합니다','테라스, 사우나도 갖춰져 있습니다. 객실에 주방, 전 객실 무료 무선 인터넷, 냉장고 등이 마련되어 있습니다.','60000','제주도 제주시 애월읍 소길남길 202-4','0507-1375-4665','연중무휴','없음',default,'ggot.jpg','ggot2.jpg','ggot3.jpg','ggot.jpg',1,'괜찮습니다',2,0,1,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'아덴힐 리조트','정원도 완비되어 있습니다','주변의 관광 명소로는 차로 약 30분 거리에 서귀포 자연휴양림','20분 거리에 오설록 티뮤지엄과 소인국 테마파크가 있습니다.','130000','제주도 제주시 한림읍 화전길 82','0507-1432-7002안내','연중무휴','없음',default,'adenhill.jpg','adenhill2.jpg','adenhill3.jpg','adenhill.jpg',1,'너무 좋아요',3,0,1,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'더갤러리 펜션','수영장과 바비큐 시설, 주차장, 와이파이 등 여러 시설과 서비스를 이용하실 수 있습니다','가족 단위 여행객이 방문하기 좋은 에코랜드 테마파크가 차로 약 8분, 천연기념물로 지정된 비자림과 능선이 아름다운 용눈이 오름이 차로 약 25분 정도 소요됩니다.','103000','제주도 제주시 조천읍 남조로 1717-24','0507-1317-4284','연중무휴','없음',default,'thegall.jpg','thegall2.jpg','thegall3.jpg','thegall.jpg',1,'깨끗하고 심플하며 친절하기 까지한 그곳!',3,0,1,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'바사팬','약 25분 거리에는 봄날 촬영지인 비양도로 가는 배가 있는 한림항이 있습니다','물품 보관소, 24시간 리셉션, 컨시어지 서비스 외에도 다양한 서비스를 제공하고 있습니다. 와이파이 연결도 지원합니다.','117000','제주도 제주시 한경면 한경해안로 448-6','070-7719-9811','연중무휴','없음',default,'basapan.jpg','basapan2.jpg','basapan3.jpg','basapan.jpg',1,'깔끔합니다',3,0,2,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'머큐어 앰배서더 제주','호텔 내에는 인피니티 풀과 피트니스센터','머큐어 앰배서더 제주에서 차로 15분이면 오설록티뮤지엄, 제주항공우주박물관, 소인국 테마파크까지 가실 수 있습니다. 또한, 차로 20분이면 경마 경기를 관람하실 수 있는 렛츠런파크 제주까지 가실 수 있습니다.','176000','제주도 서귀포시 안덕면 한창로 365','064-793-1131','연중무휴','없음',default,'mercure.jpg','mercure2.jpg','mercure3.jpg','mercure.jpg',1,'깨끗하고 친절함',4,0,2,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'잠자는 바이크','모던한 분위기의 객실을 제공','제주에 머무시는 동안 이 숙박시설에서 아늑한 객실 및 시설을 이용하실 수 있습니다.','195000','제주도 제주시 한경면 용금로 206','0507-1342-0319','연중무휴','없음',default,'bike.jpg','bike2.jpg','bike3.jpg','bike.jpg',1,'감사한 마음이 드는 숙소',5,0,2,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'한또바기','모던한 분위기의 객실을 제공','제주에 위치한 이 한또바기는 함덕 해수욕장에서 가까운 거리에 있습니다.','59000','제주도 제주시 조천읍 조천18길 65','070-8833-3461','연중무휴','없음',default,'handdo.jpg','handdo2.jpg','handdo3.jpg','handdo.jpg',1,'가성비 좋아요',2,0,3,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'로긴 리조트','모든 객실에 자쿠지가 완비','편안한 객실 및 시설과 더불어 수영장 등까지 이용하실 수 있습니다.','82000','제주도 제주시 서해안로 442-11','0507-1363-3341','연중무휴','없음',default,'loginresort.jpg','loginresort2.jpg','loginresort3.jpg','loginresort.jpg',1,'마지막 날 스파하며 묵기 좋앟요',4,0,3,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'호텔 난타','한라산 높은 고지에 위치한 호텔','호텔에는 260석 규모의 회의 공간 그랜드볼룸, 난타 공연과 다양한 국제회의를 열 수 있는 650석 규모의 컨퍼런스 룸, 비즈니스 센터, 피트니스 센터, 편의점 등의 편의시설이 마련되어 있습니다.',85500'','제주도 제주시 선돌목동길 56-26','0507-1446-1805','연중무휴','없음',default,'nanta.jpg','nanta2.jpg','nanta3.jpg','nanta.jpg',1,'깨끗하고 친절하나 외진곳에 있음',4,0,3,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'더준 펜션','깔끔하고 쾌적한 인테리어','제주도 민속자연사박물관이 차로 약 15분, 다양한 먹거리가 가득한 동문재래시장이 차로 약 20분.','65000','제주도 제주시 번영로 659','0507-1410-2417','연중무휴','없음',default,'thejun.jpg','thejun2.jpg','thejun3.jpg','thejun.jpg',1,'괜찮습니당',3,0,3,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'로빈앤블루','하고수동 해변까지 걸어서 단 5분','모던한 분위기의 객실을 제공하고 있으며 각 객실에는 투숙객에게 필요한 기본적인 가구와 시설이 완비되어 있습니다.','91000','제주도 우도 우도면 우도해안길 856','0507-1309-8595','연중무휴','없음',default,'robin.jpg','robin2.jpg','robin3.jpg','robin.jpg',1,'우도와 바다가 만들어준 숙소',3,0,4,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'라사니아 캐슬 리조트','편리한 숙박을 위한 모든 시설',' 섭지코지와 아쿠아플라넷 제주 등과 가깝습니다.','69000','제주도 서귀포시 성산읍 일주동로 5199','0507-1375-4665','연중무휴','없음',default,'lasania.jpg','lasania2.jpg','lasania3.jpg','lasania.jpg',1,'방음이 안됩니다..',2,0,4,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'리즈 펜션','서귀포에 자리한 숙소','공용 지역 무료 무선 인터넷 등이 완비되어 있습니다. 편안한 분위기의 객실을 제공합니다.','100000','제주도 서귀포시 남원읍 원님로 473','0507-1317-0061','연중무휴','없음',default,'leeds.jpg','leeds2.jpg','leeds3.jpg','leeds.jpg',1,'생각보다 별로입니다',2,0,4,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'도담도담 펜션','아늑한 객실 및 시설','초대형 메인 수조 등 그 규모를 자랑하는 아쿠아플라넷제주와 연풍연가 촬영지로도 유명한 섭지코지가 가깝습니다.','80000','제주도 서귀포시 성산읍 일주동로 5363-75','064-782-1544','연중무휴','없음',default,'dodam.jpg','dodam2.jpg','dodam3.jpg','dodam.jpg',1,'성산 부근 머물기 좋은 펜션',3,0,4,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'동호 펜션','모던한 분위기의 객실을 제공','제주 월드컵경기장에서 가까운 거리에 있습니다.','100000','제주도 서귀포시 동홍로239번길 43-14','064-733-7348','연중무휴','없음',default,'dongho.jpg','dongho2.jpg','dongho3.jpg','dongho.jpg',1,'가성비 괜찮아요',2,0,5,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'솔바람파도소리 펜션','바베큐 및 커피/차 메이커도 제공','무선 인터넷과 정원 및 테라스 등을 이용하실 수 있습니다.','73000','제주도 서귀포시 남원읍 태위로398번길 45','010-9048-5963','연중무휴','없음',default,'sol.jpg','sol2.jpg','sol3.jpg','sol.jpg',1,'조용합니다',2,0,5,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'클럽이에스제주 리조트','키즈 클럽, 실외 풀, 공용 지역 무료 무선 인터넷','여미지식물원, 제주 월드컵경기장에서 인접한 거리에 있습니다.','132000','제주도 서귀포시 1100로 501','064-739-3328','연중무휴','없음',default,'club.jpg','club2.jpg','club3.jpg','club.jpg',1,'다시 찾고싶은 숙소',4,0,5,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'조은하우스 서귀초 독채펜션','모던한 분위기의 객실','각 객실에는 투숙객에게 필요한 기본적인 가구와 시설이 갖춰져 있습니다.','253000','제주 서귀포시 중산간서로 253-12','0507-1482-7792','연중무휴','없음',default,'joeun.jpg','joeun2.jpg','joeun3.jpg','joeun.jpg',1,'독채라서 마음이 편합니다',4,0,5,default,default);
insert into HOTEL values(HOTEL_SEQ.nextval,'라벤더스 호텔&리조트','이국적이고 편안한 분위기','리조트에서는 투숙객들을 위해 전용 주차 공간이 마련되어 있으며 물품 보관과 바비큐 시설 대여 등의 서비스를 제공하고 있습니다.','78000','제주도 서귀포시 색달중앙로252번길 50','0507-1343-0770','연중무휴','없음',default,'lavender.jpg','lavender2.jpg','lavender3.jpg','lavender.jpg',1,'모든게 좋았습니다',5,0,5,default,default);

commit;