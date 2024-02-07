<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>

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


        <!-- property area -->
        <div class="content-area recent-property" style="padding-bottom: 60px; background-color: rgb(252, 252, 252);">
            <div class="container">   
                <div class="row">
                    <div class="col-md-12  padding-top-40 properties-page">
                        <div class="col-md-12 "> 
                            <div class="col-xs-10 page-subheader sorting pl0">

                            </div>

                            <div class="col-xs-2 layout-switcher">
                                <a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
                                <a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>                          
                            </div><!--/ .layout-switcher-->
                        </div>

                        <div class="col-md-12 "> 
                            <div id="list-type" class="proerty-th">
                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> 우준반점 </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 350m </span>
                                            <span class="proerty-price pull-right"> ￦ 70,000</span>
                                            <p style="display: none;"> 입맛 까다로운 우준이가 만든 중국집</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>
                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> LIBRE </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 10000km </span>
                                            <span class="proerty-price pull-right"> $ 200,000</span>
                                            <p style="display: none;"> YvessAINTlAURENT</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>
                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> CHUANTONG CHINESE RESTAURANT  </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 700km </span>
                                            <span class="proerty-price pull-right"> ￥1000 </span>
                                            <p style="display: none;"> Traditional Chinese cuisin restaurant</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>
                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Wolfgang's Steak House </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 11000km </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendis Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>
                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>
                                    </div>
                                </div> 

                            </div>
                        </div>
                        <div class="col-md-12"> 
                            <div class="pull-right">
                                <div class="pagination">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>
                            </div>                
                        </div>
                    </div>  
                </div>
            </div>
        </div>
         



<%@ include file="/include/footer.jsp" %>