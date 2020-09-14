<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>실습실 예약 관리 시스템 로그인</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR|Sunflower:700&display=swap" rel="stylesheet">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="/img/logo/sunmoonLogo_1.jpg">
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
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="/css/normalize.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- wave CSS
		============================================ -->
    <link rel="stylesheet" href="/css/wave/waves.min.css">
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
     <!-- jquery
		============================================ -->
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
    <!--  wave JS
		============================================ -->
    <script src="/js/wave/waves.min.js"></script>
    <script src="/js/wave/wave-active.js"></script>
    <!-- icheck JS
		============================================ -->
    <script src="/js/icheck/icheck.min.js"></script>
    <script src="/js/icheck/icheck-active.js"></script>
    <!--  todo JS
		============================================ -->
    <script src="/js/todo/jquery.todo.js"></script>
    <!-- Login JS
		============================================ -->
    <script src="/js/login/login-action.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="/js/main.js"></script>
    
    <style>
		body{
			font-family: 'Noto Sans KR', sans-serif;
		}	
	</style>
</head>

<body>
	<form action="/common/login" method="POST">
	    <div class="login-content">
	        <!-- Login -->
	        <div class="nk-block toggled" id="l-login">
	            <div class="nk-form">
	            	<h2 style="color:black">실습실 예약 관리 시스템</h2>
	                <div class="input-group">
	                    <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-support"></i></span>
	                    <div class="nk-int-st"><input type="text" name="id" class="form-control" maxlength="10" placeholder="아이디"></div>
	                </div>
	                <div class="input-group mg-t-15">
	                    <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-edit"></i></span>
	                    <div class="nk-int-st"><input type="password" name="password" class="form-control "maxlength="10" placeholder="비밀번호"></div>
	                </div>
	                <div class="fm-checkbox" style="text-align:right;">
	                   	<input type="submit" value="로그인" class="btn btn-success notika-btn-success waves-effect">
	                </div>
	            </div>
	        </div>
	    </div>
    </form>
</body>
</html>