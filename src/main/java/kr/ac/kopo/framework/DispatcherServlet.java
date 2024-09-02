package kr.ac.kopo.framework;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet {

    private HandlerMapping mappings;

    @Override
    public void init(ServletConfig config) throws ServletException {
        String propLoc = config.getInitParameter("propLoc");
        mappings = new HandlerMapping(propLoc);
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();
        uri = uri.substring(request.getContextPath().length());

        System.out.println("요청 URI : " + uri);

        try {
            Controller control = mappings.getController(uri);
            if (control == null) {
                throw new ServletException("No controller found for URI: " + uri);
            }
            String callPage = control.handleRequest(request, response);
            if (callPage.startsWith("redirect:")) {
                response.sendRedirect(request.getContextPath() + callPage.substring("redirect:".length()));
            } else {
                RequestDispatcher dispatcher = request.getRequestDispatcher(callPage);
                dispatcher.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }
}
