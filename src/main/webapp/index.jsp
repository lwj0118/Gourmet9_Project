<%@page import="domain.store.dto.StoreDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List<StoreDto> stores = (List<StoreDto>) request.getAttribute("stores");
	int stpage = (Integer) request.getAttribute("page");
	int lastpage = (Integer) request.getAttribute("lastpage");
%>
        <div class="slider-area">
            <div class="slider">
                <div id="bg-slider" class="owl-carousel owl-theme">

                    <div class="item"><img src="assets/img/slide1/slider-image-1.jpg" alt=""></div> 
                    <div class="item"><img src="assets/img/slide1/slider-image-2.jpg" alt=""></div> 
                    <div class="item"><img src="assets/img/slide1/slider-image-3.jpg" alt=""></div>   

                </div>
            </div>
            <div class="container slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <h2 style="color:white"><strong>Enjoy World’s fine dining experience</strong></h2>
                        <h4 style="color: white" >
							세계 어디서나 가능한 레스토랑 예약 토탈 서비스 제공.
							<br/>
							<br/>
						</h4>
                        <div class="search-form wow pulse" data-wow-delay="0.8s">

                            <form action="user?cmd=rv" class=" form-inline" method="post">
                                <div class="form-group">                                   
                                    <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your city">
                                        <option>Seoul</option>
                                        <option>Paris</option>
                                        <option>Casablanca</option>
                                        <option>Tokyo</option>
                                        <option>Marraekch</option>
                                        <option>Newyork</option>
                                    </select>
                                </div>
                                <div class="form-group">                                     
                                    <select id="basic" class="selectpicker show-tick form-control">
                                        <option> Category </option>
                                        <option>korean </option>
                                        <option>Japanese</option>
                                        <option>Chinese</option>
                                        <option>Italian</option>
                                        <option>French</option>  
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Key word">
                                </div>
                                <button class="btn search-btn" type="submit"><i class="fa fa-search"></i></button>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<%@ include file="/include/footer.jsp" %>