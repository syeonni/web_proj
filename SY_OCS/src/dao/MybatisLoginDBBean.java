package dao;

import java.util.HashMap;

import model.BoardDataBean;
import model.StaffDataBean;

import org.apache.ibatis.session.SqlSession;

public class MybatisLoginDBBean extends MybatisConnector{
	private final String namespace = "login.mybatis";
	private static MybatisLoginDBBean instance = new MybatisLoginDBBean();

	public static MybatisLoginDBBean getInstance(){
		return instance;
	}
	SqlSession sqlSession;

	public int loginCheck(String id, String passwd) throws Exception{
		sqlSession = sqlSession();
		HashMap map = new HashMap();
		map.put("user_id", id);
		int x = -1;
		try{
			String dbpasswd = (String)sqlSession.selectOne(namespace + ".loginCheck_passwd",map);


			if(dbpasswd.equals(passwd)){
				x = 1;
			}else{
				x = 0;
			}
		}finally{
			sqlSession.commit();
			sqlSession.close();
			return x;
		}
	}

	public StaffDataBean getStaffDataBean(String id) throws Exception{
		sqlSession = sqlSession();
		HashMap map = new HashMap();
		map.put("user_id", id);
		StaffDataBean staff = new StaffDataBean();
		try{
			staff = (StaffDataBean)sqlSession.selectOne(namespace+".getStaff",map);
		}finally{
			sqlSession.commit();
			sqlSession.close();
			return staff;
		}
	}

	public int pageDivide(String id) {
		sqlSession = sqlSession();
		HashMap map = new HashMap();
		map.put("user_id", id);
		int pageDivide = -1;
		String depart_id;
		try{
			depart_id = sqlSession.selectOne(namespace+".getStaffDepartId",map);
			if(depart_id.equals("3"))
				pageDivide = 1;
			else
				pageDivide = 2;
		}finally{
			sqlSession.close();
			return pageDivide;
		}
		
	}
	
	
}
