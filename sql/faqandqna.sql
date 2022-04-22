drop table faq;
drop table qna;
drop SEQUENCE FAQSEQ;
drop SEQUENCE QNASEQ;


create table qna (
SEQ NUMBER NOT NULL,
WRITER VARCHAR2(500),
EMAIL   VARCHAR2(500 BYTE),
SUBJECT VARCHAR2(100),
CONTENT VARCHAR2(4000),
RDATE DATE,
ORIGINNO NUMBER,
GROUPORD NUMBER,
HITS NUMBER,
WRITEREMAIL VARCHAR2(500)
);
insert into qna values (qnaseq.NEXTVAL, '이제학', 'jhlzzz@naver.com', '광고글이 정말 없나요?', '솔직한 후기들이 맞나요??', SYSDATE, 0, 0, 0, '');

insert into faq values ('관리자', '광고글이 아닌지 걱정됩니다', '걱장하지 않으셔도 됩니다, 고객님. 제주프렌즈는 회원들의 100% 솔직한 후기만 모았습니다. 감사합니다.', SYSDATE, 0, 0, faqseq.NEXTVAL);

create table faq (
WRITER VARCHAR2(15),
SUBJECT VARCHAR2(100),
CONTENT VARCHAR2(4000),
RDATE DATE,
HITS NUMBER,
TEMP2 NUMBER,
TEMP3 NUMBER,
SEQ NUMBER
);
CREATE SEQUENCE FAQSEQ
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE QNASEQ
START WITH 1
INCREMENT BY 1;