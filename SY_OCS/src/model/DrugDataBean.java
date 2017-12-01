package model;

import java.io.Serializable;

public class DrugDataBean implements Serializable{
	private String drug_id;
	private int drug_cost;
	private String drug_name;
	private String inject_course;
	private String company_name;
	private String standard;
	private String drug_unit;
	private String spyn;
	public String toString() {
		return drug_id + "," + drug_name + "," + drug_unit;
	}
	public String getDrug_id() {
		return drug_id;
	}
	public void setDrug_id(String drug_id) {
		this.drug_id = drug_id;
	}
	public int getDrug_cost() {
		return drug_cost;
	}
	public void setDrug_cost(int drug_cost) {
		this.drug_cost = drug_cost;
	}
	public String getDrug_name() {
		return drug_name;
	}
	public void setDrug_name(String drug_name) {
		this.drug_name = drug_name;
	}
	public String getInject_course() {
		return inject_course;
	}
	public void setInject_course(String inject_course) {
		this.inject_course = inject_course;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getStandard() {
		return standard;
	}
	public void setStandard(String standard) {
		this.standard = standard;
	}
	public String getDrug_unit() {
		return drug_unit;
	}
	public void setDrug_unit(String drug_unit) {
		this.drug_unit = drug_unit;
	}
	public String getSpyn() {
		return spyn;
	}
	public void setSpyn(String spyn) {
		this.spyn = spyn;
	}
}
