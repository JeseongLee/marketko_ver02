/**
 * 2016.01.19
 * MarketKO DB setting
 */

DROP TABLE DEALER_INFO;
DROP TABLE REGULAR;
DROP TABLE ACCOUNT_INFO;
DROP TABLE DELIVERY_INFO;
DROP TABLE MY_COUPON;
DROP TABLE CATEGORY;
DROP TABLE DEAL_BOARD;
DROP TABLE PRODUCT_IMG;
DROP TABLE DEAL_BOARD_QNA;
DROP TABLE DEAL_CONTENTS_REPORT;
DROP TABLE MYCART;
DROP TABLE TRADE_INFO;
DROP TABLE EVALUATION_REPORT;
DROP TABLE EVALUATION_RCMD;
DROP TABLE EVALUATION_IMG;
DROP TABLE EVALUATION;
DROP TABLE SEARCH_RANK;
DROP TABLE BUYER_GRADE;
DROP TABLE SERVICE_CENTER;
DROP TABLE PRODUCT_INFO;
DROP TABLE MEMBER;

DROP SEQUENCE DEAL_SEQ;
DROP SEQUENCE DEAL_QNA_SEQ;
DROP SEQUENCE DEAL_CONTENTS_REPORT_SEQ;
DROP SEQUENCE PRODUCT_INFO_SEQ;
DROP SEQUENCE TRADE_SEQ;
DROP SEQUENCE EVALUATION_SEQ;
DROP SEQUENCE EVALUATION_REPORT_SEQ;
DROP SEQUENCE MY_COUPON_SEQ;
DROP SEQUENCE SERVICE_CENTER_SEQ;

-- 멤버
CREATE TABLE MEMBER(
	MEMBER_EMAIL VARCHAR2(100) PRIMARY KEY,
	MEMBER_NICKNAME VARCHAR2(100) NOT NULL,
	MEMBER_NAME VARCHAR2(100) NOT NULL,
	MEMBER_BIRTH DATE NOT NULL,
	MEMBER_PNUMBER VARCHAR2(100) NOT NULL,
	MEMBER_PASSWORD VARCHAR2(100) NOT NULL,
	MEMBER_AUTH VARCHAR2(100) NOT NULL,
	MEMBER_POINT NUMBER DEFAULT 0,
	MEMBER_CASH NUMBER DEFAULT 0,
	MEMBER_JOINDATE DATE NOT NULL,
	MEMBER_LOGINTIME_INFO DATE,
	MEMBER_DAILY_ATTENDED_COUNT NUMBER DEFAULT 0
);

--판매자 정보
CREATE TABLE DEALER_INFO(
	MEMBER_EMAIL VARCHAR2(100) PRIMARY KEY,
	PERMIT_NUMBER NUMBER NOT NULL,
	DEALER_GRADE VARCHAR2(100) NOT NULL,
	CONSTRAINT FK_EM_M_D_I FOREIGN KEY(MEMBER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL)
);

--단골
CREATE TABLE REGULAR(
	DEALER_EMAIL VARCHAR2(100), 
	BUYER_EMAIL VARCHAR2(100),
	SIGNUP_DATE DATE NOT NULL,
	CONSTRAINT FK_DEM_M_R FOREIGN KEY(DEALER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL),
	CONSTRAINT FK_BEM_M_R FOREIGN KEY(BUYER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL),
	PRIMARY KEY (DEALER_EMAIL, BUYER_EMAIL)
);

--계좌정보
CREATE TABLE ACCOUNT_INFO(
	MEMBER_EMAIL VARCHAR2(100) PRIMARY KEY,
	MEMBER_ADDRESS VARCHAR2(500) NOT NULL,
	CONSTRAINT FK_EM_M_A_I FOREIGN KEY(MEMBER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL)
);

--배송정보
CREATE TABLE DELIVERY_INFO(
	MEMBER_EMAIL VARCHAR2(100) NOT NULL,
	DELIVERY_ADDRESS VARCHAR2(100) NOT NULL,
	MEMBER_ADDRESS VARCHAR2(100) NOT NULL,
	CONSTRAINT FK_EM_M_DV_I FOREIGN KEY(MEMBER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL)
);

--내쿠폰함
CREATE TABLE MY_COUPON(
	COUPON_NUMBER NUMBER NOT NULL,
	MEMBER_EMAIL VARCHAR2(100) NOT NULL,
	DISCOUNT_RATE NUMBER NOT NULL,
	DISCOUNT_PRICE NUMBER NOT NULL,
	COUPON_INFO VARCHAR2(100) NOT NULL,
	VALIDATION_DATE DATE NOT NULL,
	CONSTRAINT FK_EM_M_M_C FOREIGN KEY(MEMBER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL),
	PRIMARY KEY (COUPON_NUMBER, MEMBER_EMAIL)
);

--쿠폰번호 SEQ
CREATE SEQUENCE MY_COUPON_SEQ NOCACHE;

--상품정보
CREATE TABLE PRODUCT_INFO(
	PRODUCT_NUMBER NUMBER PRIMARY KEY,
	PRODUCT_NAME VARCHAR2(100) NOT NULL,
	PRODUCT_PRICE NUMBER NOT NULL,
	PRODUCT_MAKER VARCHAR2(100) NOT NULL,
	PRODUCT_SIZE VARCHAR2(100) NOT NULL,
	PRODUCT_COLOR VARCHAR2(100) NOT NULL,
	PRODUCT_STOCK NUMBER NOT NULL
);

--상품번호 SEQ
CREATE SEQUENCE PRODUCT_INFO_SEQ NOCACHE;

--카테고리
CREATE TABLE CATEGORY(
	PRODUCT_NUMBER NUMBER PRIMARY KEY,
	HIGH_GROUP VARCHAR2(100) NOT NULL,
	MIDDLE_GROUP VARCHAR2(100) NOT NULL,
	LOW_GROUP VARCHAR2(100) NOT NULL,
	CONSTRAINT FK_PN_P_C FOREIGN KEY(PRODUCT_NUMBER) REFERENCES PRODUCT_INFO(PRODUCT_NUMBER)
);

--판매게시판
CREATE TABLE DEAL_BOARD(
	DEAL_BOARD_NUMBER NUMBER PRIMARY KEY,
	PRODUCT_NUMBER NUMBER NOT NULL,
	MEMBER_EMAIL VARCHAR2(100) NOT NULL,
	DEAL_BOARD_DATE DATE NOT NULL,
	DEAL_BOARD_THUMBNAIL VARCHAR2(100) NOT NULL,
	DEAL_BOARD_CONTENT CLOB NOT NULL,
	DEAL_BOARD_HIT VARCHAR2(100) DEFAULT 0,
	DEAL_BOARD_BLOCK_STATE NUMBER DEFAULT 0, -- 블록 여부, 0이면 기본 글, 1이면 블록 처리
	CONSTRAINT FK_PN_P_D_B FOREIGN KEY(PRODUCT_NUMBER) REFERENCES PRODUCT_INFO(PRODUCT_NUMBER),
	CONSTRAINT FK_EM_M_D_B FOREIGN KEY(MEMBER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL)
);

--판매글번호 SEQ
CREATE SEQUENCE DEAL_SEQ NOCACHE;

--구매평이미지
CREATE TABLE PRODUCT_IMG(
	PRODUCT_IMG_NAME VARCHAR2(100) PRIMARY KEY,
	DEAL_BOARD_NUMBER NUMBER NOT NULL,
	PRODUCT_IMG_PATH VARCHAR2(200) NOT NULL,
	CONSTRAINT FK_DBN_DB_IMG FOREIGN KEY(DEAL_BOARD_NUMBER) REFERENCES DEAL_BOARD(DEAL_BOARD_NUMBER)
);

--판매게시판QNA
CREATE TABLE DEAL_BOARD_QNA(
	DEAL_QNA_NUMBER NUMBER PRIMARY KEY,
	MEMBER_EMAIL VARCHAR2(100) NOT NULL,
	PRODUCT_NUMBER NUMBER NOT NULL,
	DEAL_QNA_DATE DATE NOT NULL,
	DEAL_QNA_CONTENT CLOB NOT NULL,
	CONSTRAINT FK_PN_P_D_B_Q FOREIGN KEY(PRODUCT_NUMBER) REFERENCES PRODUCT_INFO(PRODUCT_NUMBER),
	CONSTRAINT FK_EM_M_D_B_Q FOREIGN KEY(MEMBER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL)
);

--판매게시판QNA SEQ
CREATE SEQUENCE DEAL_QNA_SEQ NOCACHE;

--판매글신고
CREATE TABLE DEAL_CONTENTS_REPORT(
	REPORT_NUMBER NUMBER PRIMARY KEY,
	PRODUCT_NUMBER NUMBER NOT NULL,
	MEMBER_EMAIL VARCHAR2(100) NOT NULL,
	REPORT_REASON CLOB NOT NULL,
	REPORT_DATE DATE NOT NULL,
	CONSTRAINT FK_PN_P_D_C_R FOREIGN KEY(PRODUCT_NUMBER) REFERENCES PRODUCT_INFO(PRODUCT_NUMBER),
	CONSTRAINT FK_EM_M_D_C_R FOREIGN KEY(MEMBER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL)
);

--판매글신고번호 SEQ
CREATE SEQUENCE DEAL_CONTENTS_REPORT_SEQ NOCACHE;

--장바구니
CREATE TABLE MYCART(
	MEMBER_EMAIL VARCHAR2(100) NOT NULL,
	PRODUCT_NUMBER NUMBER NOT NULL,
	AMOUNT NUMBER NOT NULL,
	CONSTRAINT FK_PN_P_MC FOREIGN KEY(PRODUCT_NUMBER) REFERENCES PRODUCT_INFO(PRODUCT_NUMBER),
	CONSTRAINT FK_EM_M_MC FOREIGN KEY(MEMBER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL),
	PRIMARY KEY (MEMBER_EMAIL, PRODUCT_NUMBER)
);

--거래정보
CREATE TABLE TRADE_INFO(
	ORDER_NUMBER NUMBER NOT NULL,
	PRODUCT_NUMBER NUMBER NOT NULL,
	DEALER_EMAIL VARCHAR2(100)  NOT NULL,
	BUYER_EMAIL VARCHAR2(100) NOT NULL,
	AMOUNT NUMBER NOT NULL,
	TRADE_DATE DATE NOT NULL,
	ADDREDSS VARCHAR2(100) NOT NULL,
	CONSTRAINT FK_PN_P_T_I FOREIGN KEY(PRODUCT_NUMBER) REFERENCES PRODUCT_INFO(PRODUCT_NUMBER),
	CONSTRAINT FK_EM_M_T_I FOREIGN KEY(BUYER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL)
);

--주문번호 SEQ
CREATE SEQUENCE TRADE_SEQ NOCACHE;

--구매평
CREATE TABLE EVALUATION(
	EVALUATION_NUMBER NUMBER PRIMARY KEY,
	PRODUCT_NUMBER NUMBER NOT NULL,
	MEMBER_EMAIL VARCHAR2(100) NOT NULL,
	EVALUATION_DATE DATE NOT NULL,
	EVALUATION_CONTENT CLOB NOT NULL,
	EVALUATION_SCORE NUMBER NOT NULL,
	EVALUATION_BLOCK_STATE NUMBER DEFAULT 0, -- 블록 여부, 0이면 기본 글, 1이면 블록 처리
	CONSTRAINT FK_PN_P_E FOREIGN KEY(PRODUCT_NUMBER) REFERENCES PRODUCT_INFO(PRODUCT_NUMBER),
	CONSTRAINT FK_EM_M_E FOREIGN KEY(MEMBER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL)
);

--구매평번호 SEQ
CREATE SEQUENCE EVALUATION_SEQ NOCACHE;

--구매평 추천/비추천
CREATE TABLE EVALUATION_RCMD(
	EVALUATION_NUMBER NUMBER NOT NULL,
	PRODUCT_NUMBER NUMBER NOT NULL,
	MEMBER_EMAIL NOT NULL,
	RECOMMEND VARCHAR2(100) NOT NULL,
	NONRECOMMEND VARCHAR2(100) NOT NULL,
	CONSTRAINT FK_EN_E_ER FOREIGN KEY(EVALUATION_NUMBER) REFERENCES EVALUATION(EVALUATION_NUMBER),
	CONSTRAINT FK_PN_P_ER FOREIGN KEY(PRODUCT_NUMBER) REFERENCES PRODUCT_INFO(PRODUCT_NUMBER),
	CONSTRAINT FK_EM_M_ER FOREIGN KEY(MEMBER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL)
);

--구매평이미지
CREATE TABLE EVALUATION_IMG(
	EVALUATION_IMG_NAME VARCHAR2(100) PRIMARY KEY,
	EVALUATION_NUMBER NUMBER NOT NULL,
	EVALUATION_IMG_PATH VARCHAR2(200) NOT NULL,
	CONSTRAINT FK_EN_E_EI FOREIGN KEY(EVALUATION_NUMBER) REFERENCES EVALUATION(EVALUATION_NUMBER)
);

--구매평신고
CREATE TABLE EVALUATION_REPORT(
	EVALUATION_REPORT_NUMBER NUMBER PRIMARY KEY,
	EVALUATION_NUMBER NUMBER NOT NULL,
	MEMBER_EMAIL NOT NULL,
	EVALUATION_REPORT_REASON CLOB NOT NULL,
	EVALUATION_REPORT_DATE DATE NOT NULL,
	CONSTRAINT FK_EN_E_ERP FOREIGN KEY(EVALUATION_NUMBER) REFERENCES EVALUATION(EVALUATION_NUMBER),
	CONSTRAINT FK_EM_M_ERP FOREIGN KEY(MEMBER_EMAIL) REFERENCES MEMBER(MEMBER_EMAIL)
);

--구매평신고번호 SEQ
CREATE SEQUENCE EVALUATION_REPORT_SEQ NOCACHE;

--검색어통계
CREATE TABLE SEARCH_RANK(
	KEYWORD VARCHAR2(100) PRIMARY KEY,
	SEARCH_COUNT NUMBER NOT NULL
);

--등급
CREATE TABLE BUYER_GRADE(
	GRADE_NAME VARCHAR2(100) PRIMARY KEY,
	MIN_GRADE NUMBER NOT NULL,
	MAX_GRADE NUMBER NOT NULL
);

--서비스센터
CREATE TABLE SERVICE_CENTER(
	QNA_NUMBER NUMBER PRIMARY KEY,
	QNA_TITLE VARCHAR2(100) NOT NULL,
	QNA_CONTENT CLOB NOT NULL,
	QNA_WRITEDATE DATE NOT NULL,
	EMAIL VARCHAR2(100) NOT NULL
);

--문의글번호 SEQ
CREATE SEQUENCE SERVICE_CENTER_SEQ NOCACHE;
