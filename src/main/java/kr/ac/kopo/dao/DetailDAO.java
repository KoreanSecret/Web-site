package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.dao.BatisConfig.DetailBatisConfig;
import kr.ac.kopo.vo.DetailResponseVO;
import kr.ac.kopo.vo.DetailVO;

public class DetailDAO {
    private SqlSession session;

    public DetailDAO() {
        session = new DetailBatisConfig().getInstance();
        System.out.println("session : " + session);
    }

    public void insert(DetailVO detail) {
        try {
            session.insert("kr.ac.kopo.dao.PostDAO.DetailDAO.insertDetail", detail);
            session.commit();
            System.out.println("댓글 등록 완료...");
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback();
            System.out.println("댓글 등록 중 오류 발생...");
        } finally {
            //session.close();
        }
    }

    public List<DetailResponseVO> selectAll(String write_no) {
    	List<DetailResponseVO> comments = null;
    	int writeNo = Integer.parseInt(write_no);
        try {
            comments = session.selectList("kr.ac.kopo.dao.PostDAO.DetailDAO.selectAll", writeNo);
        } catch (Exception e) {
            System.out.println("selectAll() 에러발생");
            e.printStackTrace();
        }
        return comments;
    }
}
