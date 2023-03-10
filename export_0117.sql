--------------------------------------------------------
--  파일이 생성됨 - 화요일-1월-17-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_EVENT_REPLY
--------------------------------------------------------

   CREATE SEQUENCE  "MKROOM"."SEQ_EVENT_REPLY";
--------------------------------------------------------
--  DDL for Sequence SEQ_QNA_REPLY
--------------------------------------------------------

   CREATE SEQUENCE  "MKROOM"."SEQ_QNA_REPLY";
--------------------------------------------------------
--  DDL for Sequence SEQ_QUESTBOOKINGDATA
--------------------------------------------------------

   CREATE SEQUENCE  "MKROOM"."SEQ_QUESTBOOKINGDATA";
--------------------------------------------------------
--  DDL for Sequence SEQ_REVIEW
--------------------------------------------------------

   CREATE SEQUENCE  "MKROOM"."SEQ_REVIEW";
--------------------------------------------------------
--  DDL for Table FAQ
--------------------------------------------------------

  CREATE TABLE "MKROOM"."FAQ" 
   (	"BNO" NUMBER(10,0), 
	"BTITLE" VARCHAR2(200 BYTE), 
	"BCONTENT" VARCHAR2(4000 BYTE), 
	"BREGDATE" DATE DEFAULT sysdate, 
	"BDELFLAG" NUMBER(1,0) DEFAULT 0
   );
--------------------------------------------------------
--  DDL for Table FILEINFO
--------------------------------------------------------

  CREATE TABLE "MKROOM"."FILEINFO" 
   (	"UUID" VARCHAR2(100 BYTE), 
	"UPLOADPATH" VARCHAR2(250 BYTE), 
	"FILENAME" VARCHAR2(100 BYTE), 
	"FILETYPE" CHAR(1 BYTE)
   );
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MKROOM"."MEMBER" 
   (	"USERID" VARCHAR2(50 BYTE), 
	"USERPW" VARCHAR2(100 BYTE), 
	"USERNAME" VARCHAR2(100 BYTE), 
	"PHONENUMBER" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"REGDATE" TIMESTAMP (0) DEFAULT systimestamp(0), 
	"MODDATE" TIMESTAMP (0) DEFAULT systimestamp(0), 
	"DISCOUNTCOUPON" NUMBER(10,0), 
	"QUESTPOINT" NUMBER(10,0), 
	"BRANCHLOCATION" VARCHAR2(200 BYTE) DEFAULT (null), 
	"ENABLED" CHAR(1 BYTE) DEFAULT '1'
   );
--------------------------------------------------------
--  DDL for Table MEMBER_AUTHORITIES
--------------------------------------------------------

  CREATE TABLE "MKROOM"."MEMBER_AUTHORITIES" 
   (	"USERID" VARCHAR2(50 BYTE), 
	"AUTHORITY" VARCHAR2(50 BYTE)
   );
--------------------------------------------------------
--  DDL for Table NOTICE_EVENT
--------------------------------------------------------

  CREATE TABLE "MKROOM"."NOTICE_EVENT" 
   (	"BNO" NUMBER(10,0), 
	"BTITLE" VARCHAR2(200 BYTE), 
	"BCONTENT" VARCHAR2(4000 BYTE), 
	"BWRITER" VARCHAR2(100 BYTE), 
	"BREGDATE" DATE DEFAULT sysdate, 
	"BMODDATE" TIMESTAMP (0) DEFAULT systimestamp(0), 
	"BVIEWCNT" NUMBER(20,0) DEFAULT 0, 
	"BREPLYCNT" NUMBER(20,0) DEFAULT 0, 
	"BDELFLAG" NUMBER(1,0) DEFAULT 0
   );
--------------------------------------------------------
--  DDL for Table NOTICE_EVENT_ATTACH
--------------------------------------------------------

  CREATE TABLE "MKROOM"."NOTICE_EVENT_ATTACH" 
   (	"UUID" VARCHAR2(100 BYTE), 
	"BNO" NUMBER(10,0)
   );
--------------------------------------------------------
--  DDL for Table NOTICE_EVENT_REPLY
--------------------------------------------------------

  CREATE TABLE "MKROOM"."NOTICE_EVENT_REPLY" 
   (	"RNO" NUMBER(10,0), 
	"BNO" NUMBER(10,0), 
	"RCONTENT" VARCHAR2(4000 BYTE), 
	"RWRITER" VARCHAR2(100 BYTE), 
	"RREGDATE" DATE DEFAULT sysdate, 
	"RMODDATE" TIMESTAMP (0) DEFAULT systimestamp(0), 
	"PRNO" NUMBER(10,0)
   );
--------------------------------------------------------
--  DDL for Table PAYMENTDATA
--------------------------------------------------------

  CREATE TABLE "MKROOM"."PAYMENTDATA" 
   (	"IMPUID" VARCHAR2(100 BYTE), 
	"MERCHANTUID" VARCHAR2(100 BYTE), 
	"PRODUCTNAME" VARCHAR2(100 BYTE), 
	"BRANCHLOCATION" VARCHAR2(200 BYTE), 
	"AMOUNT" NUMBER(10,0), 
	"PAIDAT" DATE, 
	"BUYERID" VARCHAR2(50 BYTE), 
	"SELECTTIME" DATE
   );
--------------------------------------------------------
--  DDL for Table PERSISTENT_LOGINS
--------------------------------------------------------

  CREATE TABLE "MKROOM"."PERSISTENT_LOGINS" 
   (	"USERNAME" VARCHAR2(64 BYTE), 
	"SERIES" VARCHAR2(64 BYTE), 
	"TOKEN" VARCHAR2(64 BYTE), 
	"LAST_USED" TIMESTAMP (0)
   );
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "MKROOM"."QNA" 
   (	"BNO" NUMBER(10,0), 
	"BTITLE" VARCHAR2(200 BYTE), 
	"BCONTENT" VARCHAR2(4000 BYTE), 
	"BWRITER" VARCHAR2(100 BYTE), 
	"BREGDATE" DATE DEFAULT sysdate, 
	"BVIEWCNT" NUMBER(20,0) DEFAULT 0, 
	"BREPLYCNT" NUMBER(20,0) DEFAULT 0, 
	"BDELFLAG" NUMBER(1,0) DEFAULT 0, 
	"REPLYORNOT" NUMBER(1,0) DEFAULT 0
   );
--------------------------------------------------------
--  DDL for Table QNA_ATTACH
--------------------------------------------------------

  CREATE TABLE "MKROOM"."QNA_ATTACH" 
   (	"UUID" VARCHAR2(100 BYTE), 
	"BNO" NUMBER(10,0)
   );
--------------------------------------------------------
--  DDL for Table QNA_REPLY
--------------------------------------------------------

  CREATE TABLE "MKROOM"."QNA_REPLY" 
   (	"RNO" NUMBER(10,0), 
	"BNO" NUMBER(10,0), 
	"RCONTENT" VARCHAR2(4000 BYTE), 
	"RWRITER" VARCHAR2(100 BYTE), 
	"RREGDATE" DATE DEFAULT sysdate, 
	"RMODDATE" TIMESTAMP (0) DEFAULT systimestamp(0), 
	"PRNO" NUMBER(20,0)
   );
--------------------------------------------------------
--  DDL for Table QUEST
--------------------------------------------------------

  CREATE TABLE "MKROOM"."QUEST" 
   (	"QUESTNAME" VARCHAR2(100 BYTE), 
	"BRANCHLOCATION" VARCHAR2(200 BYTE), 
	"GENRE" VARCHAR2(20 BYTE), 
	"DIFFICULTY" NUMBER(2,0), 
	"QUESTTIME" NUMBER(3,0), 
	"MINPLAYERNUM" NUMBER(2,0), 
	"MAXPLAYERNUM" NUMBER(2,0), 
	"DETAILCOMMENT" VARCHAR2(4000 BYTE), 
	"DELFLAG" NUMBER(1,0) DEFAULT 0
   );
--------------------------------------------------------
--  DDL for Table QUESTBOOKINGDATA
--------------------------------------------------------

  CREATE TABLE "MKROOM"."QUESTBOOKINGDATA" 
   (	"BOOKINGNUM" NUMBER(10,0), 
	"QUESTNAME" VARCHAR2(100 BYTE), 
	"BRANCHLOCATION" VARCHAR2(200 BYTE), 
	"SELECTTIME" DATE, 
	"TEAMMEMBER" VARCHAR2(1000 BYTE), 
	"USERID" VARCHAR2(50 BYTE), 
	"IMPUID" VARCHAR2(100 BYTE)
   );
--------------------------------------------------------
--  DDL for Table QUEST_ATTACH
--------------------------------------------------------

  CREATE TABLE "MKROOM"."QUEST_ATTACH" 
   (	"UUID" VARCHAR2(100 BYTE), 
	"QUESTNAME" VARCHAR2(100 BYTE), 
	"BRANCHLOCATION" VARCHAR2(200 BYTE)
   );
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "MKROOM"."REVIEW" 
   (	"RNO" NUMBER(10,0), 
	"QUESTNAME" VARCHAR2(100 BYTE), 
	"BRANCHLOCATION" VARCHAR2(200 BYTE), 
	"RATINGSTAR" NUMBER(2,0), 
	"RCONTENT" VARCHAR2(1000 BYTE), 
	"RWRITER" VARCHAR2(100 BYTE), 
	"RREGDATE" DATE DEFAULT sysdate, 
	"RMODDATE" TIMESTAMP (6) DEFAULT systimestamp(0), 
	"DELFLAG" NUMBER(1,0) DEFAULT 0
   );
--------------------------------------------------------
--  DDL for Index PK_FAQ_MKROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_FAQ_MKROOM" ON "MKROOM"."FAQ" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_FILEINFO_MKROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_FILEINFO_MKROOM" ON "MKROOM"."FILEINFO" ("UUID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_MEMBER" ON "MKROOM"."MEMBER" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER_AUTHORITIES
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_MEMBER_AUTHORITIES" ON "MKROOM"."MEMBER_AUTHORITIES" ("USERID", "AUTHORITY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_NOTICE_EVENT_ATTACH_MKROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_NOTICE_EVENT_ATTACH_MKROOM" ON "MKROOM"."NOTICE_EVENT_ATTACH" ("BNO", "UUID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_NOTICE_EVENT_MKROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_NOTICE_EVENT_MKROOM" ON "MKROOM"."NOTICE_EVENT" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_NOTICE_EVENT_REPLY_MKROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_NOTICE_EVENT_REPLY_MKROOM" ON "MKROOM"."NOTICE_EVENT_REPLY" ("BNO", "RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PAYMENTDATA_IMPUID
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_PAYMENTDATA_IMPUID" ON "MKROOM"."PAYMENTDATA" ("IMPUID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PERSISTENT_LOGINS
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_PERSISTENT_LOGINS" ON "MKROOM"."PERSISTENT_LOGINS" ("SERIES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_QBOOKINGDATA_MKROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_QBOOKINGDATA_MKROOM" ON "MKROOM"."QUESTBOOKINGDATA" ("BOOKINGNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_QNA_ATTAC_MKROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_QNA_ATTAC_MKROOM" ON "MKROOM"."QNA_ATTACH" ("BNO", "UUID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_QNA_MKROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_QNA_MKROOM" ON "MKROOM"."QNA" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_QNA_REPLY_MKROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_QNA_REPLY_MKROOM" ON "MKROOM"."QNA_REPLY" ("BNO", "RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_QUEST_ATTACH_MKROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_QUEST_ATTACH_MKROOM" ON "MKROOM"."QUEST_ATTACH" ("UUID", "QUESTNAME", "BRANCHLOCATION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_QUEST_MKROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_QUEST_MKROOM" ON "MKROOM"."QUEST" ("QUESTNAME", "BRANCHLOCATION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_REVIEW_MKROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MKROOM"."PK_REVIEW_MKROOM" ON "MKROOM"."REVIEW" ("RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "MKROOM"."REVIEW" MODIFY ("RATINGSTAR" CONSTRAINT "NN_RATINGSTAR_MKREVIEW" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."REVIEW" MODIFY ("RCONTENT" CONSTRAINT "NN_RCONTENT_MKREVIEW" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."REVIEW" MODIFY ("RWRITER" CONSTRAINT "NN_RWRITER_MKREVIEW" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."REVIEW" ADD CONSTRAINT "PK_REVIEW_MKROOM" PRIMARY KEY ("RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA_ATTACH
--------------------------------------------------------

  ALTER TABLE "MKROOM"."QNA_ATTACH" MODIFY ("BNO" CONSTRAINT "NN_BNO_MKQNA_ATTACH" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."QNA_ATTACH" ADD CONSTRAINT "PK_QNA_ATTAC_MKROOM" PRIMARY KEY ("BNO", "UUID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QUEST
--------------------------------------------------------

  ALTER TABLE "MKROOM"."QUEST" ADD CONSTRAINT "PK_QUEST_MKROOM" PRIMARY KEY ("QUESTNAME", "BRANCHLOCATION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAYMENTDATA
--------------------------------------------------------

  ALTER TABLE "MKROOM"."PAYMENTDATA" MODIFY ("IMPUID" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."PAYMENTDATA" MODIFY ("MERCHANTUID" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."PAYMENTDATA" MODIFY ("PRODUCTNAME" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."PAYMENTDATA" MODIFY ("BRANCHLOCATION" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."PAYMENTDATA" MODIFY ("AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."PAYMENTDATA" MODIFY ("PAIDAT" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."PAYMENTDATA" ADD CONSTRAINT "PK_PAYMENTDATA_IMPUID" PRIMARY KEY ("IMPUID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QUESTBOOKINGDATA
--------------------------------------------------------

  ALTER TABLE "MKROOM"."QUESTBOOKINGDATA" MODIFY ("QUESTNAME" CONSTRAINT "NN_QUESTNAME_MKBOOKINGDATA" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."QUESTBOOKINGDATA" MODIFY ("BRANCHLOCATION" CONSTRAINT "NN_BRANCHLOC_MKBOOKINGDATA" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."QUESTBOOKINGDATA" MODIFY ("SELECTTIME" CONSTRAINT "NN_SELECTTIME_MKBOOKINGDATA" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."QUESTBOOKINGDATA" ADD CONSTRAINT "PK_QBOOKINGDATA_MKROOM" PRIMARY KEY ("BOOKINGNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE_EVENT
--------------------------------------------------------

  ALTER TABLE "MKROOM"."NOTICE_EVENT" MODIFY ("BTITLE" CONSTRAINT "NN_BTITLE_MKNOTICE" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."NOTICE_EVENT" MODIFY ("BCONTENT" CONSTRAINT "NN_BCONTENT_MKNOTICE" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."NOTICE_EVENT" MODIFY ("BWRITER" CONSTRAINT "NN_BWRITER_MKNOTICE" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."NOTICE_EVENT" ADD CONSTRAINT "PK_NOTICE_EVENT_MKROOM" PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "MKROOM"."QNA" MODIFY ("BTITLE" CONSTRAINT "NN_BTITLE_MKQNA" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."QNA" MODIFY ("BCONTENT" CONSTRAINT "NN_BCONTENT_MKQNA" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."QNA" MODIFY ("BWRITER" CONSTRAINT "NN_BWRITER_MKQNA" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."QNA" ADD CONSTRAINT "PK_QNA_MKROOM" PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MKROOM"."MEMBER" MODIFY ("USERPW" CONSTRAINT "NN_USERPW_MKMEMBER" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."MEMBER" MODIFY ("USERNAME" CONSTRAINT "NN_USERNAME_MKMEMBER" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."MEMBER" MODIFY ("PHONENUMBER" CONSTRAINT "NN_PHONENUMBER_MKMEMBER" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("USERID")
  USING INDEX "MKROOM"."PK_MEMBER"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QUEST_ATTACH
--------------------------------------------------------

  ALTER TABLE "MKROOM"."QUEST_ATTACH" ADD CONSTRAINT "PK_QUEST_ATTACH_MKROOM" PRIMARY KEY ("UUID", "QUESTNAME", "BRANCHLOCATION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FILEINFO
--------------------------------------------------------

  ALTER TABLE "MKROOM"."FILEINFO" MODIFY ("UPLOADPATH" CONSTRAINT "NN_UPLOADPATH_MKFILEINFO" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."FILEINFO" MODIFY ("FILENAME" CONSTRAINT "NN_FILENAME_MKFILEINFO" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."FILEINFO" MODIFY ("FILETYPE" CONSTRAINT "NN_FILETYPE_MKFILEINFO" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."FILEINFO" ADD CONSTRAINT "PK_FILEINFO_MKROOM" PRIMARY KEY ("UUID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE_EVENT_REPLY
--------------------------------------------------------

  ALTER TABLE "MKROOM"."NOTICE_EVENT_REPLY" MODIFY ("RCONTENT" CONSTRAINT "NN_RCONTENT_MKNOTICE_REPLY" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."NOTICE_EVENT_REPLY" MODIFY ("RWRITER" CONSTRAINT "NN_RWRITER_MKNOTICE_REPLY" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."NOTICE_EVENT_REPLY" ADD CONSTRAINT "PK_NOTICE_EVENT_REPLY_MKROOM" PRIMARY KEY ("BNO", "RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA_REPLY
--------------------------------------------------------

  ALTER TABLE "MKROOM"."QNA_REPLY" MODIFY ("BNO" CONSTRAINT "NN_BNO_MKQNA_REPLY" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."QNA_REPLY" MODIFY ("RCONTENT" CONSTRAINT "NN_RCONTENT_MKQNA_REPLY" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."QNA_REPLY" MODIFY ("RWRITER" CONSTRAINT "NN_RWRITER_MKQNA_REPLY" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."QNA_REPLY" ADD CONSTRAINT "PK_QNA_REPLY_MKROOM" PRIMARY KEY ("BNO", "RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FAQ
--------------------------------------------------------

  ALTER TABLE "MKROOM"."FAQ" MODIFY ("BTITLE" CONSTRAINT "NN_BTITLE_MKFAQ" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."FAQ" MODIFY ("BCONTENT" CONSTRAINT "NN_BCONTENT_MKFAQ" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."FAQ" ADD CONSTRAINT "PK_FAQ_MKROOM" PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSISTENT_LOGINS
--------------------------------------------------------

  ALTER TABLE "MKROOM"."PERSISTENT_LOGINS" MODIFY ("USERNAME" CONSTRAINT "NN_USERNAME_MKPER_LOGINS" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."PERSISTENT_LOGINS" MODIFY ("TOKEN" CONSTRAINT "NN_TOKEN_MKPER_LOGINS" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."PERSISTENT_LOGINS" MODIFY ("LAST_USED" CONSTRAINT "NN_LAST_USED_MKPER_LOGINS" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."PERSISTENT_LOGINS" ADD CONSTRAINT "PK_PERSISTENT_LOGINS" PRIMARY KEY ("SERIES")
  USING INDEX "MKROOM"."PK_PERSISTENT_LOGINS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE_EVENT_ATTACH
--------------------------------------------------------

  ALTER TABLE "MKROOM"."NOTICE_EVENT_ATTACH" MODIFY ("BNO" CONSTRAINT "NN_BNO_MKNOTICE_ATTACH" NOT NULL ENABLE);
  ALTER TABLE "MKROOM"."NOTICE_EVENT_ATTACH" ADD CONSTRAINT "PK_NOTICE_EVENT_ATTACH_MKROOM" PRIMARY KEY ("BNO", "UUID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER_AUTHORITIES
--------------------------------------------------------

  ALTER TABLE "MKROOM"."MEMBER_AUTHORITIES" ADD CONSTRAINT "PK_MEMBER_AUTHORITIES" PRIMARY KEY ("USERID", "AUTHORITY")
  USING INDEX "MKROOM"."PK_MEMBER_AUTHORITIES"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEMBER_AUTHORITIES
--------------------------------------------------------

  ALTER TABLE "MKROOM"."MEMBER_AUTHORITIES" ADD CONSTRAINT "FK_USERID_ATTACHFILES" FOREIGN KEY ("USERID")
	  REFERENCES "MKROOM"."MEMBER" ("USERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTICE_EVENT_ATTACH
--------------------------------------------------------

  ALTER TABLE "MKROOM"."NOTICE_EVENT_ATTACH" ADD CONSTRAINT "FK_BNO_NOTICE_ATTACH" FOREIGN KEY ("BNO")
	  REFERENCES "MKROOM"."NOTICE_EVENT" ("BNO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MKROOM"."NOTICE_EVENT_ATTACH" ADD CONSTRAINT "FK_UUID_NOTICE_ATTACH" FOREIGN KEY ("UUID")
	  REFERENCES "MKROOM"."FILEINFO" ("UUID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTICE_EVENT_REPLY
--------------------------------------------------------

  ALTER TABLE "MKROOM"."NOTICE_EVENT_REPLY" ADD CONSTRAINT "FK_BNO_PRNO_REPLY" FOREIGN KEY ("BNO", "PRNO")
	  REFERENCES "MKROOM"."NOTICE_EVENT_REPLY" ("BNO", "RNO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MKROOM"."NOTICE_EVENT_REPLY" ADD CONSTRAINT "FK_BNO_REPLY" FOREIGN KEY ("BNO")
	  REFERENCES "MKROOM"."NOTICE_EVENT" ("BNO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PAYMENTDATA
--------------------------------------------------------

  ALTER TABLE "MKROOM"."PAYMENTDATA" ADD CONSTRAINT "FK_PAYMENTDATA_BUYERID" FOREIGN KEY ("BUYERID")
	  REFERENCES "MKROOM"."MEMBER" ("USERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA_ATTACH
--------------------------------------------------------

  ALTER TABLE "MKROOM"."QNA_ATTACH" ADD CONSTRAINT "FK_BNO_QNA_ATTACH" FOREIGN KEY ("BNO")
	  REFERENCES "MKROOM"."QNA" ("BNO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MKROOM"."QNA_ATTACH" ADD CONSTRAINT "FK_UUID_QNA_ATTACH" FOREIGN KEY ("UUID")
	  REFERENCES "MKROOM"."FILEINFO" ("UUID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA_REPLY
--------------------------------------------------------

  ALTER TABLE "MKROOM"."QNA_REPLY" ADD CONSTRAINT "FK_BNO_PRNO_QNA_REPLY" FOREIGN KEY ("BNO", "PRNO")
	  REFERENCES "MKROOM"."QNA_REPLY" ("BNO", "RNO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MKROOM"."QNA_REPLY" ADD CONSTRAINT "FK_BNO_QNA_REPLY" FOREIGN KEY ("BNO")
	  REFERENCES "MKROOM"."QNA" ("BNO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QUESTBOOKINGDATA
--------------------------------------------------------

  ALTER TABLE "MKROOM"."QUESTBOOKINGDATA" ADD CONSTRAINT "FK_QUESTBOOKINGDATA_IMPUID" FOREIGN KEY ("IMPUID")
	  REFERENCES "MKROOM"."PAYMENTDATA" ("IMPUID") ENABLE;
  ALTER TABLE "MKROOM"."QUESTBOOKINGDATA" ADD CONSTRAINT "FK_QUESTBOOKINGDATA_USERID" FOREIGN KEY ("USERID")
	  REFERENCES "MKROOM"."MEMBER" ("USERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QUEST_ATTACH
--------------------------------------------------------

  ALTER TABLE "MKROOM"."QUEST_ATTACH" ADD CONSTRAINT "FK_QN_BL_QUEST_ATTACH" FOREIGN KEY ("QUESTNAME", "BRANCHLOCATION")
	  REFERENCES "MKROOM"."QUEST" ("QUESTNAME", "BRANCHLOCATION") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MKROOM"."QUEST_ATTACH" ADD CONSTRAINT "FK_UUID_QUEST_ATTACH" FOREIGN KEY ("UUID")
	  REFERENCES "MKROOM"."FILEINFO" ("UUID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "MKROOM"."REVIEW" ADD CONSTRAINT "FK_BNO_MKREVIEW" FOREIGN KEY ("QUESTNAME", "BRANCHLOCATION")
	  REFERENCES "MKROOM"."QUEST" ("QUESTNAME", "BRANCHLOCATION") ENABLE;
