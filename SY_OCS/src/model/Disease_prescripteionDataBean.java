package model;

import java.io.Serializable;

public class Disease_prescripteionDataBean implements Serializable{
	private String disease_pres_id;
	private String receive_id;
	private String disease_id;
	private String maindisesyn;
	private String ro_yn;
	
	
	
	
	@Override
	public String toString() {
		return "Disease_prescripteionDataBean [disease_pres_id="
				+ disease_pres_id + ", receive_id=" + receive_id
				+ ", disease_id=" + disease_id + ", maindisesyn=" + maindisesyn
				+ ", ro_yn=" + ro_yn + "]";
	}
	public String getDisease_pres_id() {
		return disease_pres_id;
	}
	public void setDisease_pres_id(String disease_pres_id) {
		this.disease_pres_id = disease_pres_id;
	}
	public String getReceive_id() {
		return receive_id;
	}
	public void setReceive_id(String receive_id) {
		this.receive_id = receive_id;
	}
	public String getDisease_id() {
		return disease_id;
	}
	public void setDisease_id(String disease_id) {
		this.disease_id = disease_id;
	}
	public String getMaindisesyn() {
		return maindisesyn;
	}
	public void setMaindisesyn(String maindisesyn) {
		this.maindisesyn = maindisesyn;
	}
	public String getRo_yn() {
		return ro_yn;
	}
	public void setRo_yn(String ro_yn) {
		this.ro_yn = ro_yn;
	}
}
