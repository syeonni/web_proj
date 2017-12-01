
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

-- �μ�
CREATE TABLE department
(
	-- �μ�ID
	Depart_Id varchar2(2) NOT NULL,
	-- �μ��з�
	Depart_Type varchar2(20),
	-- �μ���
	Depart_name varchar2(30),
	-- ��ȭ��ȣ
	Phone varchar2(20),
	PRIMARY KEY (Depart_Id)
);


-- ��
CREATE TABLE Disease
(
	-- ��ID
	Disease_Id varchar2(20) NOT NULL,
	-- ���ڵ�
	Disease_Code varchar2(50),
	-- �󺴸�(�ѱ�)
	Disease_Name_Kor varchar2(300),
	-- �󺴸�(����)
	Disease_Name_Eng varchar2(300),
	PRIMARY KEY (Disease_Id)
);


-- ��ó��
CREATE TABLE Disease_Prescripteion
(
	-- ��ó��ID
	Disease_Pres_Id varchar2(20) NOT NULL,
	-- ����ID
	Receive_Id varchar2(20) NOT NULL,
	-- ��ID
	Disease_Id varchar2(20) NOT NULL,
	-- �ֻ󺴿���
	MainDisesYN varchar2(50),
	-- �ǽɻ󺴿���
	RO_YN varchar2(50),
	PRIMARY KEY (Disease_Pres_Id)
);


-- ��
CREATE TABLE drug
(
	-- ��ǰID
	drug_id varchar2(20) NOT NULL,
	-- ��ǰ�ܰ�
	drug_cost number,
	-- ��ǰ��
	drug_name varchar2(300),
	-- �������
	Inject_Course varchar2(50),
	-- ����ȸ���
	Company_Name varchar2(50),
	-- �԰�
	Standard varchar2(30),
	-- ����
	drug_unit varchar2(20),
	-- ����/�Ϲ� ����
	SPYN varchar2(20),
	PRIMARY KEY (drug_id)
);


-- �˻�
CREATE TABLE injection
(
	-- �˻�ID
	injec_id varchar2(20) NOT NULL,
	-- �з���ȣ
	Group_Num number,
	-- �˻��(�ѱ�)
	injec_Name_Kor varchar2(300),
	-- �˻��(����)
	injec_Name_Ent varchar2(300),
	PRIMARY KEY (injec_id)
);


-- ȯ��
CREATE TABLE patient
(
	-- ȯ�ڹ�ȣ
	Patient_Id varchar2(20) NOT NULL,
	-- ȯ���̸�
	Patient_Name varchar2(20),
	-- �ֹι�ȣ��
	jumin1 varchar2(10),
	-- �ֹι�ȣ��
	jumin varchar2(10),
	-- ����
	Patient_Sex varchar2(5),
	-- ����
	Patient_Age varchar2(10),
	-- �ּ�
	Patient_Address varchar2(50),
	-- ����ó
	Patient_Phone varchar2(20),
	-- ������
	Patient_BType varchar2(10),
	-- Ư�̻���
	Patient_Unusual varchar2(300),
	-- ���豸��
	Patient_IType varchar2(20),
	PRIMARY KEY (Patient_Id)
);


-- ó��
CREATE TABLE Prescription
(
	-- ó��ID
	Prescription_Id varchar2(20) NOT NULL,
	-- ����ID
	Receive_Id varchar2(20) NOT NULL,
	-- ó��Ÿ��
	Prescription_Type varchar2(20),
	-- �� �����ϼ�
	Days number,
	-- 1ȸ ������
	One_Dosage number,
	-- 1�� ������
	Day_Dosage number,
	-- �˻�ID
	injec_id varchar2(20),
	-- ��ǰID
	drug_id varchar2(20),
	-- ����ID
	Suga_Id varchar2(20) NOT NULL,
	-- ��������
	Receipt_YN varchar2(20),
	-- ó�泯¥
	Prescription_Date date,
	PRIMARY KEY (Prescription_Id)
);


-- �����
CREATE TABLE Receipt
(
	-- �����ID
	Receipt_Id varchar2(20) NOT NULL,
	-- ����ID
	Receive_Id varchar2(20) NOT NULL,
	-- ����ID
	Suga_Id varchar2(20) NOT NULL,
	-- �׸��
	Detail_Name varchar2(30),
	-- ���κδ��
	Patients_Cost number,
	-- ���ܺδ��
	Corporation_Cost number,
	-- ���׺��κδ�
	All_PatientCost number,
	-- ���������
	Select_Pay varchar2(30),
	-- ��������
	ReceiptYN varchar2(20),
	-- ��������
	Receipt_Date date,
	PRIMARY KEY (Receipt_Id)
);


-- ����
CREATE TABLE Receive
(
	-- ����ID
	Receive_Id varchar2(20) NOT NULL,
	-- ȯ�ڹ�ȣ
	Patient_Id varchar2(20) NOT NULL,
	-- �ǻ�ID
	User_Id varchar2(20) NOT NULL,
	-- ��������
	Receive_Date date,
	-- ��/����
	FMYN varchar2(10),
	-- �������
	Treat_Status varchar2(50),
	-- ��������
	Receipt_YN varchar2(10),
	PRIMARY KEY (Receive_Id)
);


-- �˻���ȸ
CREATE TABLE Search_Test
(
	-- �˻���ȸID
	Search_Test_Id varchar2(20) NOT NULL,
	-- ȯ�ڹ�ȣ
	Patient_Id varchar2(20) NOT NULL,
	-- ����ID
	Receive_Id varchar2(20) NOT NULL,
	-- ó��ID
	Prescription_Id varchar2(20) NOT NULL,
	-- �˻�ID
	injec_id varchar2(20) NOT NULL,
	-- �̹���
	Image varchar2(50),
	-- �ǵ��ǻ�ID
	User_Id varchar2(20) NOT NULL,
	-- �ǵ��Ұ�
	Opinion varchar2(300),
	-- �ǵ���¥
	Upload_Date date,
	PRIMARY KEY (Search_Test_Id)
);


-- setó��
CREATE TABLE Set_Receipt
(
	-- ���ID
	Set_Id varchar2(20) NOT NULL,
	-- ����ڵ�
	Set_Code varchar2(30),
	-- ��Ӹ�
	Set_Name varchar2(30),
	-- �μ�ID
	Depart_Id varchar2(2) NOT NULL,
	-- ó��Ÿ��
	Prescription_Type varchar2(20),
	-- ��ǰID
	drug_id varchar2(20) NOT NULL,
	-- �� �����ϼ�
	Days number,
	-- 1ȸ ������
	One_Dosage number,
	-- 1�� ������
	Day_Dosage number,
	-- �˻�ID
	injec_id varchar2(20) NOT NULL,
	-- ��ϳ�¥
	Update_date date,
	PRIMARY KEY (Set_Id)
);


-- ����
CREATE TABLE staff
(
	-- ����ID
	User_Id varchar2(20) NOT NULL,
	-- ��й�ȣ
	Password varchar2(30),
	-- �����̸�
	User_Name varchar2(20),
	-- �ֹι�ȣ��
	jumin1 varchar2(10),
	-- �ֹι�ȣ��
	jumin2 varchar2(10),
	-- ����
	Sex varchar2(10),
	-- ����ó
	Phone varchar2(20),
	-- �μ�ID
	Depart_Id varchar2(2) NOT NULL,
	PRIMARY KEY (User_Id)
);


-- ����
CREATE TABLE suga
(
	-- ����ID
	Suga_Id varchar2(20) NOT NULL,
	-- �з���ȣ
	Class_Num varchar2(20),
	-- ������(�ѱ�)
	Suga_Name_Kor varchar2(30),
	-- ������(����)
	Suga_Name_Eng varchar2(30),
	-- ������Ī
	Compute_Name varchar2(30),
	-- �ܰ�
	Unit_Cost number,
	-- ��밡ġ����
	Relative_Value_P varchar2(30),
	-- �޿�/��޿�
	Pay_NonPay varchar2(20),
	-- ���������
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

COMMENT ON TABLE department IS '�μ�';
COMMENT ON COLUMN department.Depart_Id IS '�μ�ID';
COMMENT ON COLUMN department.Depart_Type IS '�μ��з�';
COMMENT ON COLUMN department.Depart_name IS '�μ���';
COMMENT ON COLUMN department.Phone IS '��ȭ��ȣ';
COMMENT ON TABLE Disease IS '��';
COMMENT ON COLUMN Disease.Disease_Id IS '��ID';
COMMENT ON COLUMN Disease.Disease_Code IS '���ڵ�';
COMMENT ON COLUMN Disease.Disease_Name_Kor IS '�󺴸�(�ѱ�)';
COMMENT ON COLUMN Disease.Disease_Name_Eng IS '�󺴸�(����)';
COMMENT ON TABLE Disease_Prescripteion IS '��ó��';
COMMENT ON COLUMN Disease_Prescripteion.Disease_Pres_Id IS '��ó��ID';
COMMENT ON COLUMN Disease_Prescripteion.Receive_Id IS '����ID';
COMMENT ON COLUMN Disease_Prescripteion.Disease_Id IS '��ID';
COMMENT ON COLUMN Disease_Prescripteion.MainDisesYN IS '�ֻ󺴿���';
COMMENT ON COLUMN Disease_Prescripteion.RO_YN IS '�ǽɻ󺴿���';
COMMENT ON TABLE drug IS '��';
COMMENT ON COLUMN drug.drug_id IS '��ǰID';
COMMENT ON COLUMN drug.drug_cost IS '��ǰ�ܰ�';
COMMENT ON COLUMN drug.drug_name IS '��ǰ��';
COMMENT ON COLUMN drug.Inject_Course IS '�������';
COMMENT ON COLUMN drug.Company_Name IS '����ȸ���';
COMMENT ON COLUMN drug.Standard IS '�԰�';
COMMENT ON COLUMN drug.drug_unit IS '����';
COMMENT ON COLUMN drug.SPYN IS '����/�Ϲ� ����';
COMMENT ON TABLE injection IS '�˻�';
COMMENT ON COLUMN injection.injec_id IS '�˻�ID';
COMMENT ON COLUMN injection.Group_Num IS '�з���ȣ';
COMMENT ON COLUMN injection.injec_Name_Kor IS '�˻��(�ѱ�)';
COMMENT ON COLUMN injection.injec_Name_Ent IS '�˻��(����)';
COMMENT ON TABLE patient IS 'ȯ��';
COMMENT ON COLUMN patient.Patient_Id IS 'ȯ�ڹ�ȣ';
COMMENT ON COLUMN patient.Patient_Name IS 'ȯ���̸�';
COMMENT ON COLUMN patient.jumin1 IS '�ֹι�ȣ��';
COMMENT ON COLUMN patient.jumin IS '�ֹι�ȣ��';
COMMENT ON COLUMN patient.Patient_Sex IS '����';
COMMENT ON COLUMN patient.Patient_Age IS '����';
COMMENT ON COLUMN patient.Patient_Address IS '�ּ�';
COMMENT ON COLUMN patient.Patient_Phone IS '����ó';
COMMENT ON COLUMN patient.Patient_BType IS '������';
COMMENT ON COLUMN patient.Patient_Unusual IS 'Ư�̻���';
COMMENT ON COLUMN patient.Patient_IType IS '���豸��';
COMMENT ON TABLE Prescription IS 'ó��';
COMMENT ON COLUMN Prescription.Prescription_Id IS 'ó��ID';
COMMENT ON COLUMN Prescription.Receive_Id IS '����ID';
COMMENT ON COLUMN Prescription.Prescription_Type IS 'ó��Ÿ��';
COMMENT ON COLUMN Prescription.Days IS '�� �����ϼ�';
COMMENT ON COLUMN Prescription.One_Dosage IS '1ȸ ������';
COMMENT ON COLUMN Prescription.Day_Dosage IS '1�� ������';
COMMENT ON COLUMN Prescription.injec_id IS '�˻�ID';
COMMENT ON COLUMN Prescription.drug_id IS '��ǰID';
COMMENT ON COLUMN Prescription.Suga_Id IS '����ID';
COMMENT ON COLUMN Prescription.Receipt_YN IS '��������';
COMMENT ON COLUMN Prescription.Prescription_Date IS 'ó�泯¥';
COMMENT ON TABLE Receipt IS '�����';
COMMENT ON COLUMN Receipt.Receipt_Id IS '�����ID';
COMMENT ON COLUMN Receipt.Receive_Id IS '����ID';
COMMENT ON COLUMN Receipt.Suga_Id IS '����ID';
COMMENT ON COLUMN Receipt.Detail_Name IS '�׸��';
COMMENT ON COLUMN Receipt.Patients_Cost IS '���κδ��';
COMMENT ON COLUMN Receipt.Corporation_Cost IS '���ܺδ��';
COMMENT ON COLUMN Receipt.All_PatientCost IS '���׺��κδ�';
COMMENT ON COLUMN Receipt.Select_Pay IS '���������';
COMMENT ON COLUMN Receipt.ReceiptYN IS '��������';
COMMENT ON COLUMN Receipt.Receipt_Date IS '��������';
COMMENT ON TABLE Receive IS '����';
COMMENT ON COLUMN Receive.Receive_Id IS '����ID';
COMMENT ON COLUMN Receive.Patient_Id IS 'ȯ�ڹ�ȣ';
COMMENT ON COLUMN Receive.User_Id IS '�ǻ�ID';
COMMENT ON COLUMN Receive.Receive_Date IS '��������';
COMMENT ON COLUMN Receive.FMYN IS '��/����';
COMMENT ON COLUMN Receive.Treat_Status IS '�������';
COMMENT ON COLUMN Receive.Receipt_YN IS '��������';
COMMENT ON TABLE Search_Test IS '�˻���ȸ';
COMMENT ON COLUMN Search_Test.Search_Test_Id IS '�˻���ȸID';
COMMENT ON COLUMN Search_Test.Patient_Id IS 'ȯ�ڹ�ȣ';
COMMENT ON COLUMN Search_Test.Receive_Id IS '����ID';
COMMENT ON COLUMN Search_Test.Prescription_Id IS 'ó��ID';
COMMENT ON COLUMN Search_Test.injec_id IS '�˻�ID';
COMMENT ON COLUMN Search_Test.Image IS '�̹���';
COMMENT ON COLUMN Search_Test.User_Id IS '�ǵ��ǻ�ID';
COMMENT ON COLUMN Search_Test.Opinion IS '�ǵ��Ұ�';
COMMENT ON COLUMN Search_Test.Upload_Date IS '�ǵ���¥';
COMMENT ON TABLE Set_Receipt IS 'setó��';
COMMENT ON COLUMN Set_Receipt.Set_Id IS '���ID';
COMMENT ON COLUMN Set_Receipt.Set_Code IS '����ڵ�';
COMMENT ON COLUMN Set_Receipt.Set_Name IS '��Ӹ�';
COMMENT ON COLUMN Set_Receipt.Depart_Id IS '�μ�ID';
COMMENT ON COLUMN Set_Receipt.Prescription_Type IS 'ó��Ÿ��';
COMMENT ON COLUMN Set_Receipt.drug_id IS '��ǰID';
COMMENT ON COLUMN Set_Receipt.Days IS '�� �����ϼ�';
COMMENT ON COLUMN Set_Receipt.One_Dosage IS '1ȸ ������';
COMMENT ON COLUMN Set_Receipt.Day_Dosage IS '1�� ������';
COMMENT ON COLUMN Set_Receipt.injec_id IS '�˻�ID';
COMMENT ON COLUMN Set_Receipt.Update_date IS '��ϳ�¥';
COMMENT ON TABLE staff IS '����';
COMMENT ON COLUMN staff.User_Id IS '����ID';
COMMENT ON COLUMN staff.Password IS '��й�ȣ';
COMMENT ON COLUMN staff.User_Name IS '�����̸�';
COMMENT ON COLUMN staff.jumin1 IS '�ֹι�ȣ��';
COMMENT ON COLUMN staff.jumin2 IS '�ֹι�ȣ��';
COMMENT ON COLUMN staff.Sex IS '����';
COMMENT ON COLUMN staff.Phone IS '����ó';
COMMENT ON COLUMN staff.Depart_Id IS '�μ�ID';
COMMENT ON TABLE suga IS '����';
COMMENT ON COLUMN suga.Suga_Id IS '����ID';
COMMENT ON COLUMN suga.Class_Num IS '�з���ȣ';
COMMENT ON COLUMN suga.Suga_Name_Kor IS '������(�ѱ�)';
COMMENT ON COLUMN suga.Suga_Name_Eng IS '������(����)';
COMMENT ON COLUMN suga.Compute_Name IS '������Ī';
COMMENT ON COLUMN suga.Unit_Cost IS '�ܰ�';
COMMENT ON COLUMN suga.Relative_Value_P IS '��밡ġ����';
COMMENT ON COLUMN suga.Pay_NonPay IS '�޿�/��޿�';
COMMENT ON COLUMN suga.Apply_Date IS '���������';



