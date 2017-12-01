package model;

public class Pre_HistoryDataBean {
	String h_receive_id;
	String h_patient_id;
	String h_patient_name;
	String h_div;
	String h_code;
	String h_preName;
	
	
	
	@Override
	public String toString() {
		return "Pre_HistoryDataBean [h_receive_id=" + h_receive_id
				+ ", h_patient_id=" + h_patient_id + ", h_patient_name="
				+ h_patient_name + ", h_div=" + h_div + ", h_code=" + h_code
				+ ", h_preName=" + h_preName + "]";
	}
	
	
	public String getH_receive_id() {
		return h_receive_id;
	}
	public void setH_receive_id(String h_receive_id) {
		this.h_receive_id = h_receive_id;
	}
	public String getH_patient_id() {
		return h_patient_id;
	}
	public void setH_patient_id(String h_patient_id) {
		this.h_patient_id = h_patient_id;
	}
	public String getH_patient_name() {
		return h_patient_name;
	}
	public void setH_patient_name(String h_patient_name) {
		this.h_patient_name = h_patient_name;
	}
	public String getH_div() {
		return h_div;
	}
	public void setH_div(String h_div) {
		this.h_div = h_div;
	}
	public String getH_code() {
		return h_code;
	}
	public void setH_code(String h_code) {
		this.h_code = h_code;
	}
	public String getH_preName() {
		return h_preName;
	}
	public void setH_preName(String h_preName) {
		this.h_preName = h_preName;
	}
	
	
	
}
