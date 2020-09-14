<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>실습실 예약 관리 시스템</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR|Sunflower:700&display=swap" rel="stylesheet">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="/image/x-icon" href="/img/logo/sunmoonLogo_1.jpg">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <!-- font awesome CSS
		============================================ -->
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="/css/owl.carousel.css">
    <link rel="stylesheet" href="/css/owl.theme.css">
    <link rel="stylesheet" href="/css/owl.transitions.css">
    <!-- meanmenu CSS
		============================================ -->
    <link rel="stylesheet" href="/css/meanmenu/meanmenu.min.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="/css/normalize.css">
    <!-- bootstrap select CSS
		============================================ -->
    <link rel="stylesheet" href="/css/bootstrap-select/bootstrap-select.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="/css/chosen/chosen.css">
	<!-- wave CSS
		============================================ -->
    <link rel="stylesheet" href="/css/wave/waves.min.css">
    <link rel="stylesheet" href="/css/wave/button.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- Notika icon CSS
		============================================ -->
    <link rel="stylesheet" href="/css/notika-custom-icon.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="/css/main.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="/css/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="/js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="/js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="/js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="/js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="/js/jquery-price-slider.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="/js/owl.carousel.min.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="/js/jquery.scrollUp.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="/js/meanmenu/jquery.meanmenu.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="/js/counterup/jquery.counterup.min.js"></script>
    <script src="/js/counterup/waypoints.min.js"></script>
    <script src="/js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="/js/sparkline/sparkline-active.js"></script>
    <!-- flot JS
		============================================ -->
    <script src="/js/flot/jquery.flot.js"></script>
    <script src="/js/flot/jquery.flot.resize.js"></script>
    <script src="/js/flot/flot-active.js"></script>
    <!-- knob JS
		============================================ -->
    <script src="/js/knob/jquery.knob.js"></script>
    <script src="/js/knob/jquery.appear.js"></script>
    <script src="/js/knob/knob-active.js"></script>
    <!--  Chat JS
		============================================ -->
    <script src="/js/chat/jquery.chat.js"></script>
    <!--  todo JS
		============================================ -->
    <script src="/js/todo/jquery.todo.js"></script>
    
	<!--  wave JS
		============================================ -->
    <script src="/js/wave/waves.min.js"></script>
    <script src="/js/wave/wave-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="/js/main.js"></script>
     <!-- bootstrap select JS
		============================================ -->
    <script src="/js/bootstrap-select/bootstrap-select.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.4.0.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<script src="https://raw.githack.com/rainabba/jquery-table2excel/master/dist/jquery.table2excel.js"></script>
	<style>
		body{
			font-family: 'Noto Sans KR', sans-serif;
		}	
	</style>
</head>
<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- Start Header Top Area -->
    <div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="logo-area">
                        <h2 style="color:white">실습실 예약 관리 시스템</h2>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="header-top-menu">
                        <ul class="nav navbar-nav notika-top-nav">
                        	<li class="nav-item">
								<a href="https://calendar.google.com/" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
									<span><i class="notika-icon notika-calendar" id="toGoogle"></i></span>
								</a>
                            </li>
                        	
                            <li class="nav-item dropdown" style="padding: 0px 10px 0px 0px">
                           		
                                <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle" id="alarm">
									<span><i class="notika-icon notika-mail"></i></span>
									<div id="checkNotice"></div>
									
								</a>
								
                                <div role="menu" class="dropdown-menu message-dd animated zoomIn">
                                    <div class="hd-mg-tt">                            	
                                        <h2>알림</h2>
                                    </div>
                                    <div id="viewNotice" class="hd-message-info">
                                        
                                    </div>
                                    <div class="hd-mg-va">
                                    </div>
                                </div>
                            </li>
                            
                            <li class="nav-item">
								<a href="/common/logout" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
									<span><i class="notika-icon notika-close" id="logouticon"></i></span>
								</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Header Top Area -->
    <!-- Main Menu area start-->
    <div class="main-menu-area mg-tb-40">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro">
                        <li><a href="/reservation"><i class="notika-icon notika-edit"></i>&nbsp;예약</a></li>
                        <li><a href="/lab"><i class="notika-icon notika-star"></i>&nbsp;실습실</a></li>
						<c:if test="${sessionScope.managerInfo.grade == 'A'}">
                        <li><a href="/manager"><i class="notika-icon notika-support"></i>&nbsp;관리자</a></li>
						</c:if>
						<c:if test="${sessionScope.managerInfo.grade == 'A'}">
                        <li><a href="/record"><i class="notika-icon notika-bar-chart"></i>&nbsp;예약이력</a></li>
						</c:if>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Menu area End-->
	<script>
     window.onload = function () {
    	 
			$.ajax({
				url : "/noticecount",
				type : "POST",
				success : function(data) {
					if (data != 0) {
						html = '<div class="spinner4 spinner-4"></div>';
						html +='<div class="ntd-ctn"><span>' + data +'</span></div>';
						
						$('#checkNotice').html(html);
					} else {
						html = '<span></span>'
						$('#checkNotice').html(html);
					}
				},
				error : function(data){
					alert('알림 오류')
				}
			});
     }
     
     $('#alarm').on('click',function() {
			$.ajax({
				url: "/notice",
				type:"POST",
				success : function(data){
					$.ajax({
						url : "/noticecount",
						type : "POST",
						success : function(data) {
							if (data != 0) {
								html = '<div class="spinner4 spinner-4"></div>';
								html +='<div class="ntd-ctn"><span>' + data +'</span></div>';
								
								$('#checkNotice').html(html);
							} else {
								html = '<span></span>'
								$('#checkNotice').html(html);
							}
						},
						error : function(data){
							alert('알림 오류')
						}
					});
					
					if(data != null){
					html="<br>"
						
					for(var i = 0; i < data.length; i++){
					html += '<a href="/reservation/'+ data[i].reservationNo +  '">'	
                    html +='<div class="hd-message-sn">';
                    html +='<div class="hd-mg-ctn">';
					html += "<h5>"+data[i].name + "님이"
							+ data[i].startDate + "부터" 
							+ data[i].expiryDate + "까지"
							+ data[i].labNo + "호 실습실 예약을 ";
					
					if(data[i].reservationState == 'A'){	
					html += "등록 또는 변경 하셨습니다</h5>";
					
					} else{
					html += "취소 하셨습니다</h5>";
					
					}
                    html +='</div>';
                    html +='</div>'; 
                    html +='</a>';
										
					}
						
					}
					$('#viewNotice').html(html);
				},
				error : function(){
					alert('알림 오류')
				}
			});
			
     });
     
     $("#logouticon").mouseover(function(){$(this).text("로그아웃");})
 	 $("#logouticon").mouseleave(function(){$(this).text("");})				

 	 $("#toGoogle").mouseover(function(){$(this).text("구글 캘린더");})
 	 $("#toGoogle").mouseleave(function(){$(this).text("");})	
	</script>
	