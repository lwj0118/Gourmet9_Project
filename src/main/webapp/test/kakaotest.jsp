<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script>
	Kakao.init('050f5b738bf13262f34c75fa7455e874');  // 사용하려는 앱의 JavaScript 키 입력
	//카카오 로그인 
	function kakaoLogin(){
		 Kakao.Auth.login({
	            success: function (response) {
			 Kakao.API.request({
	             url: '/v2/user/me',
	             success: function (response) {
	             	 console.log(response)
	   
	             },
	             fail: function (error) {
	                 console.log(error)
	             },
	             })
	         },
	         fail: function (error) {
	             console.log(error)
	         },
	         })
		
		}
</script>
</head>
<body>
	<p onclick="kakaoLogin()">
		<a href="javascript:void(0)">카카오 로그인 하기</a></p>
	
</body>
</html>