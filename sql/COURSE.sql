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


insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스1', '테스트 코스 입니다.', '#테스트 #확인용1', 0, '80000', 0, 0, 1, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '도두해안도로', 1, 1, 1);
insert into COURSE_FOOD values(CL_SEQ.nextval, '하루방보쌈', 1, 2, 1);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '우도', 1, 3, 1);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '한라수목원', 1, 4, 1);
insert into COURSE_FOOD values(CL_SEQ.nextval, '돌하르방밀면', 2, 1, 1);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '한라생태숲', 2, 2, 1);
insert into COURSE_FOOD values(CL_SEQ.nextval, '백년귤화다', 2, 3, 1);


insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스2', '테스트 코스 입니다.', '#테스트 #확인용2', 0, '80000', 0, 0, 1, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '도두해안도로', 1, 1, 2);
insert into COURSE_FOOD values(CL_SEQ.nextval, '하루방보쌈', 1, 2, 2);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '우도', 1, 3, 2);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '한라수목원', 1, 4, 2);
insert into COURSE_FOOD values(CL_SEQ.nextval, '돌하르방밀면', 2, 1, 2);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '한라생태숲', 2, 2, 2);
insert into COURSE_FOOD values(CL_SEQ.nextval, '백년귤화다', 2, 3, 2);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '올곧제주', 2, 4, 2);


insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스3', '테스트 코스 입니다.', '#테스트 #확인용3', 0, '80000', 0, 0, 1, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '도두해안도로', 1, 1, 3);
insert into COURSE_FOOD values(CL_SEQ.nextval, '하루방보쌈', 1, 2, 3);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '우도', 1, 3, 3);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '한라수목원', 1, 4, 3);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '폴부엌이층집', 2, 4, 3);
insert into COURSE_FOOD values(CL_SEQ.nextval, '돌하르방밀면', 2, 1, 3);
insert into COURSE_LANDMARK values(CL_SEQ.nextval, '한라생태숲', 2, 2, 3);
insert into COURSE_FOOD values(CL_SEQ.nextval, '백년귤화다', 2, 3, 3);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '올곧제주', 2, 4, 3);


insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스4', '테스트 코스 입니다.', '#테스트 #확인용4', 0, '80000', 0, 0, 2, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '청초밭', 1, 1, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '서귀포유람선', 1, 2, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '목장카페드르쿰다', 1, 3, 4);
insert into COURSE_FOOD values(CL_SEQ.nextval, '형제갈비', 1, 4, 4);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '폴부엌이층집', 2, 4, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '쇠소각', 2, 1, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '크라이 오유', 2, 2, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '백년귤화다', 2, 3, 4);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '올곧제주', 2, 4, 4);
insert into COURSE_FOOD values(CL_SEQ.nextval, '쿤도', 1, 5, 4);



insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스5', '테스트 코스 입니다.', '#테스트 #확인용5', 0, '80000', 0, 0, 2, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '청초밭', 1, 1, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '서귀포유람선', 1, 2, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '목장카페드르쿰다', 1, 3, 4);
insert into COURSE_FOOD values(CL_SEQ.nextval, '형제갈비', 1, 4, 4);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '폴부엌이층집', 2, 4, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '쇠소각', 2, 1, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '크라이 오유', 2, 2, 4);
insert into COURSE_ACTIVITY values(CL_SEQ.nextval, '백년귤화다', 2, 3, 4);
insert into COURSE_HOTEL values(CL_SEQ.nextval, '올곧제주', 2, 4, 4);
insert into COURSE_FOOD values(CL_SEQ.nextval, '쿤도', 1, 5, 4);


insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스6', '테스트 코스 입니다.', '#테스트 #확인용6', 0, '80000', 0, 0, 2, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스7', '테스트 코스 입니다.', '#테스트 #확인용7', 0, '80000', 0, 0, 3, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스8', '테스트 코스 입니다.', '#테스트 #확인용8', 0, '80000', 0, 0, 3, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스9', '테스트 코스 입니다.', '#테스트 #확인용9', 0, '80000', 0, 0, 3, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스10', '테스트 코스 입니다.', '#테스트 #확인용10', 0, '80000', 0, 0, 4, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스11', '테스트 코스 입니다.', '#테스트 #확인용11', 0, '80000', 0, 0, 4, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스12', '테스트 코스 입니다.', '#테스트 #확인용12', 0, '80000', 0, 0, 4, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스13', '테스트 코스 입니다.', '#테스트 #확인용13', 0, '80000', 0, 0, 5, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스14', '테스트 코스 입니다.', '#테스트 #확인용14', 0, '80000', 0, 0, 5, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스15', '테스트 코스 입니다.', '#테스트 #확인용15', 0, '80000', 0, 0, 5, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스16', '테스트 코스 입니다.', '#테스트 #확인용16', 0, '80000', 0, 0, 6, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스17', '테스트 코스 입니다.', '#테스트 #확인용17', 0, '80000', 0, 0, 6, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스18', '테스트 코스 입니다.', '#테스트 #확인용18', 0, '80000', 0, 0, 6, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스19', '테스트 코스 입니다.', '#테스트 #확인용19', 0, '80000', 0, 0, 1, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스20', '테스트 코스 입니다.', '#테스트 #확인용20', 0, '80000', 0, 0, 2, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스21', '테스트 코스 입니다.', '#테스트 #확인용21', 0, '80000', 0, 0, 3, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스22', '테스트 코스 입니다.', '#테스트 #확인용22', 0, '80000', 0, 0, 4, SYSDATE+1, SYSDATE+2, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, '괸리자', '코스23', '테스트 코스 입니다.', '#테스트 #확인용23', 0, '80000', 0, 0, 5, SYSDATE+1, SYSDATE+2, SYSDATE);



