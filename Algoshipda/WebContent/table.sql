drop table Members;
drop table files;
drop table OVERSEAPLACE;
drop table KOREAPLACE;
drop table Picturelocation;
drop table BBS;
drop table INFORMATION
drop sequence KOREA_index;
drop sequence OVERSEA_index;
drop sequence similar_index;
drop table KOREAPLACE
drop sequence information_index;
drop sequence picture_index;
drop sequence KOREA_index;
drop sequence bbsId;

create table  Members(
   member_id varchar2(30) primary key,
   member_pw varchar2(30) NOT NULL,
   addr varchar2(30) NOT NULL,
   tel varchar2(30) NOT NULL
);
select * from Members;

create table BBS(
   bbsID number ,
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
create sequence picture_index
increment by 1
start with 1; 


select * from files;


create table OVERSEAPLACE(
OVERSEA_index number,
OVERSEAtitle varchar2(200) NOT NULL,
OVERSEA_addr varchar2(100) NOT NULL,
OVERSEA_text varchar2(1000) NOT NULL,
OVERSEA_URL varchar2(100),
OVERSEAIMGNAME varchar2(200),
constraint OVERSEAtitle_pk primary key(OVERSEAtitle)
);
create sequence OVERSEA_index
increment by 1
start with 1;
select * from OVERSEAPLACE;




create table KOREAPLACE(
KOREA_index number,
KOREAtitle varchar2(200) ,
KOREA_addr varchar2(100) NOT NULL,
KOREA_text varchar2(1000) NOT NULL,
KOREA_URL varchar2(100) ,
KOREA_tour varchar2(1000),
KOREAIMGNAME varchar2(200),
constraint KOREAtitle_pk primary key(KOREAtitle)
);
create sequence KOREA_index
increment by 1
start with 1; 




create table JJIM(
JJIM_title varchar2(200),
CONSTRAINT JJIM_title_fk FOREIGN KEY(JJIM_title)
REFERENCES KOREAPLACE(KOREAtitle) ON DELETE CASCADE
);




select * from OVERSEAPLACE;
select * from KOREAPLACE;



delete from KOREAPLACE where KOREA_INDEX=5;


