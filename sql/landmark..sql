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

insert into LANDMARK values(LANDMARK_SEQ.nextval, '도두해안도로','경관 특히 일몰과 야경이 아름답기로 유명한 공항 인근 해안도로','파란 제주 하늘과 그 아래로 끝없이 펼쳐진 수평선을 마주할 수 있는 용담이호해안도로. 제주공항과 가까운 곳에 있어 여행 전후로 가볍게 드라이브를 즐길 수 있는 곳이다.','0','제주시 도두일동 1734','전화번호 없음','상시 이용 가능',default,'dodu.png','dodu2.png','dodu3.png','dodu.png', 2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '한라생태숲','트래킹과 함께 자연생태계의 다양한 모습을 즐길 수 있는 516도로 인근숲, 마방목지근처','한라생태숲은 훼손되어 방치되었던 야초지를 원래의 숲으로 복원 조성한 곳으로 산림트래킹과 함께 자연생태계의 다양한 모습을 즐길 수 있다.','0','제주시 516로 2596','064-710-8688','하절기 09:00 ~ 18:00 동절기 09:00 ~ 17:00',default,'saengtae.png','saengtae2.png','saengtae3.png','saengtae.png',2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '우도','소가 누워있는 형상을 하고 있는 제주의 가장 큰 부속섬 아름다운 해변과 풍광으로 유명','우도는 소가 누워있는 모양을 닮았다고 해서 일찍부터 소섬 또는 쉐섬으로 불리웠다. 완만한 경사와 옥토, 풍부한 어장, 우도팔경 등 천혜의 자연조건을 갖춘 관광지로써 한해 약 200만 명의 관광객이 찾는 제주의 대표적인 부속섬이다.','0','제주시 우도면 연평리 904-1','064-782-5671','우도발 07:00, 08:00(30분 간격) ~ 18:30(마지막배)',default,'woodo.png','woodo2.png','woodo3.png','woodo.png',2,'GOOD',3,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '한라수목원','도심 속 자연 휴양림','제주시 연동 1100도로변에 광이오름 기슭에 위치한 한라수목원은 제주의 자생수종과 아열대 식물 등 1,100여 종의 식물이 식재 전시되어 있는 수목원으로써 학생 및 전문인을 위한 교육과 연구의 장으로 역할을 하고 있다.','0','제주시 아라1동 387','064-724-6830','09:00 ~ 17:00',default,'hanra.png','hanra2.png','hanra3.png','hanra.png', 2,'GOOD',2,0,1,default,default);

insert into LANDMARK values(LANDMARK_SEQ.nextval, '천지연 폭포','제주3대폭포중 규모나 경관면에서 으뜸인 폭포 주변에 새연교가 있어 밤에 산책하기 좋음','높이 22m, 너비 12m(물이 많을 때), 못의 깊이 20m. 조면질 안산암으로 이루어진 기암 절벽에서 세찬 옥수가 떨어지는 경승지이다.','0','서귀포시 남성중로 2-15','064-733-1528','일출시 ~ 22:00',default,'chunji.png','chunji2.png','chunji3.png','chunji.png', 2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '바이나흐튼크리스마스박물관','국내 최초 크리스마스 박물관','크리스마스에 대해 모르고 있던 재미있는 이야기들, 아기자기하고 아름다운 크리스마스 장식들, 박물관에서 만나보세요.','0','서귀포시 평화로654','010-2236-6306','10:30 ~ 17:30',default,'bye.png','bye2.png','bye3.png','bye.png',2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '공천포검은모래사장','귀여운 몽돌 방파제가 있는 해변으로 평화롭게 제주바다를 즐길 수 있는 곳','해안도로를 따라서 걷다 보면 차르르 차르르 하는 소리를 들을 수 있다. 바다로 내려가면 돌들이 바닷물에 이끌리면서 나는 소리라는 것을 알 수 있다.','0','서귀포시 남원읍 신례리 72-18','전화번호 없음','연중무휴',default,'gong.png','gong2.png','gong3.png','gong.png',2,'GOOD',3,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '넥슨컴퓨터박물관','어른과 아이 모두 즐길 수 있는 다양한 게임과 최첨단 VR기술 등을 접할 수 있는 박물관','넥슨컴퓨터박물관은 인류의 삶을 가장 빠르게 변화시킨 현재 진행형 매체인 컴퓨터와 그 발전에 기여해 온 게임의 역사를 함께 조망함으로써 우리의 미래를 상상해 볼 수 있는 체험형 박물관입니다.','0','제주시 1100로 3198-8','064-745-1994','10:00 ~ 18:00',default,'nexon.png','nexon2.png','nexon3.png','nexon.png', 2,'GOOD',2,0,1,default,default);

insert into LANDMARK values(LANDMARK_SEQ.nextval, '마방목지','한라산과 말을 배경으로 멋진 사진을 찍을 수 있는 초원지대','5.16 도로에 있는 제주마방목지는 1986년 이후 천연기념물 347호로 지정 보호되고 있는 제주 혈통 조랑말들을 볼 수 있다.','0','제주시 용강동 산14-34','064-710-2298','상시 이용 가능',default,'mabang.png','mabang2.png','mabang3.png','mabang.png', 2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '수월봉','차귀도로 떨어지는 일몰을 감상할 수 있는 명소 해안선을 따라 독특한 화산지형이 있는 곳','제주특별자치도 제주시 한경면 고산리에 있는 산. 높이 77m. 제주시 남서쪽, 모슬포 북서쪽에 위치하며 사화산으로 동쪽에는 300ha가 넘는 평야지대가 있다.','0','제주시 한경면 고산리 3760','064-772-3334','연중무휴',default,'soowall.png','soowall2.png','soowall3.png','soowall.png',2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '애월해안도로','낮에는 에메랄드 해변, 밤에는 멋진 일몰을 볼 수 있는 해안도로','북서부의 해안선을 따라서 이어진 애월해안도로는 빼어난 제주의 바다 풍경을 감상할 수 있는 약 9km의 드라이브 코스이다.','0','제주시 애월읍 신엄리 2719-3','전화번호 없음','연중무휴',default,'aewol.png','aewol2.png','aewol3.png','aewol.png',2,'GOOD',3,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '헬로키티아일랜드','국내 최초!최대! 헬로키티 상설 전시','전 세계 많은 사람들에게 사랑받는 글로벌 캐릭터 헬로키티!즐겁고 행복한 이야기들이 가득한 이 곳, Hello Kitty Island에 여러분을 초대합니다.','14000','서귀포시 안덕면 한창로 340','064-792-6114','09:00 ~ 18:00',default,'hello.png','hello2.png','hello3.png','hello.png', 2,'GOOD',2,0,1,default,default);

insert into LANDMARK values(LANDMARK_SEQ.nextval, '곽지해수욕장','한담해변과 연결된 에메랄드 빛 예쁜 바다 수심이 낮아 아이들이 놀기 좋은 곳','제주특별자치도 제주시 애월읍 곽지리에 있는 해수욕장으로, 길이 약 350m, 폭 70m의 백사장과 평균 수심 1.5m의 비교적 좋은 조건을 갖추었다.','0','제주시 애월읍 곽지리 1565','064-728-3394','상시 이용 가능',default,'gwakji.png','gwakji2.png','gwakji3.png','gwakji.png', 2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '노형수퍼마켙','어반판타지 더 포가든 도어','과거엔 지구와 같은 듯 다른 모습의 두 번째 지구를 연결하는 문이 있었어요.','15000','제주시 노형로 89','064-713-1888','09:30 ~ 19:00',default,'nohyung.png','nohyung2.png','nohyung3.png','nohyung.png',2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '알작지해변','이국적인 분위기의 제주 유일의 몽돌해변 바닷물과 몽돌이 내는 경쾌한 소리가 매력적임','제주시 내도동에 있는 알작지 해변은 평범한 모래사장으로 이루어진 해변과는 다르게 동글동글한 돌들로 이루어진 해변이다.','0','제주시 내도동 475','전화번호 없음','상시 이용 가능',default,'aljak.png','aljak2.png','aljak3.png','aljak.png',2,'GOOD',3,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '관음사','휴식, 명상하기 좋은 제주의 대표 사찰로 한라산 탐방로로도 유명함','대한불교조계종 제23교구 본산으로서 제주도의 30여 개 말사를 관장한다.','0','제주시 아라1동 387','064-724-6830','입산시간 05:00 ~ 13:00',default,'gwaneum.png','gwaneum2.png','gwaneum3.png','gwaneum.png', 2,'GOOD',2,0,1,default,default);

insert into LANDMARK values(LANDMARK_SEQ.nextval, '사라봉공원','제주시민들의 일몰 명소','사라봉은 제주 서부두 동쪽 끝에 보이는 봉우리로 영주십경중 하나인 사봉낙조를 볼 수 있다.','0','제주시 사라봉동길 74','064-728-4643','상시 이용 가능',default,'sarabong.png','sarabong2.png','sarabong3.png','sarabong.png', 2,'GOOD',4,0,1,default,default);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '관덕정','제주의 상징','조선 시대의 관야 건물의 하나로 이름의 유래는 예기 사예편에 나오는 "활쏘기란 그의 높은 덕을 살펴보는 것"이라는 구절에서 유래했다.','0','제주시 관덕로 19','064-710-6711','상시 이용 가능',default,'gwanduk.png','gwanduk2.png','gwanduk3.png','gwanduk.png',2,'GOOD',4,0,1,default,default);



commit;
