package model;

import java.io.Serializable;

public class DiseaseDataBean implements Serializable{
	private String disease_id;
	private String disease_code;
	private String disease_name_kor;
	private String disease_name_eng;
	
	@Override
	public String toString() {
		return disease_code + "," + disease_name_kor;
	}
	public String getDisease_id() {
		return disease_id;
	}
	public void setDisease_id(String disease_id) {
		this.disease_id = disease_id;
	}
	public String getDisease_code() {
		return disease_code;
	}
	public void setDisease_code(String disease_code) {
		this.disease_code = disease_code;
	}
	public String getDisease_name_kor() {
		return disease_name_kor;
	}
	public void setDisease_name_kor(String disease_name_kor) {
		this.disease_name_kor = disease_name_kor;
	}
	public String getDisease_name_eng() {
		return disease_name_eng;
	}
	public void setDisease_name_eng(String disease_name_eng) {
		this.disease_name_eng = disease_name_eng;
	}
}
