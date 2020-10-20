drop table Members;
drop table files;
drop table SimilarPicture;
drop table information;
drop table Picturelocation
drop table BBS;

create table  Members(
	member_id varchar2(30) primary key,	
	member_pw varchar2(30) NOT NULL,	
	addr varchar2(30) NOT NULL,
	tel varchar2(30) NOT NULL	
);
select * from Members;




create table BBS(
	bbsID number,
	bbsTitle varchar2(80),
	bbsContent varchar2(1000),
	bbsDate date,
	bbsHit number,
	member_id varchar2(20),
	bbsImg varchar2(100),
	constraint bbsid_pk primary key(bbsID)
);

CREATE SEQUENCE bbsId START WITH 1 INCREMENT BY 1;

select * from BBS;


create table files(
picture_index number,
fileName varchar2(200),
filetime date ,
predictlocation varchar2(50)
);
select * from files;


DELETE FROM BBS WHERE bbsTitle = '나는 문요한';
select bbsImg from bbs;


create sequence picture_index
increment by 1
start with 1;

drop sequence picture_index;

drop sequence similar_index;

create table Picturelocation(
picture_index number,
picturetitle varchar2(200),
picture_addr varchar2(100),
picture_text varchar2(1000),
picture_web varchar2(100),
imageName varchar2(200)
);
create table SimilarPicture(
picture_index number,
picturetitle varchar2(200),
picture_addr varchar2(100),
picture_text varchar2(1000),
picture_web varchar2(100),
imageName varchar2(200)
);

insert into similarPicture values(similar_index.nextVal, '산토리니','그리스야','이곳은 그리스의 대표관광지야',
'www.snato.com','testValue3.jpg');

create sequence similar_index start with 1 increment by 1;

select * from SimilarPicture;
select * from Picturelocation;


create table information(
information_index number,
infor_title varchar(100),
infor_addr varchar(100)
);
create sequence information_index start with 1 increment by 1;
insert into information values(information_index.nextVal,'한국의 산토리니','이곳의 위치는 가평 산토리니 펜션입니다.')

select * from information;
