<%@page import="domain.store.dto.StoreDto"%>
<%@page import="domain.store.dao.StoreDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<%
	
	StoreDto dto = (StoreDto) request.getAttribute("dto");
	
%>

<div class="container">
	
	
	
	<h3>가게목록 상세보기</h3>
	<br />
	<br />
	<h3 class="m-2">
		<b><%=dto.getStname() %></b>
	</h3>
	<hr />
	<div class="m-2" style="display:flex;">
		<div style="width:50%"> 주소 : <i><%=dto.getAddress() %></i></div>
		<div style="width:50%"> 전화번호 : <i><%=dto.getSttel()%></i></div>
	</div>
	<hr />
	<div class="m-2" style="display:flex;">
		<div style="width:50%"> 평점 : <i><%=dto.getRate() %></i></div>
		<div style="width:50%"> 카테고리 : <i><%=dto.getCategory() %></i></div>
	</div>
	<hr />
	<div class="form-group">
		<div class="m-2"><%=dto.getInfo() %></div>
	</div>
	<div class="form-group">
		<div class="m-2"><%=dto.getImage() %></div>
	</div> 

	<hr />
	<div class="button navbar-right">
		<c:if test="${sessionScope.isAdmin!=null}">
		<form style="display:inline-block" action="<%=request.getContextPath()%>/store?cmd=delete" method="post">
			<input type="hidden" name="stnum" value="<%=dto.getStoreNum()%>" />
			<button type="submit" class="btn btn-danger">삭제</button>
		</form>
		<form style="display:inline-block" action="<%=request.getContextPath()%>/store?cmd=editForm" method="post">
			<input type="hidden" name="stnum" value="<%=dto.getStoreNum()%>" />
		<button class="btn btn-primary">수정</button>
		</form>
		</c:if>
	
	</div>
</div>





<%@ include file="include/footer.jsp" %>