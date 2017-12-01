package dao;

import java.util.HashMap;
import java.util.List;

import model.PatientDataBean;
import model.ReceiptDataBean;
import model.ReceiveDataBean;

import org.apache.ibatis.session.SqlSession;

public class MybatisOnDBBean extends MybatisConnector{
	private final String namespace = "on.mybatis";
	private static MybatisOnDBBean instance = new MybatisOnDBBean();

	public static MybatisOnDBBean getInstance(){
		return instance;
	}
	SqlSession sqlSession;

	public List getDepartments() {
		sqlSession = sqlSession();
		System.out.println("getDepartments===");
		try{
			
			return sqlSession.selectList(namespace + ".getDepartments");
		}finally{
			sqlSession.close();
		}
	}

	public void insertPatient(PatientDataBean patient) {
		sqlSession = sqlSession();
		System.out.println("insertPatient: ");
		try{
			HashMap map = new HashMap();
			map.put("patient", patient);
			String pcnt = sqlSession.selectOne(namespace + ".insert_readcount") + "";
			int a = Integer.parseInt(pcnt)+1;
			pcnt = a + "";
			map.put("pcnt", pcnt);
			int result = sqlSession.insert(namespace + ".insertPatient_insert", map);
			System.out.println("insert Ok:"+result);
		}finally{
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public int getPatientCount() {
		sqlSession = sqlSession();
		System.out.println("getPatientCount");
		try{
			return sqlSession.selectOne(namespace + ".getPatientCount");
		}finally{
			sqlSession.close();
		}
	}

	public List getPatients(String value, String condition) {
		sqlSession = sqlSession();
		System.out.println("getPatients");
		try{
			String conditionV;
			if(condition.equals("patient_name")){ //이름
				conditionV = "patient_name";
			}else if(condition.equals("patient_jumin")){ //생년월일
				conditionV = "jumin1";
			}else{ //번호
				conditionV = "patient_id";
			}
			System.out.println("value"+value);
			System.out.println("conditionV"+conditionV);
			
			HashMap map = new HashMap();	
			map.put("value", value);
			map.put("conditionV", conditionV);
			
			return sqlSession.selectList(namespace + ".getPatients", map);
		}finally{
			sqlSession.close();
		}
	}

	public PatientDataBean getPatient(String patient_id) {
		sqlSession = sqlSession();
		System.out.println("getPatient===");
		try{
			
			return (PatientDataBean)sqlSession.selectOne(namespace + ".getPatient", patient_id);
		}finally{
			sqlSession.close();
		}
	}

	public String getPatient_fr(String patient_id) {
		sqlSession = sqlSession();
		System.out.println("getPatient_fr===");
		String fr = "";
		try{
			int cnt = sqlSession.selectOne(namespace + ".getPatient_fr", patient_id);
			if(cnt == 0){
				fr = "초진";
			}else{
				fr = "재진";
			}
			
		}finally{
			sqlSession.close();
		}
		
		return fr;
	}
	
	public String getDepart_name(String depart_id) {
		sqlSession = sqlSession();
		System.out.println("getDepart_name===");
		try{
			String cnt = sqlSession.selectOne(namespace + ".getDepart_name", depart_id);
			return cnt;
		}finally{
			sqlSession.close();
		}
		
	}

	public void insertReceive(ReceiveDataBean receive) {
		sqlSession = sqlSession();
		System.out.println("insertReceive: " + receive);
		System.out.println("receive.getPatient_id(): " + receive.getPatient_id());
		try{
			HashMap map = new HashMap();
			map.put("receive", receive);
			String rcnt = sqlSession.selectOne(namespace + ".insertReceive_readcount") + "";
			int a = Integer.parseInt(rcnt)+1;
			rcnt = a + "";
			map.put("rcnt", rcnt);
			int result = sqlSession.insert(namespace + ".insertReceive_insert", map);
			System.out.println("insert Ok:"+result);
		}finally{
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public List getReceivesN(String patient_id) {
		sqlSession = sqlSession();
		System.out.println("getReceivesN===");
		try{
			HashMap map = new HashMap();
			map.put("patient_id", patient_id);
			return sqlSession.selectList(namespace + ".getReceivesN",map);
		}finally{
			sqlSession.close();
		}
	}

	public void insertReceipt(ReceiptDataBean receipt) {
		sqlSession = sqlSession();
		try{
			HashMap map = new HashMap();
			map.put("receipt", receipt);
			String rcnt = sqlSession.selectOne(namespace + ".insertReceipt_readcount") + "";
			int a = Integer.parseInt(rcnt)+1;
			rcnt = a + "";
			map.put("rcnt", rcnt);
			int result = sqlSession.insert(namespace + ".insertReceipt", map);
			System.out.println("insert Ok:"+result);
			int result2 = sqlSession.insert(namespace + ".update_receive_receipt", map);
			System.out.println("update Ok:"+result2);
		}finally{
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public List getReceiptList(String patient_id) {
		sqlSession = sqlSession();
		System.out.println("getReceiptList===");
		try{
			HashMap map = new HashMap();
			map.put("patient_id", patient_id);
			return sqlSession.selectList(namespace + ".getReceiptList",map);
		}finally{
			sqlSession.close();
		}
	}

	public List getInjectsListN(String patient_id) {
		sqlSession = sqlSession();
		System.out.println("getInjectsListN===");
		try{
			HashMap map = new HashMap();
			map.put("patient_id", patient_id);
			return sqlSession.selectList(namespace + ".getInjectsListN",map);
		}finally{
			sqlSession.close();
		}
	}

	public void insertReceipt2(ReceiptDataBean receipt) {
		sqlSession = sqlSession();
		try{
			HashMap map = new HashMap();
			map.put("receipt", receipt);
			String rcnt = sqlSession.selectOne(namespace + ".insertReceipt_readcount") + "";
			int a = Integer.parseInt(rcnt)+1;
			rcnt = a + "";
			map.put("rcnt", rcnt);
			int result = sqlSession.insert(namespace + ".insertReceipt2", map);
			System.out.println("insert Ok:"+result);
			int result2 = sqlSession.insert(namespace + ".update_prescription_receipt", map);
			System.out.println("update Ok:"+result2);
		}finally{
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public void updateReceiptY(String receipt_id) {
		sqlSession = sqlSession();
		try{
			HashMap map = new HashMap();
			map.put("receipt_id", receipt_id);
			
			int result = sqlSession.insert(namespace + ".updateReceiptY_rec", map);
			//System.out.println("update Ok:"+result);
			int result2 = sqlSession.insert(namespace + ".updateReceiptY_pre", map);
			//System.out.println("update2 Ok:"+result2);
		}finally{
			sqlSession.commit();
			sqlSession.close();
		}
	}

}
