<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>

        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">register new restaurant</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->
        <!-- property area -->
        <div class="content-area submit-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">
                <div class="clearfix" > 
                    <div class="wizard-container">                     
                                
            
			<form action="store?cmd=regi" method="post" onsubmit="return vaild()">
			<div class="wizard-header">
                    <h2>
                        <b>Register</b> <br>
                        New Restaurant <br>
                    </h2><br/>
            </div>
			  <div class="form-group"> Restaurant name	    
					<input type="text" class="form-control" placeholder="Enter Your Restaurant name" 
					name="stname" id="stname" required>
			  </div>
  			   <div class="form-group"> Address		    
					<input type="text" class="form-control" placeholder="Enter Your Address" 
					name="address" id="address">
			  </div>
  			  <div class="form-group"> Telephone	    
					<input type="text" class="form-control" placeholder="010-1234-5678" 
					name="telnum" id="telnum">
			  </div>
			   <div class="form-group"> Rate		    
					<input type="text" class="form-control" placeholder="Enter Your Rate" 
					name="rate" id="rate">
			  </div>
			  <div class="form-group">
                    <label>Category :</label>
                    <select name="category" id="category" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="category">
                        <option>Korean</option>
                        <option>Japanese</option>
                        <option>Chinese</option>
                        <option>Italian</option>
                        <option>French</option>
                    </select>
                </div>
			  <div class="form-group"> Information    
					<textarea type="text" class="form-control" placeholder="Enter Your Information" 
					name="info" id="info">
					</textarea>
			  </div><br/>
			  	<button type="submit" class="btn btn-primary pull-right">Submit</button>
			</form>
                     
                    </div> 
                </div>
            </div>
        </div>
     
<%@ include file="include/footer.jsp" %>
         