package model;

import java.io.Serializable;

public class InjectionDataBean implements Serializable{
	private String injec_id;
	private String group_num;
	private String injec_name_kor;
	private String injec_name_ent;
	
	
	@Override
	public String toString() {
		return injec_id + ","+injec_name_kor;
	}
	
	public String getInjec_id() {
		return injec_id;
	}
	public void setInjec_id(String injec_id) {
		this.injec_id = injec_id;
	}
	public String getGroup_num() {
		return group_num;
	}
	public void setGroup_num(String group_num) {
		this.group_num = group_num;
	}
	public String getInjec_name_kor() {
		return injec_name_kor;
	}
	public void setInjec_name_kor(String injec_name_kor) {
		this.injec_name_kor = injec_name_kor;
	}
	public String getInjec_name_ent() {
		return injec_name_ent;
	}
	public void setInjec_name_ent(String injec_name_ent) {
		this.injec_name_ent = injec_name_ent;
	}
}
