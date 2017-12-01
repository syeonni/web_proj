package select;

import java.io.*;
import java.sql.*;
import java.util.*;
import java.util.stream.Collectors;

import model.DiseaseDataBean;
import model.DrugDataBean;
import model.InjectionDataBean;

public class Selector {
	public List selectO(String si) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String jdbcUrl = "jdbc:oracle:thin:211.238.142.120:1521:orcl";
		String dbId = "scott";
		String dbPass = "1111";
		List<String> li = new ArrayList();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

			if(si == null){
				String query = "select depart_name from department";
				stmt = conn.createStatement();
				rs = stmt.executeQuery(query);
				if(rs.next()){
					do{
						li.add(rs.getString(1));
					}while(rs.next());
				}
				return li;
			}
			else{
				String query = "select user_name from staff "
						+ "where depart_id = "
						+ "(select depart_id from department where depart_name = '"+si+"')";
				stmt = conn.createStatement();
				rs = stmt.executeQuery(query);
				if(rs.next()){
					do{
						li.add(rs.getString(1));
					}while(rs.next());
				}

				return li;
			}

		}catch(Exception e){
			e.printStackTrace();
		}
		return li;
	}
	public List selectDrugDb(String str){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String jdbcUrl = "jdbc:oracle:thin:211.238.142.120:1521:orcl";
		String dbId = "scott";
		String dbPass = "1111";
		List<DrugDataBean> li = new ArrayList();
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			String query = "select * from drug where drug_name like '%" + str + "%'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			if(rs.next()){
				do{
					DrugDataBean drug = new DrugDataBean();
					drug.setDrug_id(rs.getString("drug_id"));
					drug.setDrug_name(rs.getString("drug_name"));
					drug.setDrug_unit(rs.getString("drug_unit"));
					drug.setInject_course(rs.getString("inject_course"));
					drug.setStandard(rs.getString("standard"));
		
					li.add(drug);
				}while(rs.next());
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			return li;
		}
	}
	
	public List selectInjectionDb(String str){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String jdbcUrl = "jdbc:oracle:thin:211.238.142.120:1521:orcl";
		String dbId = "scott";
		String dbPass = "1111";
		List<InjectionDataBean> li = new ArrayList();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			String query = "select * from injection where injec_name_kor like '%" + str + "%'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			if(rs.next()){
				do{
					InjectionDataBean injection = new InjectionDataBean();
					injection.setInjec_id(rs.getString("injec_id"));
					injection.setInjec_name_kor(rs.getString("injec_name_kor"));
					li.add(injection);
				}while(rs.next());
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			return li;
		}
	}
	
	public List selectDiseaseDb(String str){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String jdbcUrl = "jdbc:oracle:thin:211.238.142.120:1521:orcl";
		String dbId = "scott";
		String dbPass = "1111";
		List<DiseaseDataBean> li = new ArrayList();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			String query = "select * from disease where disease_name_kor like '%" + str + "%'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			if(rs.next()){
				do{
					DiseaseDataBean disease = new DiseaseDataBean();
					disease.setDisease_code(rs.getString("disease_code"));
					disease.setDisease_name_kor(rs.getString("disease_name_kor"));
					li.add(disease);
				}while(rs.next());
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			return li;
		}
	}
}
