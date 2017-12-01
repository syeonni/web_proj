package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class SugaDataBean implements Serializable{
	private String suga_id;
	private String class_num;
	private String suga_name_kor;
	private String suga_name_eng;
	private String compute_name;
	private int unit_cost;
	private String relative_value_p;
	private String pay_nonpay;
	private Timestamp apply_date;
	public String getSuga_id() {
		return suga_id;
	}
	public void setSuga_id(String suga_id) {
		this.suga_id = suga_id;
	}
	public String getClass_num() {
		return class_num;
	}
	public void setClass_num(String class_num) {
		this.class_num = class_num;
	}
	public String getSuga_name_kor() {
		return suga_name_kor;
	}
	public void setSuga_name_kor(String suga_name_kor) {
		this.suga_name_kor = suga_name_kor;
	}
	public String getSuga_name_eng() {
		return suga_name_eng;
	}
	public void setSuga_name_eng(String suga_name_eng) {
		this.suga_name_eng = suga_name_eng;
	}
	public String getCompute_name() {
		return compute_name;
	}
	public void setCompute_name(String compute_name) {
		this.compute_name = compute_name;
	}
	public int getUnit_cost() {
		return unit_cost;
	}
	public void setUnit_cost(int unit_cost) {
		this.unit_cost = unit_cost;
	}
	public String getRelative_value_p() {
		return relative_value_p;
	}
	public void setRelative_value_p(String relative_value_p) {
		this.relative_value_p = relative_value_p;
	}
	public String getPay_nonpay() {
		return pay_nonpay;
	}
	public void setPay_nonpay(String pay_nonpay) {
		this.pay_nonpay = pay_nonpay;
	}
	public Timestamp getApply_date() {
		return apply_date;
	}
	public void setApply_date(Timestamp apply_date) {
		this.apply_date = apply_date;
	}
}
