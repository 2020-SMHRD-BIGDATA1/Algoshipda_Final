drop table Members;
drop table files;
drop table SimilarPicture;
drop table information;
drop table Picturelocation;
drop table BBS;
drop table INFORMATION
drop sequence information_index;
drop sequence picture_index;
drop sequence similar_index;
drop sequence bbsId;

create table  Members(
	member_id varchar2(30) primary key,
	member_pw varchar2(30) NOT NULL,
	addr varchar2(30) NOT NULL,
	tel varchar2(30) NOT NULL
);
select * from Members;

create table BBS(
	bbsID number NOT NULL,
	bbsTitle varchar2(80) NOT NULL,
	bbsContent varchar2(1000) NOT NULL,
	bbsDate date,
	bbsHit number,
	member_id varchar2(20),
	bbsImg varchar2(100),
	constraint bbsid_pk primary key(bbsID),
	CONSTRAINT bbsmember_id_fk FOREIGN KEY(member_id)
    REFERENCES Members(member_id) ON DELETE CASCADE
);

CREATE SEQUENCE bbsId 
START WITH 1 
INCREMENT BY 1;

select * from BBS;

create table files(
picture_index number,
fileName varchar2(200) NOT NULL,
filetime date ,
predictlocation varchar2(50)
);
select * from files;


create table OVERSEAPLACE(
OVERSEA_index number,
OVERSEAtitle varchar2(200) NOT NULL,
OVERSEA_addr varchar2(100) NOT NULL,
OVERSEA_text varchar2(1000) NOT NULL,
OVERSEA_URL varchar2(100),
OVERSEAIMGNAME varchar2(200),
constraint OVERSEA_index_pk primary key(OVERSEA_index)
);
create sequence OVERSEA_index
increment by 1
start with 1;

create table KOREAPLACE(
KOREA_index number,
KOREAtitle varchar2(200) NOT NULL,
KOREA_addr varchar2(100) NOT NULL,
KOREA_text varchar2(1000) NOT NULL,
KOREA_URL varchar2(100) ,
KOREA_tour varchar2(100),
KOREAIMGNAME varchar2(200),
constraint KOREA_index_pk primary key(KOREA_index)
);
create sequence KOREA_index
increment by 1
start with 1; 

create table JJIM(
JJIM_Index number,
CONSTRAINT JJIM_Index_fk FOREIGN KEY(JJIM_Index)
REFERENCES KOREAPLACE(KOREA_index) ON DELETE CASCADE
);



insert into KOREAPLACE values(KOREA_index.nextVal, '���򿡵����̽�','��⵵ ���� ���Ǹ� �ٶ���� 226-57','�������� ���� ���� ������ ������ ����� �� �׸���ũ �������̽��� ���������� ���� ���� �Ƹ��ٿ� ���� ����, �����ϰ� ģ���� ������� �̼Ҹ� ��⵵ ������ �Ƹ��ٿ� �ڿ�ȯ�� �ӿ��� ������ǳ�� ���๰�� �پ��� �׸������� ���� �����Ͽ����ϴ�.',
'http://www.swissthemepark.com/','���ͷ�Ƽ�� ��Ʈ������, ���̵尡�� �����, ����������Ʈ ��ȭ��','testValue4.jpg');


