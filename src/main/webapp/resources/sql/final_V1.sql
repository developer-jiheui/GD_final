/************************* 테이블 *************************/
-- 회원정보 테이블 (관리자와 회원 모두 통합)
CREATE TABLE USER_T (
                        USER_ID            NUMBER             NOT NULL,
                        USER_NAME          VARCHAR2(60 BYTE),
                        EMAIL              VARCHAR2(100 BYTE) NOT NULL UNIQUE,
                        PW                 VARCHAR2(64 BYTE),
                        USER_TYPE          NUMBER,     --관리자일경우 0, 일반회원은 1, 선생님들 2
/* 비밀번호수정일 */        PW_MODIFY_DT DATE,
/* 가입일 */              SIGNUP_DT DATE,
                        CONSTRAINT PK_USER PRIMARY KEY (USER_ID)
);



CREATE TABLE DAYCARE(
    CENTER_ID NUMBER NOT NULL,
    CENTER_ADDRESS VARCHAR2(100BYTE) NOT NULL,
    CONSTRAINT PK_DAYCARE PRIMARY KEY (CENTER_ID)
);

CREATE TABLE CLASSES(
    CLASS_ID NUMBER NOT NULL,
    CLASS_NAME VARCHAR(20BYTE),
    START_TIME VARCHAR2(60BYTE),
    END_TIME VARCHAR2(60BYTE),
    CATEGORY NUMBER, --0은 주말 1은 평일
    TEACHER_ID NUMBER NOT NULL,
    CONSTRAINT PK_CLASS PRIMARY KEY (CLASS_ID),
    CONSTRAINT FK_TEACHER FOREIGN KEY (TEACHER_ID) REFERENCES USER_T(USER_ID)
);


CREATE TABLE PARENT_DETAIL(
                            USER_ID             NUMBER NOT NULL,
                            USER_TYPE           NUMBER NOT NULL,
                            PARENT_NAME         VARCHAR2(100 BYTE),
                            DOG_NAME          VARCHAR2(100 BYTE),
                            PW_MODIFY_DT       DATE,
                            SIGNUP_DT          DATE,
                            ADDRESS           VARCHAR2(100 BYTE),
                            PHONE_NUM          VARCHAR2(20 BYTE),
                            EMERGENCY_NUM          VARCHAR2(20 BYTE),
                            BIO                VARCHAR2(300 BYTE),
                            JOB_TITLE          VARCHAR2(100 BYTE),
                            BIRTHDAY           DATE,
                            INSTAGRAM_URL      VARCHAR2(100 BYTE),
                            LINKEDIN_URL       VARCHAR2(100 BYTE),
                            GITHUB_URL         VARCHAR2(100 BYTE),
                            CONSTRAINT PK_F_USER PRIMARY KEY(USER_ID),
                            CONSTRAINT  FK_USER FOREIGN KEY (USER_ID)
                            REFERENCES USER_T (USER_ID) ON DELETE CASCADE,
                            CONSTRAINT FK_NAME FOREIGN KEY (DOG_NAME)
                            REFERENCES  USER_T (USER_NAME) ON DELETE CASCADE
);


-- 접속 기록
CREATE TABLE ACCESS_HISTORY_T (
                                  ACCESS_HISTORY_NO NUMBER             NOT NULL,
                                  EMAIL             VARCHAR2(100 BYTE),
                                  IP                VARCHAR2(50 BYTE),
                                  USER_AGENT        VARCHAR2(150 BYTE),
                                  SESSION_ID        VARCHAR2(32 BYTE),
                                  SIGNIN_DT         DATE,
                                  SIGNOUT_DT        DATE,
                                  CONSTRAINT PK_ACCESS_HISTORY PRIMARY KEY(ACCESS_HISTORY_NO),
                                  CONSTRAINT FK_ACCESS_HISTORY_USER FOREIGN KEY(EMAIL)
                                      REFERENCES USER_T(EMAIL) ON DELETE CASCADE
);

-- 탈퇴 회원
CREATE TABLE LEFT_USER_T (
                             LEFT_USER_NO NUMBER             NOT NULL,
                             EMAIL         VARCHAR2(100 BYTE) NOT NULL UNIQUE,
                             LEAVE_DT      DATE,
                             CONSTRAINT PK_LEAVE_USER PRIMARY KEY(LEFT_USER_NO)
);

/*******************SEQUENCE***********************/
CREATE SEQUENCE USER_ID NOCACHE;
CREATE SEQUENCE CENTER_ID NOCACHE;
CREATE SEQUENCE CLASS_ID NOCACHE;















