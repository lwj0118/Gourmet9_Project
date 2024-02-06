<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

	<div>
		<script>
			let isChecking = false;
			function valid(){
				if(!isChecking){
					alert("id중복체크를 해주세요")
				}
				return ischecking;
			}
			function idcheck(){
				//인풋의 값을 userId변수에 할당
				let userId = $("#userId").val();
				//네트워크 요청
				$.ajax({
					type: "POST",									//통신방법, get or post
					url: "/Gourmet9/user?cmd=userIdCheck",		//요청경로
					data: userId,									//body에 보낼 데이터(get은 못씀)
					contentType: "text/plain; charset=utf-8",		//보낼 데이터 mime 타입
					dataType:"text"									//응답받을 데이터 타입
				}).done(function(data){
					//유저네임이 중복되지 않으면 ok를 전송
					if(data == "ok"){
						isChecking = true;
						alert("유저네임이 중복되지 않았습니다.")
					}else {
						alert("유저네임이 중복되었습니다.");
						isChecking = false;
					}
				})
			}
		</script>
		<h2>Join</h2>
		<br/>
		<form action="/Gourmet9/user?cmd=join" method="post" onsubmit="return vaild()">
			  <div class="form-group"> Id	    
					<input type="text" class="form-control" placeholder="Enter Your Id" 
					name="userId" id="userId" required>
					<button type="button" onclick="idcheck()" class="btn btn-primary" 
					style="width:180px">Id Check</button>
			  </div>
			   <div class="form-group"> Password		    
					<input type="password" class="form-control" placeholder="Enter Your Password" 
					name="password" id="password">
			  </div>
			  <div class="form-group"> Email    
					<input type="text" class="form-control" placeholder="test@gourmet9.com" 
					name="email" id="email">
			  </div>
			  <div class="form-group"> Name   
					<input type="text" class="form-control" placeholder="Enter Your Name" 
					name="name" id="name">
			  </div>
			  <div class="form-group"> Telephone	    
					<input type="text" class="form-control" placeholder="010-1234-5678" 
					name="telnum" id="telnum">
			  </div>
			   <div class="form-group"> Address		    
					<input type="text" class="form-control" placeholder="Enter Your Address" 
					name="address" id="address">
			  </div>
			  
			  <button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

<%@ include file="../include/footer.jsp" %>