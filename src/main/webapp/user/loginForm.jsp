<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

	<div class="col-md-6">
                    <div class="box-for overflow">                         
                        <div class="col-md-12 col-xs-12 login-blocks">
                            <h2>LOGIN </h2> 
                            <form action="user?cmd=login" method="post">
                                <div class="form-group"> ID
                                    
                                    <input type="text" class="form-control" name ="userId" id="userId" placeholder="ENTER YOUR ID">
                                </div>
                                
                                <div class="form-group">PASSWORD                                   
                                    <input type="password" class="form-control" name="password" id="password" placeholder="ENTER YOUR PASSWORD">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-default"> LOGIN</button>
                                </div>
                            </form>
                            <br>
                            
                            <h2>SOCIAL LOGIN  </h2> 
                            
                            <!-- api소셜로그인 달기  -->
                            <p> 
                            <a class="login-social" href="http://www.facebook.com"><i class="fa fa-facebook"></i>&nbsp;FACEBOOK</a> 
                            <a class="login-social" href="#"><i class="fa fa-google-plus"></i>&nbsp;GMAIL</a> 
                            <a class="login-social" href="#"><i class="fa fa-twitter"></i>&nbsp;TWITTER</a>  
                            </p> 
                        </div>
                        
                    </div>
                </div>


<%@ include file="../include/footer.jsp" %>
