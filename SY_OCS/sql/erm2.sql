
/* Drop Tables */

DROP TABLE Set_Receipt CASCADE CONSTRAINTS;
DROP TABLE Disease_Prescripteion CASCADE CONSTRAINTS;
DROP TABLE Search_Test CASCADE CONSTRAINTS;
DROP TABLE Prescription CASCADE CONSTRAINTS;
DROP TABLE Receipt CASCADE CONSTRAINTS;
DROP TABLE Receive CASCADE CONSTRAINTS;
DROP TABLE staff CASCADE CONSTRAINTS;
DROP TABLE department CASCADE CONSTRAINTS;
DROP TABLE Disease CASCADE CONSTRAINTS;
DROP TABLE drug CASCADE CONSTRAINTS;
DROP TABLE injection CASCADE CONSTRAINTS;
DROP TABLE patient CASCADE CONSTRAINTS;
DROP TABLE suga CASCADE CONSTRAINTS;




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


-- 상병
CREATE TABLE Disease
(
	-- 상병ID
	Disease_Id varchar2(20) NOT NULL,
	-- 상병코드
	Disease_Code varchar2(50),
	-- 상병명(한글)
	Disease_Name_Kor varchar2(300),
	-- 상병명(영문)
	Disease_Name_Eng varchar2(300),
	PRIMARY KEY (Disease_Id)
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


-- 약
CREATE TABLE drug
(
	-- 약품ID
	drug_id varchar2(20) NOT NULL,
	-- 약품단가
	drug_cost number,
	-- 약품명
	drug_name varchar2(300),
	-- 투여경로
	Inject_Course varchar2(50),
	-- 제약회사명
	Company_Name varchar2(50),
	-- 규격
	Standard varchar2(30),
	-- 단위
	drug_unit varchar2(20),
	-- 전문/일반 구분
	SPYN varchar2(20),
	PRIMARY KEY (drug_id)
);


-- 검사
CREATE TABLE injection
(
	-- 검사ID
	injec_id varchar2(20) NOT NULL,
	-- 분류번호
	Group_Num number,
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
	Image varchar2(50),
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


-- 수가
CREATE TABLE suga
(
	-- 수가ID
	Suga_Id varchar2(20) NOT NULL,
	-- 분류번호
	Class_Num varchar2(20),
	-- 수가명(한글)
	Suga_Name_Kor varchar2(30),
	-- 수가명(영문)
	Suga_Name_Eng varchar2(30),
	-- 산정명칭
	Compute_Name varchar2(30),
	-- 단가
	Unit_Cost number,
	-- 상대가치점수
	Relative_Value_P varchar2(30),
	-- 급여/비급여
	Pay_NonPay varchar2(20),
	-- 적용시작일
	Apply_Date date,
	PRIMARY KEY (Suga_Id)
);



/* Create Foreign Keys */

ALTER TABLE Set_Receipt
	ADD FOREIGN KEY (Depart_Id)
	REFERENCES department (Depart_Id)
;


ALTER TABLE staff
	ADD FOREIGN KEY (Depart_Id)
	REFERENCES department (Depart_Id)
;


ALTER TABLE Disease_Prescripteion
	ADD FOREIGN KEY (Disease_Id)
	REFERENCES Disease (Disease_Id)
;


ALTER TABLE Prescription
	ADD FOREIGN KEY (drug_id)
	REFERENCES drug (drug_id)
;


ALTER TABLE Set_Receipt
	ADD FOREIGN KEY (drug_id)
	REFERENCES drug (drug_id)
;


ALTER TABLE Prescription
	ADD FOREIGN KEY (injec_id)
	REFERENCES injection (injec_id)
;


ALTER TABLE Search_Test
	ADD FOREIGN KEY (injec_id)
	REFERENCES injection (injec_id)
;


ALTER TABLE Set_Receipt
	ADD FOREIGN KEY (injec_id)
	REFERENCES injection (injec_id)
;


ALTER TABLE Receive
	ADD FOREIGN KEY (Patient_Id)
	REFERENCES patient (Patient_Id)
;


ALTER TABLE Search_Test
	ADD FOREIGN KEY (Patient_Id)
	REFERENCES patient (Patient_Id)
;


ALTER TABLE Search_Test
	ADD FOREIGN KEY (Prescription_Id)
	REFERENCES Prescription (Prescription_Id)
;


ALTER TABLE Disease_Prescripteion
	ADD FOREIGN KEY (Receive_Id)
	REFERENCES Receive (Receive_Id)
;


ALTER TABLE Prescription
	ADD FOREIGN KEY (Receive_Id)
	REFERENCES Receive (Receive_Id)
;


ALTER TABLE Receipt
	ADD FOREIGN KEY (Receive_Id)
	REFERENCES Receive (Receive_Id)
;


ALTER TABLE Search_Test
	ADD FOREIGN KEY (Receive_Id)
	REFERENCES Receive (Receive_Id)
;


ALTER TABLE Receive
	ADD FOREIGN KEY (User_Id)
	REFERENCES staff (User_Id)
;


ALTER TABLE Search_Test
	ADD FOREIGN KEY (User_Id)
	REFERENCES staff (User_Id)
;


ALTER TABLE Prescription
	ADD FOREIGN KEY (Suga_Id)
	REFERENCES suga (Suga_Id)
;


ALTER TABLE Receipt
	ADD FOREIGN KEY (Suga_Id)
	REFERENCES suga (Suga_Id)
;



/* Comments */

COMMENT ON TABLE department IS '부서';
COMMENT ON COLUMN department.Depart_Id IS '부서ID';
COMMENT ON COLUMN department.Depart_Type IS '부서분류';
COMMENT ON COLUMN department.Depart_name IS '부서명';
COMMENT ON COLUMN department.Phone IS '전화번호';
COMMENT ON TABLE Disease IS '상병';
COMMENT ON COLUMN Disease.Disease_Id IS '상병ID';
COMMENT ON COLUMN Disease.Disease_Code IS '상병코드';
COMMENT ON COLUMN Disease.Disease_Name_Kor IS '상병명(한글)';
COMMENT ON COLUMN Disease.Disease_Name_Eng IS '상병명(영문)';
COMMENT ON TABLE Disease_Prescripteion IS '상병처방';
COMMENT ON COLUMN Disease_Prescripteion.Disease_Pres_Id IS '상병처방ID';
COMMENT ON COLUMN Disease_Prescripteion.Receive_Id IS '접수ID';
COMMENT ON COLUMN Disease_Prescripteion.Disease_Id IS '상병ID';
COMMENT ON COLUMN Disease_Prescripteion.MainDisesYN IS '주상병여부';
COMMENT ON COLUMN Disease_Prescripteion.RO_YN IS '의심상병여부';
COMMENT ON TABLE drug IS '약';
COMMENT ON COLUMN drug.drug_id IS '약품ID';
COMMENT ON COLUMN drug.drug_cost IS '약품단가';
COMMENT ON COLUMN drug.drug_name IS '약품명';
COMMENT ON COLUMN drug.Inject_Course IS '투여경로';
COMMENT ON COLUMN drug.Company_Name IS '제약회사명';
COMMENT ON COLUMN drug.Standard IS '규격';
COMMENT ON COLUMN drug.drug_unit IS '단위';
COMMENT ON COLUMN drug.SPYN IS '전문/일반 구분';
COMMENT ON TABLE injection IS '검사';
COMMENT ON COLUMN injection.injec_id IS '검사ID';
COMMENT ON COLUMN injection.Group_Num IS '분류번호';
COMMENT ON COLUMN injection.injec_Name_Kor IS '검사명(한글)';
COMMENT ON COLUMN injection.injec_Name_Ent IS '검사명(영문)';
COMMENT ON TABLE patient IS '환자';
COMMENT ON COLUMN patient.Patient_Id IS '환자번호';
COMMENT ON COLUMN patient.Patient_Name IS '환자이름';
COMMENT ON COLUMN patient.jumin1 IS '주민번호앞';
COMMENT ON COLUMN patient.jumin IS '주민번호뒤';
COMMENT ON COLUMN patient.Patient_Sex IS '성별';
COMMENT ON COLUMN patient.Patient_Age IS '나이';
COMMENT ON COLUMN patient.Patient_Address IS '주소';
COMMENT ON COLUMN patient.Patient_Phone IS '연락처';
COMMENT ON COLUMN patient.Patient_BType IS '혈액형';
COMMENT ON COLUMN patient.Patient_Unusual IS '특이사항';
COMMENT ON COLUMN patient.Patient_IType IS '보험구분';
COMMENT ON TABLE Prescription IS '처방';
COMMENT ON COLUMN Prescription.Prescription_Id IS '처방ID';
COMMENT ON COLUMN Prescription.Receive_Id IS '접수ID';
COMMENT ON COLUMN Prescription.Prescription_Type IS '처방타입';
COMMENT ON COLUMN Prescription.Days IS '총 투약일수';
COMMENT ON COLUMN Prescription.One_Dosage IS '1회 투여랑';
COMMENT ON COLUMN Prescription.Day_Dosage IS '1일 투여량';
COMMENT ON COLUMN Prescription.injec_id IS '검사ID';
COMMENT ON COLUMN Prescription.drug_id IS '약품ID';
COMMENT ON COLUMN Prescription.Suga_Id IS '수가ID';
COMMENT ON COLUMN Prescription.Receipt_YN IS '수납여부';
COMMENT ON COLUMN Prescription.Prescription_Date IS '처방날짜';
COMMENT ON TABLE Receipt IS '진료비';
COMMENT ON COLUMN Receipt.Receipt_Id IS '진료비ID';
COMMENT ON COLUMN Receipt.Receive_Id IS '접수ID';
COMMENT ON COLUMN Receipt.Suga_Id IS '수가ID';
COMMENT ON COLUMN Receipt.Detail_Name IS '항목명';
COMMENT ON COLUMN Receipt.Patients_Cost IS '본인부담금';
COMMENT ON COLUMN Receipt.Corporation_Cost IS '공단부담금';
COMMENT ON COLUMN Receipt.All_PatientCost IS '전액본인부담';
COMMENT ON COLUMN Receipt.Select_Pay IS '선택진료료';
COMMENT ON COLUMN Receipt.ReceiptYN IS '수납여부';
COMMENT ON COLUMN Receipt.Receipt_Date IS '수납일자';
COMMENT ON TABLE Receive IS '접수';
COMMENT ON COLUMN Receive.Receive_Id IS '접수ID';
COMMENT ON COLUMN Receive.Patient_Id IS '환자번호';
COMMENT ON COLUMN Receive.User_Id IS '의사ID';
COMMENT ON COLUMN Receive.Receive_Date IS '접수일자';
COMMENT ON COLUMN Receive.FMYN IS '초/재진';
COMMENT ON COLUMN Receive.Treat_Status IS '진료상태';
COMMENT ON COLUMN Receive.Receipt_YN IS '수납여부';
COMMENT ON TABLE Search_Test IS '검사조회';
COMMENT ON COLUMN Search_Test.Search_Test_Id IS '검사조회ID';
COMMENT ON COLUMN Search_Test.Patient_Id IS '환자번호';
COMMENT ON COLUMN Search_Test.Receive_Id IS '접수ID';
COMMENT ON COLUMN Search_Test.Prescription_Id IS '처방ID';
COMMENT ON COLUMN Search_Test.injec_id IS '검사ID';
COMMENT ON COLUMN Search_Test.Image IS '이미지';
COMMENT ON COLUMN Search_Test.User_Id IS '판독의사ID';
COMMENT ON COLUMN Search_Test.Opinion IS '판독소견';
COMMENT ON COLUMN Search_Test.Upload_Date IS '판독날짜';
COMMENT ON TABLE Set_Receipt IS 'set처방';
COMMENT ON COLUMN Set_Receipt.Set_Id IS '약속ID';
COMMENT ON COLUMN Set_Receipt.Set_Code IS '약속코드';
COMMENT ON COLUMN Set_Receipt.Set_Name IS '약속명';
COMMENT ON COLUMN Set_Receipt.Depart_Id IS '부서ID';
COMMENT ON COLUMN Set_Receipt.Prescription_Type IS '처방타입';
COMMENT ON COLUMN Set_Receipt.drug_id IS '약품ID';
COMMENT ON COLUMN Set_Receipt.Days IS '총 투약일수';
COMMENT ON COLUMN Set_Receipt.One_Dosage IS '1회 투여랑';
COMMENT ON COLUMN Set_Receipt.Day_Dosage IS '1일 투여량';
COMMENT ON COLUMN Set_Receipt.injec_id IS '검사ID';
COMMENT ON COLUMN Set_Receipt.Update_date IS '등록날짜';
COMMENT ON TABLE staff IS '직원';
COMMENT ON COLUMN staff.User_Id IS '직원ID';
COMMENT ON COLUMN staff.Password IS '비밀번호';
COMMENT ON COLUMN staff.User_Name IS '직원이름';
COMMENT ON COLUMN staff.jumin1 IS '주민번호앞';
COMMENT ON COLUMN staff.jumin2 IS '주민번호뒤';
COMMENT ON COLUMN staff.Sex IS '성별';
COMMENT ON COLUMN staff.Phone IS '연락처';
COMMENT ON COLUMN staff.Depart_Id IS '부서ID';
COMMENT ON TABLE suga IS '수가';
COMMENT ON COLUMN suga.Suga_Id IS '수가ID';
COMMENT ON COLUMN suga.Class_Num IS '분류번호';
COMMENT ON COLUMN suga.Suga_Name_Kor IS '수가명(한글)';
COMMENT ON COLUMN suga.Suga_Name_Eng IS '수가명(영문)';
COMMENT ON COLUMN suga.Compute_Name IS '산정명칭';
COMMENT ON COLUMN suga.Unit_Cost IS '단가';
COMMENT ON COLUMN suga.Relative_Value_P IS '상대가치점수';
COMMENT ON COLUMN suga.Pay_NonPay IS '급여/비급여';
COMMENT ON COLUMN suga.Apply_Date IS '적용시작일';



