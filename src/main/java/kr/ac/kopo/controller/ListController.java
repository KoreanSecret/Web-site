package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.WriteDAO;
import kr.ac.kopo.framework.Controller;
import java.util.List;
import kr.ac.kopo.vo.WriteVO;

public class ListController implements Controller {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        WriteDAO writeDAO = new WriteDAO();
        List<WriteVO> writeList = writeDAO.selectAll();

        request.setAttribute("writeList", writeList);
        return "/list.jsp";
    }
}
