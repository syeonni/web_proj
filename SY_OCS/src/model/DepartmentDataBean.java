package model;

import java.io.Serializable;

public class DepartmentDataBean implements Serializable{
	
	private String depart_id;
	private String depart_type;
	private String depart_name;
	private String phone;
	
	public String getDepart_id() {
		return depart_id;
	}
	public void setDepart_id(String depart_id) {
		this.depart_id = depart_id;
	}
	public String getDepart_type() {
		return depart_type;
	}
	public void setDepart_type(String depart_type) {
		this.depart_type = depart_type;
	}
	public String getDepart_name() {
		return depart_name;
	}
	public void setDepart_name(String depart_name) {
		this.depart_name = depart_name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
}
