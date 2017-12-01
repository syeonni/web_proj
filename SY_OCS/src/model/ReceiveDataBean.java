package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ReceiveDataBean implements Serializable{
	private String receive_id;
	private String patient_id;
	private String user_id;
	private Timestamp receive_date;
	private String fmyn;
	private String treat_status;
	private String receipt_yn;
	
	@Override
	public String toString() {
		return "ReceiveDataBean [receive_id=" + receive_id + ", patient_id="
				+ patient_id + ", user_id=" + user_id + ", receive_date="
				+ receive_date + ", fmyn=" + fmyn + ", treat_status="
				+ treat_status + ", receipt_yn=" + receipt_yn + "]";
	}
	public String getReceive_id() {
		return receive_id;
	}
	public void setReceive_id(String receive_id) {
		this.receive_id = receive_id;
	}
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public Timestamp getReceive_date() {
		return receive_date;
	}
	public void setReceive_date(Timestamp receive_date) {
		this.receive_date = receive_date;
	}
	public String getFmyn() {
		return fmyn;
	}
	public void setFmyn(String fmyn) {
		this.fmyn = fmyn;
	}
	public String getTreat_status() {
		return treat_status;
	}
	public void setTreat_status(String treat_status) {
		this.treat_status = treat_status;
	}
	public String getReceipt_yn() {
		return receipt_yn;
	}
	public void setReceipt_yn(String receipt_yn) {
		this.receipt_yn = receipt_yn;
	}
	
}
