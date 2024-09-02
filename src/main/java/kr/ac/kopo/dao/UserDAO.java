package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.dao.BatisConfig.MyBatisConfig;
import kr.ac.kopo.vo.UserVO;

public class UserDAO {

    private SqlSession session;

    public UserDAO() {
        session = new MyBatisConfig().getInstance();
        System.out.println("session : " + session);
    }

    /**
     * 사용자 정보 삽입
     * @param user 삽입할 사용자 정보
     */
    public void insertUser(UserVO user) {
        System.out.println(user);
        session.insert("kr.ac.kopo.dao.UserDAO.insertUser", user);
        session.commit();
        System.out.println("회원가입 성공");
    }

    public UserVO loginUser(UserVO user) {
        System.out.println("로그인 체크");
        UserVO loginUser = session.selectOne("kr.ac.kopo.dao.UserDAO.loginUser", user);
        System.out.println(loginUser);
        if(loginUser == null) {
            System.out.println("로그인실패");
            return null;
        } else {
            System.out.println("로그인성공");
            return loginUser;
        }
    }

    public void selectAll() {
        List<UserVO> list = session.selectList("kr.ac.kopo.dao.UserDAO.selectAll");
        for(UserVO user : list) {
            System.out.println(user);
        }
    }

    public void selectOne() {
        Map<String, Object> map = session.selectOne("kr.ac.kopo.dao.UserDAO.selectByNo", 1);
        Set<String> keys = map.keySet();
        for(String key : keys) {
            System.out.println(key + " : " + map.get(key));
        }
    }
}
