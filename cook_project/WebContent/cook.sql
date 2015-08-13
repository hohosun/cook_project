Create Table Cook_login(
   Idx        Number(10),
   id        VARCHAR2(50),
   pwd       VARCHAR2(50),
   name      VARCHAR2(50),
   Email     Varchar2(50),
   point     number(10),
   Regdate   Date,
  
  Constraint cook_Pk Primary Key (Id)
);

Create Table Cook_Bbs(
   Idx        Number(10) ,
   id        VARCHAR2(50),
   title       VARCHAR2(50),
   category      VARCHAR2(50),
   Image     Varchar2(50),
   contents1     Varchar2(50),
   Contents2     Varchar2(50),

  Constraint Cook_Bbs_Pk Primary Key(Id, Idx)
);

Create Table Cook_bbs_reply(
   Idx          Number(10),
   id           VARCHAR2(50),
   contents     VARCHAR2(50),
   bbs_no       VARCHAR2(50),
   Image        Varchar2(50),
   Contents1    Varchar2(50),
   
   Constraint cook_reply_Pk Primary Key(Id)
);

Alter Table Cook_Login Add Constraint Cook_Fk Foreign Key(Id) References Cook_Bbs(Id);
Alter Table Cook_Bbs Add Constraint Cook_Bbs_Fk Foreign Key(Idx) References Cook_Bbs_Reply(Idx);

alter table cook_bbs add CONSTRAINT cook_bbs_reply UNIQUE(idx); 



Alter Table Cook_Bbs Add Constraint Cook_Bbs Unique(Idx);
Alter Table cook_bbs Drop Constraint cook_bbs


Alter Table Cook_Bbs Add constraint Idx Unique Key;
 CONSTRAINT supplier_unique UNIQUE (supplier_id)
create sequence idx_seq
increment by 1
start with 1
Nocycle

Insert Into Cook Values(Idx_Seq.Nextval, 'hello' , '1111' , 'haha' , 'cook@cook.com', 0, Sysdate);

Alter Table Cook_Login Drop Constraint Cook_Pk;
Drop Table Cook_login;

Alter Table Cook_Bbs Drop Constraint Cook_Bbs_Pk;
Drop Table Cook_bbs;

Alter Table Cook_Bbs_Reply Drop Constraint Cook_Reply_Pk;
Drop Table Cook_bbs_reply;
