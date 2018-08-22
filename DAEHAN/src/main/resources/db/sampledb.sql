CREATE MEMORY TABLE VEND(VEND_NAME VARCHAR(20) NOT NULL PRIMARY KEY,VEND_DIV VARCHAR(5) NOT NULL,VEND_REP VARCHAR(10), VEND_NUM VARCHAR(20), VEND_CONDITION VARCHAR(20), VEND_JONGMOK VARCHAR(20), VEND_ADDR VARCHAR(20), VEND_PHONE_NUM VARCHAR(20), VEND_FAX_NUM VARCHAR(20), VEND_MAIL_ADDR VARCHAR(20))
CREATE MEMORY TABLE DEPARTMENT(DEPTID VARCHAR(10) NOT NULL PRIMARY KEY,DEPTNAME VARCHAR(100) NOT NULL,SUPERDEPTID VARCHAR(10) NOT NULL,DEPTH INTEGER,DESCRIPTION VARCHAR(200))
SET WRITE_DELAY 20
SET SCHEMA PUBLIC
INSERT INTO VEND VALUES('$VEND_NAME$','1','$VEND_REP$','$VEND_NUM$','$VEND_CONDITION$','$VEND_JONGMOK$','$VEND_ADDR$','$VEND_PHONE_NUM$','$VEND_FAX_NUM$','$VEND_MAIL_ADDR$')
INSERT INTO DEPARTMENT VALUES('1000','경영기획실','1000',1,'')
INSERT INTO DEPARTMENT VALUES('1100','회식메뉴혁신팀','1000',2,'매번 삼겹살 지겹지 않으세요? 저희 회식메뉴혁신팀에서는 지속적인 즐거운 회사문화 조성을 위해...')
INSERT INTO DEPARTMENT VALUES('1200','점심메뉴기획팀','1000',2,'점심시간마다 반복되는 오늘은 뭘먹을까? 고민은 점심시간의 즐거움을 저하시키며 점심메뉴 추천자에게 심한 스트레스를 유발 시킬수 있습니다. 저희 점심메뉴기획팀은 날씨,뉴스등 주변여건을 고려하여 가장 베스트 점심메뉴를 추천해 드리는 최신식 점심메뉴프로그램을 도입하여...')
INSERT INTO DEPARTMENT VALUES('1300','야근금지역량팀','1000',2,'오후 6시 이후엔 소등 및 사원들의 의자에 고압전류를...')
INSERT INTO DEPARTMENT VALUES('1400','사랑의짝대기팀','1000',2,'늘어가는 솔로 사원들을 위한 회사의 고민이 많습니다. 저의 사짝팀은 회사내 솔로 보틀넥현상을 근본적으로 해결하고자 옆 건물 fun company와 소개팅을 지속적으로...')
INSERT INTO DEPARTMENT VALUES('2000','경영지원실','2000',1,'')
INSERT INTO DEPARTMENT VALUES('2100','재무팀','2000',2,'저희 재무팀은 빚/보증/채무변제/사채와는 아무런 관계가 없습니다.')
INSERT INTO DEPARTMENT VALUES('2200','친절한인사팀','2000',2,'안녕하세요. 채용/승진/조직관련 업무를 담당하는 친절한 인사팀입니다. 저희 인사팀은 친절에 사활을...')
INSERT INTO DEPARTMENT VALUES('2300','사원복지만땅팀','2000',2,'일은 열심히 하는데 회사가 챙겨주는건 이것 저것 부족한게 많으시죠? 예산이 부족하면 몸으로 때워 드립니다. 연락주세요.')
INSERT INTO DEPARTMENT VALUES('2400','사내커플관리팀','2000',2,'사내 커플이란 이유로 차별을 받으시나요? 저희에게 연락 주시면 즉각 응징..?')
INSERT INTO DEPARTMENT VALUES('3000','IT연구소','3000',1,'')
INSERT INTO DEPARTMENT VALUES('3200','노가다방지 도구개발팀','3000',2,'반복적인 단순 업무 지겹지 않으세요? 손건강을 위해서 저희 도구를 이용해 보세요. 손이 행복해집니다.')
INSERT INTO DEPARTMENT VALUES('3300','9to5솔루션개발팀','3000',2,'정시에 출근해서 한시간 일찍 퇴근하자. 이게 말이 되냐구요? 저희 솔루션을 사용해 보세요.')
INSERT INTO DEPARTMENT VALUES('4000','공공사업부','4000',1,'')
INSERT INTO DEPARTMENT VALUES('4200','도로교통시스템팀','4000',2,'안녕하세요. 도로교통시스템팀입니다.')
INSERT INTO DEPARTMENT VALUES('4300','연말정산이익증대팀','4000',2,'연말정산하면 마이너스. 이거 왜이럴까요?')
INSERT INTO DEPARTMENT VALUES('5000','금융사업부','5000',1,'')
INSERT INTO DEPARTMENT VALUES('5100','카드수수료할인팀','5000',2,'카드수수료를 절약하는 금융어플리케이션이 필요하세요? 저희가 도와 드리겠습니다. 아니, 고객님은 카드수수료를 올리는게 필요하시다구요? 그건...')
INSERT INTO DEPARTMENT VALUES('5200','증권대박팀','5000',2,'정확한 증권 시세 분석을 위한 첨단 시스템을 제공합니다. 어떻게 시스템이 분석할수 있냐구요? 음 ...')