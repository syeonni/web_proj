package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class Set_receiptDataBean implements Serializable{
	private String set_id;
	private String set_code;
	private String set_name;
	private String depart_id;
	private String prescription_type;
	private String drug_id;
	private int days;
	private int one_dosage;
	private int day_dosage;
	private String injec_id;
	private Timestamp update_date;
	public String getSet_id() {
		return set_id;
	}
	public void setSet_id(String set_id) {
		this.set_id = set_id;
	}
	public String getSet_code() {
		return set_code;
	}
	public void setSet_code(String set_code) {
		this.set_code = set_code;
	}
	public String getSet_name() {
		return set_name;
	}
	public void setSet_name(String set_name) {
		this.set_name = set_name;
	}
	public String getDepart_id() {
		return depart_id;
	}
	public void setDepart_id(String depart_id) {
		this.depart_id = depart_id;
	}
	public String getPrescription_type() {
		return prescription_type;
	}
	public void setPrescription_type(String prescription_type) {
		this.prescription_type = prescription_type;
	}
	public String getDrug_id() {
		return drug_id;
	}
	public void setDrug_id(String drug_id) {
		this.drug_id = drug_id;
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
	public Timestamp getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Timestamp update_date) {
		this.update_date = update_date;
	}
}
