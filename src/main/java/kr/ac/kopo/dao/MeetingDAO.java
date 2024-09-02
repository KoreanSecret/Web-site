package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import kr.ac.kopo.dao.BatisConfig.MeetingBatisConfig;
import kr.ac.kopo.vo.MeetingVO;

public class MeetingDAO {
	

    private SqlSession session;
    
    public MeetingDAO() {
    session = new MeetingBatisConfig().getInstance();
    }
  
    public void insert(MeetingVO meeting) {
    	System.out.println(meeting);
    	try {
        session.insert("kr.ac.kopo.dao.MeetingDAO.insertMeeting",meeting);
        session.commit();
        System.out.println("미팅 개설 완료");
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
			System.out.println("미팅 개설 중 오류 발생");
		}finally {
			
		}
		}
    public List<MeetingVO> selectAll(){
    	List<MeetingVO> list = null;
    	try {
          list = session.selectList("kr.ac.kopo.dao.MeetingDAO.selectAll");			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return list;
    }
    
    public MeetingVO selectOne(String no) {
    	MeetingVO meeting = null;
    	try {
			meeting = session.selectOne("kr.ac.kopo.MeetingDAO.selectOne");
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return meeting;
    }
    
    
    
    
    
    
    }
