<%@page import="domain.user.User"%>
<%@page import="domain.user.dto.EditReqDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>
<%
	User user = new User();
	User dto = (User) request.getAttribute("dto");
%>

<div class="content-area user-profiel" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 profiel-container">

                        <form action="user?cmd=edit" method="post" onsubmit="return vaild()">
							<input type="hidden" name="userNum" value="<%=dto.getUserNum()%>">
                            <div class="profiel-header">
                                <h3>
                                    <b>UPDATE</b> YOUR PROFILE <br>
                                    <small>All change will send to your e-mail.</small>
                                </h3>
                                <hr>
                            </div>

                            <div class="clear">

                                <div class="col-sm-10 col-sm-offset-1">
                                	<div class="form-group">
                                        <label>Id <small>(Cannot be modified)</small></label>
                                        <input name="id" type="text" 
                                        value="<%= dto.getId()%>" class="form-control" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>Password <small>(required)</small></label>
                                        <input name="password" type="password" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Email <small>(required)</small></label>
                                        <input name="email" type="email" 
                                        value="<%= dto.getEmail()%>"class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Name <small>(required)</small></label>
                                        <input name="name" type="text" 
                                        value="<%= dto.getName()%>" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Telephone <small>(required)</small></label>
                                        <input name="telNum" type="text" 
                                        value="<%= dto.getTelnum()%>" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Address <small>(required)</small></label>
                                        <input name="address" type="text" 
                                        value="<%= dto.getAddress()%>"class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-10 col-sm-offset-1">
                                    <input type='submit' class='btn btn-finish btn-primary pull-right' name='update' value='update' />
                                </div>
                                
                            </div>
                          
                    </form>

                </div>
            </div><!-- end row -->

        </div>
    </div>

</body>
</html>

<%@ include file="../include/footer.jsp" %>