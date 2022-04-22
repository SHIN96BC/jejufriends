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
insert into qna values (qnaseq.NEXTVAL, '������', 'jhlzzz@naver.com', '������� ���� ������?', '������ �ı���� �³���??', SYSDATE, 0, 0, 0, '');

insert into faq values ('������', '������� �ƴ��� �����˴ϴ�', '�������� �����ŵ� �˴ϴ�, ����. ����������� ȸ������ 100% ������ �ı⸸ ��ҽ��ϴ�. �����մϴ�.', SYSDATE, 0, 0, faqseq.NEXTVAL);

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