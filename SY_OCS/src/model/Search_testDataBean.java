package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class Search_testDataBean implements Serializable{
	private String search_test_id;
	private String patient_id;
	private String receive_id;
	private String prescription_id;
	private String injec_id;
	private String image;
	private String user_id;
	private String opinion;
	private Timestamp upload_date;
	
	
	
	@Override
	public String toString() {
		return "Search_testDataBean [search_test_id=" + search_test_id
				+ ", patient_id=" + patient_id + ", receive_id=" + receive_id
				+ ", prescription_id=" + prescription_id + ", injec_id="
				+ injec_id + ", image=" + image + ", user_id=" + user_id
				+ ", opinion=" + opinion + ", upload_date=" + upload_date + "]";
	}
	public String getSearch_test_id() {
		return search_test_id;
	}
	public void setSearch_test_id(String search_test_id) {
		this.search_test_id = search_test_id;
	}
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public String getReceive_id() {
		return receive_id;
	}
	public void setReceive_id(String receive_id) {
		this.receive_id = receive_id;
	}
	public String getPrescription_id() {
		return prescription_id;
	}
	public void setPrescription_id(String prescription_id) {
		this.prescription_id = prescription_id;
	}
	public String getInjec_id() {
		return injec_id;
	}
	public void setInjec_id(String injec_id) {
		this.injec_id = injec_id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getOpinion() {
		return opinion;
	}
	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}
	public Timestamp getUpload_date() {
		return upload_date;
	}
	public void setUpload_date(Timestamp upload_date) {
		this.upload_date = upload_date;
	}
}
