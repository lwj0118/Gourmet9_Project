package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.StoreService;



@WebServlet("/store")
public class StoreController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public StoreController() {
        super();
    }
    protected void process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//요청시 전달된 파라미터 값("cmd")을 반환
    	String cmd = req.getParameter("cmd");
		System.out.println(cmd);
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=utf-8");
		
		StoreService storeService = new StoreService();
		
		if(cmd.equals("regi")) {
			//응답페이지 지정
			req.getRequestDispatcher("/user/loginForm.jsp").forward(req, res);
		}
		else if(cmd.equals("rvForm")) {
	    	 req.getRequestDispatcher("/reservationForm.jsp").forward(req, res);
	     }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

}
