<%@page import="java.util.List"%>
<%@page import="domain.store.dto.StoreDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List<StoreDto> stores = (List<StoreDto>) request.getAttribute("stores");
	int stpage = (Integer) request.getAttribute("page");
	int lastpage = (Integer) request.getAttribute("lastpage");
%>
    <!-- property area -->
        <div class="properties-area recent-property" style="background-color: #FFF;">
            <div class="container">  
                <div class="row">
                     
                <div class="col-md-3 p0 padding-top-40">
                    <div class="blog-asside-right pr0">
                        <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                            <div class="panel-heading">
                                <h3 class="panel-title">Smart search</h3>
                            </div>
                            <div class="panel-body search-widget">
                                <form action="" class=" form-inline"> 
                                    <fieldset>
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <input type="text" class="form-control" placeholder="Key word">
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <div class="row">
                                            <div class="col-xs-6">

                                                <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select Your City">

                                                    <option>New york, CA</option>
                                                    <option>Paris</option>
                                                    <option>Casablanca</option>
                                                    <option>Tokyo</option>
                                                    <option>Marraekch</option>
                                                    <option>kyoto , shibua</option>
                                                </select>
                                            </div>
                                            <div class="col-xs-6">

                                                <select id="basic" class="selectpicker show-tick form-control">
                                                    <option> -Status- </option>
                                                    <option> Available </option>
                                                    <option> table size</option>
                                                    <option> people</option>  

                                                </select>
                                            </div>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>

                        <div class="panel panel-default sidebar-menu wow fadeInRight animated">
                            <div class="panel-heading">
                                <h3 class="panel-title">Recommended</h3>
                            </div>
                            <div class="panel-body recent-property-widget">
                                        <ul>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>
                                    </ul>
                            </div>
                        </div>
                    </div>
                </div>

			
                <div class="col-md-9  pr0 padding-top-40 properties-page">
                    <div class="col-md-12 clear"> 
                        <div class="col-xs-10 page-subheader sorting pl0">
                           
                        </div>

                        <div class="col-xs-2 layout-switcher">
                            <a class="layout-list " href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
                            <a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>                          
                        </div><!--/ .layout-switcher-->
                    </div>
				
                    <div class="col-md-12 clear"> 
                        <div id="list-type" class="proerty-th">
                        	<c:forEach var="s" items="${stores}">
                            	<div class="col-sm-6 col-md-4 p0">
                            	
                                    <div class="box-two proerty-item">
                                    	
                                        <div class="item-thumb">
                                            <a href="#" ><img src="/upload/${s.image}"></a>
                                        </div>
                                        
                                        <div class="item-entry overflow">
                                            <h5><a href="/store?cmd=detail&stnum=${s.storeNum}"> ${s.stname} </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Rate :</b> ${s.rate} </span>
                                            <span class="proerty-price pull-right"> ${s.category}</span>
                                            <p style="display: none;"> ${s.info}</p>
                                            <div class="property-icon">
                                                <p> ${s.address} </p> 
                                            </div>
                                        </div>
                                        
                                    </div>
                                 
                             </div>
                          </c:forEach>  
                         </div>
                    </div>
                </div> 
                    
              
                    <div class="col-md-12"> 
                        <div class="pull-right">
                            <div class="pagination">
                                <ul>
                                	<c:choose>
                                		<c:when test="${page==0 }">
	                                    		<li class= "disabled"><a href="store?cmd=rv&page=<%=stpage-1%>">Prev</a></li>
	                                    </c:when>  
	                                    <c:otherwise>                
	                                    		<li><a href="store?cmd=rv&page=<%=stpage-1%>">Prev</a></li>
                                		</c:otherwise>
                                	</c:choose>
                                		
                                	<c:choose>
                                		<c:when test="${page==lastpage }">
                                			<li class= "disabled"><a href="store?cmd=rv&page=<%=stpage+1%>">Next</a></li>
                                		</c:when>
                                		<c:otherwise>
                                			<li><a href="store?cmd=rv&page=<%=stpage+1%>">Next</a></li>
                                		</c:otherwise>
                                	</c:choose>
                                </ul>
                            </div>
                        </div>                
                    </div>
                </div>  
                </div>              
            </div>
        
    <%@ include file="include/footer.jsp" %>