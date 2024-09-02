package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.dao.BatisConfig.WriteBatisConfig;
import kr.ac.kopo.vo.WriteVO;
import java.util.List;

public class WriteDAO {

    private SqlSession session;

    public WriteDAO() {
        session = new WriteBatisConfig().getInstance(); 
        System.out.println("session : " + session);
    }

    public void insert(WriteVO write) {
        try {
            session.insert("kr.ac.kopo.dao.WriteDAO.WriteDAO.insertWrite", write);
            session.commit();
            System.out.println("글 등록 완료...");
        } catch (Exception e) {
            e.printStackTrace();
            session.rollback(); // 예외 발생 시 롤백
            System.out.println("글 등록 중 오류 발생...");
        } finally {
            //session.close(); // 세션 닫기
        }
    }

    public List<WriteVO> selectAll() {
        List<WriteVO> list = null;
        try {
            list = session.selectList("kr.ac.kopo.dao.WriteDAO.WriteDAO.selectAll");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }   // 여기부터 추가
    public WriteVO selectOne(String no) {
        WriteVO write = null;
        try {
            write = session.selectOne("kr.ac.kopo.dao.WriteDAO.WriteDAO.selectOne", no);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return write;
    }
}