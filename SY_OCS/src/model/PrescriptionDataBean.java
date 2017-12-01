package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class PrescriptionDataBean implements Serializable{
	private String prescription_id;
	private String receive_id;
	private String prescription_type;
	private int days;
	private int one_dosage;
	private int day_dosage;
	private String injec_id;
	private String drug_id;
	private String suga_id;
	private String receipt_yn;
	private Timestamp prescription_date;
	
	
	
	@Override
	public String toString() {
		return "PrescriptionDataBean [prescription_id=" + prescription_id
				+ ", receive_id=" + receive_id + ", prescription_type="
				+ prescription_type + ", days=" + days + ", one_dosage="
				+ one_dosage + ", day_dosage=" + day_dosage + ", injec_id="
				+ injec_id + ", drug_id=" + drug_id + ", suga_id=" + suga_id
				+ ", receipt_yn=" + receipt_yn + ", prescription_date="
				+ prescription_date + "]";
	}
	public String getPrescription_id() {
		return prescription_id;
	}
	public void setPrescription_id(String prescription_id) {
		this.prescription_id = prescription_id;
	}
	public String getReceive_id() {
		return receive_id;
	}
	public void setReceive_id(String receive_id) {
		this.receive_id = receive_id;
	}
	public String getPrescription_type() {
		return prescription_type;
	}
	public void setPrescription_type(String prescription_type) {
		this.prescription_type = prescription_type;
	}
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	public int getOne_dosage() {
		return one_dosage;
	}
	public void setOne_dosage(int one_dosage) {
		this.one_dosage = one_dosage;
	}
	public int getDay_dosage() {
		return day_dosage;
	}
	public void setDay_dosage(int day_dosage) {
		this.day_dosage = day_dosage;
	}
	public String getInjec_id() {
		return injec_id;
	}
	public void setInjec_id(String injec_id) {
		this.injec_id = injec_id;
	}
	public String getDrug_id() {
		return drug_id;
	}
	public void setDrug_id(String drug_id) {
		this.drug_id = drug_id;
	}
	public String getSuga_id() {
		return suga_id;
	}
	public void setSuga_id(String suga_id) {
		this.suga_id = suga_id;
	}
	public String getReceipt_yn() {
		return receipt_yn;
	}
	public void setReceipt_yn(String receipt_yn) {
		this.receipt_yn = receipt_yn;
	}
	public Timestamp getPrescription_date() {
		return prescription_date;
	}
	public void setPrescription_date(Timestamp prescription_date) {
		this.prescription_date = prescription_date;
	}
}
