package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import domain.store.dto.StoreDto;
import domain.user.User;
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
			ServletContext application = req.getServletContext(); 
			String saveDirectory = application.getRealPath("/upload"); 
			int maxPostSize = 1024 * 1000;
			System.out.println(maxPostSize);
			MultipartRequest mr = new MultipartRequest(req, saveDirectory, maxPostSize, "utf-8");  
			String stname = mr.getParameter("stname");
			String address = mr.getParameter("address");
			int sttel = Integer.parseInt(mr.getParameter("sttel"));
			int rate = Integer.parseInt(mr.getParameter("rate"));
			String category = mr.getParameter("category");
			String info = mr.getParameter("info");
			String image = mr.getFilesystemName("image");
			System.out.println("이미지는 어디로 : "+image);
			
			StoreDto dto = new StoreDto();
			dto.setStname(stname);
			dto.setAddress(address);
			dto.setSttel(sttel);
			dto.setRate(rate);
			dto.setCategory(category);
			dto.setInfo(info);
			dto.setImage(image);
			
			int result = storeService.regi(dto);
			if(result==1) {
				Script.alertMsg("가게등록 완료", "store?cmd=rv&page=0", res); 
			}
			else {
				Script.back("가게등록 실패", res); 
			}
		}
		else if(cmd.equals("rvForm")) {
	    	 req.getRequestDispatcher("/reservationForm.jsp").forward(req, res);
	     }
		else if(cmd.equals("rv")) {
			
			int page = Integer.parseInt(req.getParameter("page"));
			List<StoreDto> stores = storeService.stlist(page);
	
			int total = storeService.sttotal();
			
			int lastpage = (total-1)/9;
			
			req.setAttribute("stores", stores);
			req.setAttribute("page", page);
			req.setAttribute("lastpage", lastpage);
			
			req.getRequestDispatcher("/reservation.jsp").forward(req, res);
		}
		else if(cmd.equals("delete")) {
			int num = Integer.parseInt(req.getParameter("stnum"));
			int result = storeService.delete(num);
			if(result==1) {
				Script.alertMsg("삭제되었습니다.", "index.jsp", res); 
				
				 
			}else {
				Script.back("삭제실패", res); 
			}
		}
		else if(cmd.equals("detail")) {
			int num =  Integer.parseInt(req.getParameter("stnum"));
			StoreDto dto = storeService.info(num); 
			req.setAttribute("dto", dto);
			req.getRequestDispatcher("detail.jsp").forward(req, res);
	
		}
		 else if(cmd.equals("editForm")) { 
			 int num = Integer.parseInt(req.getParameter("stnum"));
			 StoreDto stCheck = storeService.info(num); 
			 req.setAttribute("dto", stCheck);
			 req.getRequestDispatcher("stEditForm.jsp").forward(req, res); 
			 
		 }
		 else if(cmd.equals("edit")) {
			 ServletContext application = req.getServletContext(); 
				String saveDirectory = application.getRealPath("/upload"); 
				int maxPostSize = 1024 * 1000;
				MultipartRequest mr = new MultipartRequest(req, saveDirectory, maxPostSize, "utf-8");  
				int stnum = Integer.parseInt(mr.getParameter("stnum")); 
				String stname = mr.getParameter("stname");
				String address = mr.getParameter("address");
				int sttel = Integer.parseInt(mr.getParameter("sttel"));
				int rate = Integer.parseInt(mr.getParameter("rate"));
				String category = mr.getParameter("category");
				String info = mr.getParameter("info");
				String image = mr.getFilesystemName("image");
				
				
				StoreDto dto = new StoreDto();
				dto.setStoreNum(stnum);
				dto.setStname(stname);
				dto.setAddress(address);
				dto.setSttel(sttel);
				dto.setRate(rate);
				dto.setCategory(category);
				dto.setInfo(info);
				dto.setImage(image);
				System.out.println("넘어가는 dto :" + dto);
				int result = storeService.edit(dto);
				if(result==1) {
					Script.alertMsg("가게등록수정 완료", "store?cmd=rv&page=0", res); 
				}
				else {
					Script.back("가게등록 실패", res); 
				}
		 }
		
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

}
