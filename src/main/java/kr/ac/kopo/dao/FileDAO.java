package kr.ac.kopo.dao;




	import java.util.Map;

	import org.apache.ibatis.session.SqlSession;
	import org.apache.ibatis.session.SqlSessionFactory;
	public class FileDAO {

	    private SqlSessionFactory sqlSessionFactory;

	    public FileDAO(SqlSessionFactory sqlSessionFactory) {
	        this.sqlSessionFactory = sqlSessionFactory;
	    }

	    public void insertFile(Map<String, Object> paramMap) {
	        try (SqlSession session = sqlSessionFactory.openSession()) {
	            session.insert("com.example.dao.UploadDAO.insertFile", paramMap);
	            session.commit();
	        }
	    }
	}