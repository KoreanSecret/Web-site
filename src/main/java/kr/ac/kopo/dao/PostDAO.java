package kr.ac.kopo.dao;

import java.util.List;
//import java.util.Map;
//import java.util.Set;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.dao.BatisConfig.PostBatisConfig;
import kr.ac.kopo.vo.PostVO;
import kr.ac.kopo.vo.UserVO;

public class PostDAO {

    private SqlSession session;

    public PostDAO() {
        session = new PostBatisConfig().getInstance();
        System.out.println("session : " + session);
    }

    public UserVO loginUser(UserVO user) {
        return session.selectOne("kr.ac.kopo.dao.UserDAO.loginUser", user);
    }

    public void insert(PostVO post) {
        session.insert("kr.ac.kopo.user.dao.PostDAO.insertPost", post);
        session.commit();
        System.out.println("글 등록 완료...");
    }

    public List<PostVO> selectAll() {
        
        try {
        	List<PostVO> list = session.selectList("kr.ac.kopo.dao.PostDAO.selectAll");
        	System.out.println("selectAll 성공");
        	return list;
		} catch (Exception e) {
			System.out.println("selectAll 실패"); 
			return null;
		}
        
    }
//    public void selectOne() {
//        Map<String, Object> map = session.selectOne("kr.ac.kopo.dao.PostDAO.PostDAO.selectByNo", 1);
//        Set<String> keys = map.keySet();
//        for(String key : keys) {
//            System.out.println(key + " : " + map.get(key));
//        }
//    }
}
