
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



-- �˻�
CREATE TABLE injection
(
	-- �˻�ID
	injec_id varchar2(20) NOT NULL,
	-- �з���ȣ
	Group_Num varchar2(50),
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
	Image blob,
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





