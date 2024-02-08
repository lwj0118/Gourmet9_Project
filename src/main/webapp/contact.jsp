<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp" %>

	
        <!-- property area -->
        <div class="content-area recent-property padding-top-40" style="background-color: #FFF;">
            <div class="container">  
                <div class="row">
                    <div class="col-md-8 col-md-offset-2"> 
                        <div class="" id="contact1">                        
                            <div class="row">
                                <div class="col-sm-4">
                                    <h3><i class="fa fa-map-marker"></i> Address</h3>
                                    <p> WooJun Lee 
                                        <br> Seoul
                                        <br> Seocho gu ,
                                        <br>
                                        <strong>South Korea</strong>
                                    </p>
                                </div>
                                <!-- /.col-sm-4 -->
                                <div class="col-sm-4">
                                    <h3><i class="fa fa-phone"></i> Call center</h3>
                                    <p class="text-muted">This number is toll free if calling from
                                        Great Britain otherwise we advise you to use the electronic
                                        form of communication.</p>
                                    <p><strong>+82 2 000 1234</strong></p>
                                </div>
                                <!-- /.col-sm-4 -->
                                <div class="col-sm-4">
                                    <h3><i class="fa fa-envelope"></i> Electronic support</h3>
                                    <p class="text-muted">Please feel free to write an email to us or to use our electronic ticketing system.</p>
                                    <ul>
                                        <li><strong><a href="mailto:">gourmet9@gourmet9.com</a></strong>   </li>
                                        
                                    </ul>
                                </div>
                                <!-- /.col-sm-4 -->
                            </div>
                            <!-- /.row -->
                            <hr>
                            <div id="map" style="width:750px;height:400px;"></div>
								<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=af5d448f290ccd1a30110bb702f2bb2a"></script>
								<script>
									var container = document.getElementById('map');
									var options = {
										center: new kakao.maps.LatLng(35.541961335778566, 129.33824937085515),
										level: 1
									};
							
									var map = new kakao.maps.Map(container, options);
									
									var markerPosition  = new kakao.maps.LatLng(35.541961335778566, 129.33824937085515); 

									// 마커를 생성합니다
									var marker = new kakao.maps.Marker({
									    position: markerPosition
									});

									// 마커가 지도 위에 표시되도록 설정합니다
									marker.setMap(map);
								</script>
                            <hr>
                            <h2>Contact form</h2>
                            <form action="mailto:" method="post">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="firstname">Firstname</label>
                                            <input type="text" class="form-control" id="firstname">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="lastname">Lastname</label>
                                            <input type="text" class="form-control" id="lastname">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="text" class="form-control" id="email">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">Subject</label>
                                            <input type="text" class="form-control" id="subject">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="message">Message</label>
                                            <textarea id="message" class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 text-center">
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> Send message</button>
                                    </div>
                                </div>
                                <!-- /.row -->
                            </form>
                        </div>
                    </div>    
                </div>
            </div>
        </div>



<%@ include file="/include/footer.jsp" %>