package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ReceiptDataBean implements Serializable{
	private String receipt_id;
	private String receive_id;
	private String suga_id;
	private String detail_name;
	private int patients_cost;
	private int corporation_cost;
	private int all_patientcost;
	private String select_pay;
	private String receiptyn;
	private Timestamp receipt_date;
	
	private String suga_name_kor;
	private String pay_nonpay;
	private String prescription_id;


	public String getPrescription_id() {
		return prescription_id;
	}
	public void setPrescription_id(String prescription_id) {
		this.prescription_id = prescription_id;
	}
	@Override
	public String toString() {
		return "ReceiptDataBean [receipt_id=" + receipt_id + ", receive_id="
				+ receive_id + ", suga_id=" + suga_id + ", detail_name="
				+ detail_name + ", patients_cost=" + patients_cost
				+ ", corporation_cost=" + corporation_cost
				+ ", all_patientcost=" + all_patientcost + ", select_pay="
				+ select_pay + ", receiptyn=" + receiptyn + ", receipt_date="
				+ receipt_date + ", suga_name_kor=" + suga_name_kor
				+ ", pay_nonpay=" + pay_nonpay + ", prescription_id="
				+ prescription_id + "]";
	}
	public String getReceipt_id() {
		return receipt_id;
	}
	public void setReceipt_id(String receipt_id) {
		this.receipt_id = receipt_id;
	}
	public String getReceive_id() {
		return receive_id;
	}
	public void setReceive_id(String receive_id) {
		this.receive_id = receive_id;
	}
	public String getSuga_id() {
		return suga_id;
	}
	public void setSuga_id(String suga_id) {
		this.suga_id = suga_id;
	}
	public String getDetail_name() {
		return detail_name;
	}
	public void setDetail_name(String detail_name) {
		this.detail_name = detail_name;
	}
	public int getPatients_cost() {
		return patients_cost;
	}
	public void setPatients_cost(int patients_cost) {
		this.patients_cost = patients_cost;
	}
	public int getCorporation_cost() {
		return corporation_cost;
	}
	public void setCorporation_cost(int corporation_cost) {
		this.corporation_cost = corporation_cost;
	}
	public int getAll_patientcost() {
		return all_patientcost;
	}
	public void setAll_patientcost(int all_patientcost) {
		this.all_patientcost = all_patientcost;
	}
	public String getSelect_pay() {
		return select_pay;
	}
	public void setSelect_pay(String select_pay) {
		this.select_pay = select_pay;
	}
	public String getReceiptyn() {
		return receiptyn;
	}
	public void setReceiptyn(String receiptyn) {
		this.receiptyn = receiptyn;
	}
	public Timestamp getReceipt_date() {
		return receipt_date;
	}
	public void setReceipt_date(Timestamp receipt_date) {
		this.receipt_date = receipt_date;
	}
	public String getSuga_name_kor() {
		return suga_name_kor;
	}
	public void setSuga_name_kor(String suga_name_kor) {
		this.suga_name_kor = suga_name_kor;
	}
	public String getPay_nonpay() {
		return pay_nonpay;
	}
	public void setPay_nonpay(String pay_nonpay) {
		this.pay_nonpay = pay_nonpay;
	}
	
	
	
}
