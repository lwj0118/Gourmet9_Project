package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.store.dto.StoreDto;
import service.StoreService;
import util.Script;



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
			String stname = req.getParameter("stname");
			String address = req.getParameter("address");
			int sttel = Integer.parseInt(req.getParameter("sttel"));
			int rate = Integer.parseInt(req.getParameter("rate"));
			String category = req.getParameter("category");
			String info = req.getParameter("info");
			StoreDto dto = new StoreDto();
			dto.setStname(stname);
			dto.setAddress(address);
			dto.setSttel(sttel);
			dto.setRate(rate);
			dto.setCategory(category);
			dto.setInfo(info);
			
			int result = storeService.regi(dto);
			if(result==1) {
				Script.alertMsg("가게등록 완료", "/index.jsp", res); 
			}
			else {
				Script.back("가게등록 실패", res); 
			}
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
