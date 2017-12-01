
/* Drop Tables */

DROP TABLE Set_Receipt CASCADE CONSTRAINTS;
DROP TABLE Disease_Prescripteion CASCADE CONSTRAINTS;
DROP TABLE Search_Test CASCADE CONSTRAINTS;
DROP TABLE Prescription CASCADE CONSTRAINTS;
DROP TABLE Receipt CASCADE CONSTRAINTS;
DROP TABLE Receive CASCADE CONSTRAINTS;
DROP TABLE staff CASCADE CONSTRAINTS;
DROP TABLE department CASCADE CONSTRAINTS;
DROP TABLE injection CASCADE CONSTRAINTS;
DROP TABLE patient CASCADE CONSTRAINTS;




/* Create Tables */

-- 부서
CREATE TABLE department
(
	-- 부서ID
	Depart_Id varchar2(2) NOT NULL,
	-- 부서분류
	Depart_Type varchar2(20),
	-- 부서명
	Depart_name varchar2(30),
	-- 전화번호
	Phone varchar2(20),
	PRIMARY KEY (Depart_Id)
);


-- 상병처방
CREATE TABLE Disease_Prescripteion
(
	-- 상병처방ID
	Disease_Pres_Id varchar2(20) NOT NULL,
	-- 접수ID
	Receive_Id varchar2(20) NOT NULL,
	-- 상병ID
	Disease_Id varchar2(20) NOT NULL,
	-- 주상병여부
	MainDisesYN varchar2(50),
	-- 의심상병여부
	RO_YN varchar2(50),
	PRIMARY KEY (Disease_Pres_Id)
);



-- 검사
CREATE TABLE injection
(
	-- 검사ID
	injec_id varchar2(20) NOT NULL,
	-- 분류번호
	Group_Num varchar2(50),
	-- 검사명(한글)
	injec_Name_Kor varchar2(300),
	-- 검사명(영문)
	injec_Name_Ent varchar2(300),
	PRIMARY KEY (injec_id)
);


-- 환자
CREATE TABLE patient
(
	-- 환자번호
	Patient_Id varchar2(20) NOT NULL,
	-- 환자이름
	Patient_Name varchar2(20),
	-- 주민번호앞
	jumin1 varchar2(10),
	-- 주민번호뒤
	jumin varchar2(10),
	-- 성별
	Patient_Sex varchar2(5),
	-- 나이
	Patient_Age varchar2(10),
	-- 주소
	Patient_Address varchar2(50),
	-- 연락처
	Patient_Phone varchar2(20),
	-- 혈액형
	Patient_BType varchar2(10),
	-- 특이사항
	Patient_Unusual varchar2(300),
	-- 보험구분
	Patient_IType varchar2(20),
	PRIMARY KEY (Patient_Id)
);

-- 처방
CREATE TABLE Prescription
(
	-- 처방ID
	Prescription_Id varchar2(20) NOT NULL,
	-- 접수ID
	Receive_Id varchar2(20) NOT NULL,
	-- 처방타입
	Prescription_Type varchar2(20),
	-- 총 투약일수
	Days number,
	-- 1회 투여랑
	One_Dosage number,
	-- 1일 투여량
	Day_Dosage number,
	-- 검사ID
	injec_id varchar2(20),
	-- 약품ID
	drug_id varchar2(20),
	-- 수가ID
	Suga_Id varchar2(20) NOT NULL,
	-- 수납여부
	Receipt_YN varchar2(20),
	-- 처방날짜
	Prescription_Date date,
	PRIMARY KEY (Prescription_Id)
);



-- 진료비
CREATE TABLE Receipt
(
	-- 진료비ID
	Receipt_Id varchar2(20) NOT NULL,
	-- 접수ID
	Receive_Id varchar2(20) NOT NULL,
	-- 수가ID
	Suga_Id varchar2(20) NOT NULL,
	-- 항목명
	Detail_Name varchar2(30),
	-- 본인부담금
	Patients_Cost number,
	-- 공단부담금
	Corporation_Cost number,
	-- 전액본인부담
	All_PatientCost number,
	-- 선택진료료
	Select_Pay varchar2(30),
	-- 수납여부
	ReceiptYN varchar2(20),
	-- 수납일자
	Receipt_Date date,
	PRIMARY KEY (Receipt_Id)
);


-- 접수
CREATE TABLE Receive
(
	-- 접수ID
	Receive_Id varchar2(20) NOT NULL,
	-- 환자번호
	Patient_Id varchar2(20) NOT NULL,
	-- 의사ID
	User_Id varchar2(20) NOT NULL,
	-- 접수일자
	Receive_Date date,
	-- 초/재진
	FMYN varchar2(10),
	-- 진료상태
	Treat_Status varchar2(50),
	-- 수납여부
	Receipt_YN varchar2(10),
	PRIMARY KEY (Receive_Id)
);


-- 검사조회
CREATE TABLE Search_Test
(
	-- 검사조회ID
	Search_Test_Id varchar2(20) NOT NULL,
	-- 환자번호
	Patient_Id varchar2(20) NOT NULL,
	-- 접수ID
	Receive_Id varchar2(20) NOT NULL,
	-- 처방ID
	Prescription_Id varchar2(20) NOT NULL,
	-- 검사ID
	injec_id varchar2(20) NOT NULL,
	-- 이미지
	Image blob,
	-- 판독의사ID
	User_Id varchar2(20) NOT NULL,
	-- 판독소견
	Opinion varchar2(300),
	-- 판독날짜
	Upload_Date date,
	PRIMARY KEY (Search_Test_Id)
);


-- set처방
CREATE TABLE Set_Receipt
(
	-- 약속ID
	Set_Id varchar2(20) NOT NULL,
	-- 약속코드
	Set_Code varchar2(30),
	-- 약속명
	Set_Name varchar2(30),
	-- 부서ID
	Depart_Id varchar2(2) NOT NULL,
	-- 처방타입
	Prescription_Type varchar2(20),
	-- 약품ID
	drug_id varchar2(20) NOT NULL,
	-- 총 투약일수
	Days number,
	-- 1회 투여랑
	One_Dosage number,
	-- 1일 투여량
	Day_Dosage number,
	-- 검사ID
	injec_id varchar2(20) NOT NULL,
	-- 등록날짜
	Update_date date,
	PRIMARY KEY (Set_Id)
);


-- 직원
CREATE TABLE staff
(
	-- 직원ID
	User_Id varchar2(20) NOT NULL,
	-- 비밀번호
	Password varchar2(30),
	-- 직원이름
	User_Name varchar2(20),
	-- 주민번호앞
	jumin1 varchar2(10),
	-- 주민번호뒤
	jumin2 varchar2(10),
	-- 성별
	Sex varchar2(10),
	-- 연락처
	Phone varchar2(20),
	-- 부서ID
	Depart_Id varchar2(2) NOT NULL,
	PRIMARY KEY (User_Id)
);





