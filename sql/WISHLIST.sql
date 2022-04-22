drop table WISHLIST;
drop sequence WISHLIST_SEQ;

create table WISHLIST(
	WINUM number constraint WISHLIST_PK primary key,
	CNUM number,
	EMAIL varchar2(120),
	CNAME nvarchar2(50),
	CINTRO nvarchar2(300),
	constraint WI_CNUM_FK foreign key(CNUM) references COURSE(CNUM) on delete cascade,
	constraint WI_EMAIL_FK foreign key(EMAIL) references MEMBER(EMAIL) on delete cascade
);
create sequence WISHLIST_SEQ increment by 1 start with 1 nocache;