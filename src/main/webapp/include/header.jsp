<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GOURMET9 | Home page</title>
        <meta name="description" content="Gourmet9 is premium membership booking site">
        <meta name="author" content="Ah, Wj">
        <meta name="keyword" content="html5, css, bootstrap">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="../assets/css/normalize.css">
        <link rel="stylesheet" href="../assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="../assets/css/fontello.css">
        <link href="../assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="../assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="../assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="../assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="../assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="../assets/css/price-range.css">
        <link rel="stylesheet" href="../assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="../assets/css/owl.theme.css">
        <link rel="stylesheet" href="../assets/css/owl.transitions.css">
        <link rel="stylesheet" href="../assets/css/style.css">
        <link rel="stylesheet" href="../assets/css/responsive.css">
    </head>
    <body>
        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

        <div class="header-connect">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-8  col-xs-12">
                        <div class="header-half header-call">
                            <p>
                                <span><i class="pe-7s-call"></i> +82 234 567 7890</span>
                                <span><i class="pe-7s-mail"></i> gourmet9@company.com</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
                        <div class="header-half header-social">
                            <ul class="list-inline">
                                <li><a href="https://facebook.com"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>            
        <!--End top header -->

        <nav class="navbar navbar-default ">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp"><img src="assets/img/logo.png" alt=""></a>
                    <h1 class="navbar-brand">Gourmet9</h1>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse yamm" id="navigation">
	                <c:choose>
				    	<c:when test="${sessionScope.principal != null}">
					    	<div class="button navbar-right">
		                        <button class="navbar-btn nav-button wow bounceInRight login" type="button" onclick="location.href='user?cmd=logout'" data-wow-delay="0.4s">Logout</button>
		                        <button class="navbar-btn nav-button wow fadeInRight" onclick="location.href='user?cmd=editForm'" data-wow-delay="0.5s">My Profile</button>
	                  		  </div>
				    	</c:when>
				    	<c:otherwise>
                    <div class="button navbar-right">
                        <button class="navbar-btn nav-button wow bounceInRight login" onclick="location.href='user?cmd=loginForm'" data-wow-delay="0.4s">Login</button>
                        <button class="navbar-btn nav-button wow fadeInRight" onclick="location.href='user?cmd=joinForm'" data-wow-delay="0.5s">Join</button>
                    </div>
	                    </c:otherwise>    
	     			 </c:choose>
                    
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li class="ymm-sw " data-wow-delay="0.1s">
                            <a href="index.jsp" class="active" data-delay="200">Home</a>                          
                        </li>

                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="properties.html">Properties</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="property.html">Property</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="contact.html">Contact</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <!-- End of nav bar -->