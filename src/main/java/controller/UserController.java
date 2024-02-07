package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.user.User;
import domain.user.dto.EditReqDto;
import domain.user.dto.JoinReqDto;
import domain.user.dto.LoginReqDto;
import service.UserService;
import util.Script;

@WebServlet("/user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserController() {
        super();    
    }
    
    protected void process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//요청시 전달된 파라미터 값("cmd")을 반환
    	String cmd = req.getParameter("cmd");
		System.out.println(cmd);
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=utf-8");
		 
		//서비스객체 생성
		UserService userService = new UserService();
	
		//로그인폼 페이지 요청
		if(cmd.equals("loginForm")) {
			//응답페이지 지정
			req.getRequestDispatcher("user/loginForm.jsp").forward(req, res);
		}
		//로그아웃 요청
		else if(cmd.equals("logout")) {
			HttpSession session = req.getSession();
			session.removeAttribute("principal");
			session.removeAttribute("isAdmin");
			res.sendRedirect("index.jsp");
		}
		//로그인 기능요청(post 요청)
		else if(cmd.equals("login")) {
			String Id = req.getParameter("userId");
			String pass = req.getParameter("password");
			LoginReqDto dto = new LoginReqDto();
			dto.setId(Id);
			dto.setPass(pass);
			User userEntity = userService.login(dto);
			//userEntity가 null이 아니면 세션설정하고 index.jsp로 이동
			//session속성지정 principal속성에 userEntity 지정 
			
			if(userEntity != null) {
				HttpSession session = req.getSession();
				session.setAttribute("principal", userEntity);
				//로그인한 계정이 관리자 계정이라면 세션에 isAdmin 속성 추가
				if(userEntity.getId().equals("test1")) {
					session.setAttribute("isAdmin", true);
				}
				res.sendRedirect("index.jsp");
			} else {
				Script.back("로그인실패", res);
			}
		}	
		//회원가입폼 페이지 요청
		else if(cmd.equals("joinForm")) {
			//응답페이지 지정
			req.getRequestDispatcher("user/joinForm.jsp").forward(req, res);
		}
		//회원가입 기능요청(post 요청) 
	    else if(cmd.equals("join")) { 
	    	String userId = req.getParameter("userId"); 
	    	String pass = req.getParameter("password");
			String email = req.getParameter("email"); 
			String name = req.getParameter("name"); 
			int telnum = Integer.parseInt(req.getParameter("telnum"));
			String address = req.getParameter("address");
			JoinReqDto dto = new JoinReqDto();
			dto.setUserId(userId);
			dto.setPass(pass);
			dto.setEmail(email); 
			dto.setName(name); 
			dto.setTelnum(telnum);
			dto.setAddress(address);
			  	  
			int result = userService.join(dto);
			if(result==1) { 
				 Script.alertMsg("회원가입 완료", "/Gourmet9/index.jsp", res); 
			  }
			else {
			  Script.back("회원가입실패", res); 
			   	}
	    }  
	    //아이디 중복확인체크(ajax요청)
	     else if(cmd.equals("userIdCheck")) { 
	    	 BufferedReader br =req.getReader(); 
	    	 String username = br.readLine();
	    	 int result = userService.idCheck(username); 
	    	 PrintWriter out = res.getWriter();
		  if(result==0) { 
			  out.print("ok"); 
			  } else { 
				  out.print("fail"); 
			} 
		  	out.flush();
		  	out.close();  
	     }
		//회원정보페이지 요청
	     else if(cmd.equals("editForm")) {
	    	 	//회원정보조회
	    	 	HttpSession session =  req.getSession();
	    	 	User user = (User) session.getAttribute("principal");
	    	 	int num = user.getUserNum();
	    	 	System.out.println(num);
	    	 	User userCheck = userService.checkProfile(num);
	    	 	//조회한 결과를 전달
	    	 	req.setAttribute("dto", userCheck);
				//응답페이지 지정
				req.getRequestDispatcher("user/editForm.jsp").forward(req, res);
			}
		//회원정보수정
	     else if(cmd.equals("edit")) {    
	    	String pass = req.getParameter("password");
			String email = req.getParameter("email"); 
			String name = req.getParameter("name"); 
			int telnum = Integer.parseInt(req.getParameter("telNum"));
			String address = req.getParameter("address");
			EditReqDto dto = new EditReqDto();
			dto.setUserNum(Integer.parseInt(req.getParameter("userNum")));
			dto.setPass(pass);
			dto.setEmail(email); 
			dto.setName(name); 
			dto.setTelnum(telnum);
			dto.setAddress(address);	
			System.out.println("넘어가는 dto: " + dto);
			int result = userService.edit(dto);
			System.out.println("결과는 : " + result);
			if(result==1) { 
				 Script.alertMsg("회원정보 수정완료", "/index.jsp", res); 
			  }
			else {
			  Script.back("수정실패", res); 
			   	}
	     }
	     else if(cmd.equals("rv")) {
	    	 req.getRequestDispatcher("/reservation.jsp").forward(req, res);
	     }
	}
				

    //get요청이 오면 doGet 호출
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
}
