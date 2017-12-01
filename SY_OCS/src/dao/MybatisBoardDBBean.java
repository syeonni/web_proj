package dao;

import java.util.HashMap;
import java.util.List;

import model.BoardDataBean;

import org.apache.ibatis.session.SqlSession;

public class MybatisBoardDBBean extends MybatisConnector{
	private final String namespace = "ldg.mybatis";
	private static MybatisBoardDBBean instance = new MybatisBoardDBBean();

	public static MybatisBoardDBBean getInstance(){
		return instance;
	}
	SqlSession sqlSession;

	public int getArticleCount(String boardid) throws Exception{
		sqlSession = sqlSession();
		System.out.println("getArticleCount: " + boardid);
		try{
			HashMap map = new HashMap();
			map.put("boardid", boardid);
			return sqlSession.selectOne(namespace + ".getArticleCount",map);
		}finally{
			sqlSession.close();
		}
	}

	public List getArticles(int start,int end, String boardid){
		sqlSession = sqlSession();
		System.out.println("getArticles===old");
		try{
			HashMap map = new HashMap();
			map.put("start", start);
			map.put("end", end);
			map.put("boardid", boardid);
			return sqlSession.selectList(namespace + ".getArticles", map);
		}finally{
			sqlSession.close();
		}
	}

	public BoardDataBean getArticle(int num){
		sqlSession = sqlSession();
		HashMap map = new HashMap();
		map.put("num", num);
		BoardDataBean article = new BoardDataBean();
		try{
			int result = sqlSession.update(namespace + ".update_readcount",map);
			article = (BoardDataBean)sqlSession.selectOne(namespace+".getArticle",map);
		}finally{
			sqlSession.commit();
			sqlSession.close();
			return article;
		}
	}



	public void insertArticle(BoardDataBean article) {
		sqlSession = sqlSession();
		int num = article.getNum();
		int ref = article.getRef();
		int re_step = article.getRe_step();
		int re_level= article.getRe_step();


		try{
			HashMap map = new HashMap();
			int number = sqlSession.selectOne(namespace+".insertArticle_new");
			if(number != 0)
				number++;
			else 
				number = 1;
			if(num != 0){
				map.put("ref", ref);
				map.put("re_step", re_step);
				sqlSession.update(namespace + ".insertAricle_update", map);
				sqlSession.commit();
				re_step++;
				re_level++;
			}else{
				ref = number;
				re_step = 0;
				re_level = 0;
			}
			article.setNum(number);
			article.setRef(ref);
			article.setRe_step(re_step);
			article.setRe_level(re_level);
			System.out.println("insert: " + article);
			int result = sqlSession.insert(namespace + ".insertArticle_insert", article);
			System.out.println("insert Ok:"+result);
		}finally{
			sqlSession.commit();
			sqlSession.close();

		}
	}

	public int updateArticle(BoardDataBean article) throws Exception{
		sqlSession = sqlSession();
		HashMap map = new HashMap();
		map.put("num", article.getNum());
		int x = -1;
		try{
			String dbpasswd = (String)sqlSession.selectOne(namespace + ".update_passwd",map);


			if(dbpasswd.equals(article.getPasswd())){

				x = sqlSession.update(namespace + ".update_update", article);
			}
		}finally{
			sqlSession.commit();
			sqlSession.close();
			return x;
		}

	}

	public int deleteArticle(int num, String passwd) {
		sqlSession = sqlSession();
		HashMap map = new HashMap();
		map.put("num", num);
		int x = -1;
		try{
			String dbpasswd = (String)sqlSession.selectOne(namespace + ".update_passwd",map);


			if(dbpasswd.equals(passwd)){

				x = sqlSession.update(namespace + ".delete_delete",map);
			}
		}finally{
			sqlSession.commit();
			sqlSession.close();
			return x;
		}
	}
}
