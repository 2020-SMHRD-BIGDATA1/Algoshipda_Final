drop table Members;
drop table files;

create table  Members(
	member_id varchar2(30) primary key,	
	member_pw varchar2(30) NOT NULL,	
	addr varchar2(30) NOT NULL,
	tel varchar2(30) NOT NULL	
);
select * from Members;


drop table BBS;

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
fileName varchar(200),
fileRealName varchar(200),
filetime date 
);
select * from files;


DELETE FROM BBS WHERE bbsTitle = '���� ������';
select bbsImg from bbs;


create sequence picture_index
increment by 1
start with 1;

drop sequence picture_index;

create table Picturelocation(
picture_index number,
Picturewhere varchar(200),
fileName varchar(200)
);

create table SimilarPicture(
picture_index number,
Picturewhere varchar(200),
fileName varchar(200)
);

insert into similarPicture values(similar_index.nextVal, '������ �̼���','testValue.jpg')

create sequence similar_index start with 1 increment by 1;

select * from SimilarPicture;
