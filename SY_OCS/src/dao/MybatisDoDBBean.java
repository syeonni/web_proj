package dao;

import java.util.HashMap;
import java.util.List;

import model.Disease_prescripteionDataBean;
import model.InjectionDataBean;
import model.PatientDataBean;
import model.PrescriptionDataBean;
import model.ReceiveDataBean;
import model.Search_testDataBean;

import org.apache.ibatis.session.SqlSession;

public class MybatisDoDBBean extends MybatisConnector{
	private final String namespace = "do.mybatis";
	private static MybatisDoDBBean instance = new MybatisDoDBBean();

	public static MybatisDoDBBean getInstance(){
		return instance;
	}
	SqlSession sqlSession;

	public List getReceives(String user_id) {
		sqlSession = sqlSession();
		System.out.println("getReceives===");
		try{
			HashMap map = new HashMap();
			map.put("user_id", user_id);
			return sqlSession.selectList(namespace + ".getReceives",map);
		}finally{
			sqlSession.close();
		}
	}

	public PatientDataBean getPatient(String receive_id) {
		sqlSession = sqlSession();
		System.out.println("getPatient===");
		try{
			HashMap map = new HashMap();
			map.put("receive_id", receive_id);
			return sqlSession.selectOne(namespace + ".getPatient",map);
		}finally{
			sqlSession.close();
		}
	}


	public ReceiveDataBean getReceive(String patient_id, String user_id) {
		sqlSession = sqlSession();
		System.out.println("getReceive===");
		try{
			HashMap map = new HashMap();
			map.put("patient_id", patient_id);
			map.put("user_id", user_id);
			return sqlSession.selectOne(namespace + ".getReceive",map);
		}finally{
			sqlSession.close();
		}
	}

	public void insert_dprescription(Disease_prescripteionDataBean dpdb) {
		sqlSession = sqlSession();
		System.out.println("insert_dprescription===");
		try{
			HashMap map = new HashMap();
			map.put("dpdb", dpdb);
			String pcnt = sqlSession.selectOne(namespace + ".dpre_readcount") + "";
			int a = Integer.parseInt(pcnt)+1;
			pcnt = a + "";
			map.put("pcnt", pcnt);
			int result = sqlSession.insert(namespace + ".insert_dprescription", map);
			System.out.println("insert Ok:"+result);
		}finally{
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public void insert_prescription(PrescriptionDataBean pdb) {
		// TODO Auto-generated method stub
		sqlSession = sqlSession();
		System.out.println("insert_prescription===");
		try{
			HashMap map = new HashMap();
			map.put("pdb", pdb);
			String pcnt = sqlSession.selectOne(namespace + ".pre_readcount") + "";
			int a = Integer.parseInt(pcnt)+1;
			pcnt = a + "";
			map.put("pcnt", pcnt);
			System.out.println("dd"+pcnt);
			int result = sqlSession.insert(namespace + ".insert_prescription", map);
			System.out.println("insert Ok:"+result);
		}finally{
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public void update_receive(String receive_id) {
		sqlSession = sqlSession();
		System.out.println("update_receive===");
		try{
			HashMap map = new HashMap();
			map.put("receive_id", receive_id);
			int result = sqlSession.insert(namespace + ".update_receive", map);
			System.out.println("update Ok:"+result);
		}finally{
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public List selectRecive(String user_id) {
		sqlSession = sqlSession();
		//System.out.println("selectRecive===");
		try{
			HashMap map = new HashMap();
			map.put("user_id", user_id);
			return sqlSession.selectList(namespace + ".selectRecive",map);
		}finally{
			sqlSession.close();
		}
	}

	public List selectPrescription(String receive_id) {
		sqlSession = sqlSession();
		//System.out.println("selectPrescription===");
		try{
			HashMap map = new HashMap();
			map.put("receive_id", receive_id);
			return sqlSession.selectList(namespace + ".selectPrescription",map);
		}finally{
			sqlSession.close();
		}
	}

	public List selectDPrescription(String receive_id) {
		sqlSession = sqlSession();
		//System.out.println("selectPrescription===");
		try{
			HashMap map = new HashMap();
			map.put("receive_id", receive_id);
			return sqlSession.selectList(namespace + ".selectDPrescription",map);
		}finally{
			sqlSession.close();
		}
	}

	public String getPatientName(String patient_id) {
		sqlSession = sqlSession();
		//System.out.println("getPatientName===");
		try{
			HashMap map = new HashMap();
			map.put("patient_id", patient_id);
			return sqlSession.selectOne(namespace + ".getPatientName",map);
		}finally{
			sqlSession.close();
		}
	}

	public String getMedicineName(String drug_id) {
		sqlSession = sqlSession();
		//System.out.println("getMedicineName===");
		try{
			HashMap map = new HashMap();
			map.put("drug_id", drug_id);
			return sqlSession.selectOne(namespace + ".getMedicineName",map);
		}finally{
			sqlSession.close();
		}
	}

	public String getInjecName(String injec_id) {
		sqlSession = sqlSession();
		//System.out.println("getInjecName===");
		try{
			HashMap map = new HashMap();
			map.put("injec_id", injec_id);
			return sqlSession.selectOne(namespace + ".getInjecName",map);
		}finally{
			sqlSession.close();
		}
	}

	public String getDiseaseName(String disease_id) {
		sqlSession = sqlSession();
		//System.out.println("getDiseaseName===");
		try{
			HashMap map = new HashMap();
			map.put("disease_id", disease_id);
			return sqlSession.selectOne(namespace + ".getDiseaseName",map);
		}finally{
			sqlSession.close();
		}
	}

	public List getdiPrescription(String patient_id) {
		sqlSession = sqlSession();
		try{
			HashMap map = new HashMap();
			map.put("patient_id", patient_id);
			return sqlSession.selectList(namespace + ".getdiPrescription",map);
		}finally{
			sqlSession.close();
		}
	}

	public List getdrPrecription(String patient_id) {
		sqlSession = sqlSession();
		try{
			HashMap map = new HashMap();
			map.put("patient_id", patient_id);
			return sqlSession.selectList(namespace + ".getdrPrecription",map);
		}finally{
			sqlSession.close();
		}
	}

	public List getinPrecription(String patient_id) {
		sqlSession = sqlSession();
		try{
			HashMap map = new HashMap();
			map.put("patient_id", patient_id);
			return sqlSession.selectList(namespace + ".getinPrecription",map);
		}finally{
			sqlSession.close();
		}
	}

	public List selectInjectionPrescription() {
		sqlSession = sqlSession();
		try{
			return sqlSession.selectList(namespace + ".selectInjectionPrescription");
		}finally{
			sqlSession.close();
		}
	}

	public InjectionDataBean selectChoiceInjec(String prescription_id) {
		sqlSession = sqlSession();
		try{
			HashMap map = new HashMap();
			map.put("prescription_id", prescription_id);
			return sqlSession.selectOne(namespace + ".selectChoiceInjec",map);
		}finally{
			sqlSession.close();
		}
	}

	public void insert_search_test(Search_testDataBean search_test) {
		sqlSession = sqlSession();
		try{
			HashMap map = new HashMap();
			String pcnt = sqlSession.selectOne(namespace + ".search_test_readcount") + "";
			int a = Integer.parseInt(pcnt)+1;
			pcnt = a + "";
			map.put("pcnt", pcnt);
			
			map.put("search_test", search_test);
			int result = sqlSession.insert(namespace + ".insert_search_test", map);
			System.out.println("insert Ok:"+result);
			
			int result2 = sqlSession.insert(namespace + ".update_precription", map);
			System.out.println("update Ok:"+result2);
			
		}finally{
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public List getSearch_testList(String user_id) {
		sqlSession = sqlSession();
		try{
			HashMap map = new HashMap();
			map.put("user_id", user_id);
			return sqlSession.selectList(namespace + ".getSearch_testList",map);
		}finally{
			sqlSession.close();
		}
	}

	public void update_search_test(String search_test_id,
			String search_test_opinion) {
		sqlSession = sqlSession();
		try{
			HashMap map = new HashMap();
			map.put("search_test_id", search_test_id);
			map.put("search_test_opinion", search_test_opinion);
			int result = sqlSession.insert(namespace + ".update_search_test", map);
			System.out.println("update Ok:"+result);
		}finally{
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public List getdiPrescription_patient_name(String patient_name) {
		sqlSession = sqlSession();
		try{
			HashMap map = new HashMap();
			map.put("patient_name", patient_name);
			return sqlSession.selectList(namespace + ".getdiPrescription_patient_name",map);
		}finally{
			sqlSession.close();
		}
	}

	public List getdrPrecription_patient_name(String patient_name) {
		sqlSession = sqlSession();
		try{
			HashMap map = new HashMap();
			map.put("patient_name", patient_name);
			return sqlSession.selectList(namespace + ".getdrPrecription_patient_name",map);
		}finally{
			sqlSession.close();
		}
	}

	public List getinPrecription_patient_name(String patient_name) {
		sqlSession = sqlSession();
		try{
			HashMap map = new HashMap();
			map.put("patient_name", patient_name);
			return sqlSession.selectList(namespace + ".getinPrecription_patient_name",map);
		}finally{
			sqlSession.close();
		}
	}

}
