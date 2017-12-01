package model;

import java.io.Serializable;

public class PatientDataBean implements Serializable{
	private String patient_id;
	private String patient_name;
	private String jumin;
	private String jumin1;
	private String patient_sex;
	private String patient_age;
	private String patient_address;
	private String patient_phone;
	private String patient_btype;
	private String patient_unusual;
	private String patient_itype;
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public String getPatient_name() {
		return patient_name;
	}
	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
	}
	public String getJumin() {
		return jumin;
	}
	public void setJumin(String jumin) {
		this.jumin = jumin;
	}
	public String getJumin1() {
		return jumin1;
	}
	public void setJumin1(String jumin1) {
		this.jumin1 = jumin1;
	}
	public String getPatient_sex() {
		return patient_sex;
	}
	public void setPatient_sex(String patient_sex) {
		this.patient_sex = patient_sex;
	}
	public String getPatient_age() {
		return patient_age;
	}
	public void setPatient_age(String patient_age) {
		this.patient_age = patient_age;
	}
	public String getPatient_address() {
		return patient_address;
	}
	public void setPatient_address(String patient_address) {
		this.patient_address = patient_address;
	}
	public String getPatient_phone() {
		return patient_phone;
	}
	public void setPatient_phone(String patient_phone) {
		this.patient_phone = patient_phone;
	}
	public String getPatient_btype() {
		return patient_btype;
	}
	public void setPatient_btype(String patient_btype) {
		this.patient_btype = patient_btype;
	}
	public String getPatient_unusual() {
		return patient_unusual;
	}
	public void setPatient_unusual(String patient_unusual) {
		this.patient_unusual = patient_unusual;
	}
	public String getPatient_itype() {
		return patient_itype;
	}
	public void setPatient_itype(String patient_itype) {
		this.patient_itype = patient_itype;
	}
	@Override
	public String toString() {
		return "PatientDataBean [patient_id=" + patient_id + ", patient_name="
				+ patient_name + ", jumin=" + jumin + ", jumin1=" + jumin1
				+ ", patient_sex=" + patient_sex + ", patient_age="
				+ patient_age + ", patient_address=" + patient_address
				+ ", patient_phone=" + patient_phone + ", patient_btype="
				+ patient_btype + ", patient_unusual=" + patient_unusual
				+ ", patient_itype=" + patient_itype + "]";
	}
	
}
