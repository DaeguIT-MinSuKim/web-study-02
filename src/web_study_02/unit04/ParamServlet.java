package web_study_02.unit04;

import java.io.IOException;
import java.util.Arrays;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ParamServlet")
public class ParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    processRequest(request, response);
	}
	
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id").trim();
        int age = Integer.parseInt(request.getParameter("age").trim());
        String name = request.getParameter("name").trim();
        String addr = request.getParameter("addr").trim();
        String gender = request.getParameter("gender");
        String chk_mail = request.getParameter("chk_mail");
        String content = request.getParameter("content");
        String[] items = request.getParameterValues("item");
        if (items == null) items = new String[]{"선택한 항목이 없음"};
        String arrToItems = Arrays.stream(items).collect(Collectors.joining(","));
        
        String job = request.getParameter("job");
        String interests[] = request.getParameterValues("interest");
        if (interests == null) interests = new String[]{"관심분야 없음"};
        String arrToInterests = Arrays.stream(interests).collect(Collectors.joining(","));
        
        request.setAttribute("id", id);
        request.setAttribute("age", age);
        request.setAttribute("name", name);
        request.setAttribute("addr", addr);
        request.setAttribute("gender", gender);
        request.setAttribute("chk_mail", chk_mail);
        request.setAttribute("content", content);
        request.setAttribute("items", arrToItems);
        request.setAttribute("job", job);
        request.setAttribute("interests", arrToInterests);
        request.setAttribute("itemsArr", items);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("04_result.jsp"); 
        dispatcher.forward(request, response);
    }
}




