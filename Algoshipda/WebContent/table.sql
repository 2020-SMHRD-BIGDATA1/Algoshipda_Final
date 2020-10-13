drop table Members;


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
	constraint bbsid_pk primary key(bbsID)
);

select * from BBS;



create table files(
fileName varchar(200),
filereal varchar(200)

);
select * from files;
