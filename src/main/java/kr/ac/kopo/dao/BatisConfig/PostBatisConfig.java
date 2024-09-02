package kr.ac.kopo.dao.BatisConfig;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class PostBatisConfig {
	
	private SqlSession session;
	
	public PostBatisConfig() {
		
		String resource = "postbatis-config.xml";
		try {
			InputStream inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			session = sqlSessionFactory.openSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public SqlSession getInstance() {
		return session;
	}
}
