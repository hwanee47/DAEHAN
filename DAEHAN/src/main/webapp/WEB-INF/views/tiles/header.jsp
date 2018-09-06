<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ page session="false"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width,  initial-scale=1, minimum-scale=1">
	<title>대한정밀</title>
	<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">
	<link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css" rel="stylesheet">
	<link href="https://cdn.datatables.net/select/1.2.7/css/select.dataTables.min.css" rel="stylesheet">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
	<script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
	

</head>

<form name="selectOne" action="#LINK">
	<input name="link" type="hidden" />
</form>

<body>
	<div id="test">
		<nav class="navbar navbar-m2p sidebar" role="navigation" id="nav-menu">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header" style="background:url('${pageContext.request.contextPath}/resources/images/header-profile.png') no-repeat; background-size:100%;">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
					</button>
					<span><img class="img-circle" src="${pageContext.request.contextPath}/resources/images/business-logo.png"></span>
					<a class="navbar-brand" href="#" onclick="fn_main_headPageMove('main')" ><b>대 한 정 밀</b> </a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
					<ul class="nav navbar-nav">

						<li class="separator">contents</li>
						
						<li class="#">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<span class="menu-icon pull-right hidden-xs showopacity glyphicon glyphicon-chevron-down"></span> 거래처 관리
							</a>
							<ul class="dropdown-menu forAnimate" role="menu">
		                        <li><a href="#" class="dropdown-sub-menu" onclick="fn_main_headPageMove('manage/vendManage')"><span class="menu-icon pull-right hidden-xs showopacity glyphicon glyphicon-list-alt"></span> 거래처 목록</a></li>
		                        <li><a href="#" class="dropdown-sub-menu" onclick="fn_main_headPageMove('manage/vendAdd')"><span class="menu-icon pull-right hidden-xs showopacity 	glyphicon glyphicon-plus"></span> 거래처 등록</a></li>
		                    </ul>
							
						</li>
						
						<li class="#">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<span class="menu-icon pull-right hidden-xs showopacity glyphicon glyphicon-chevron-down"></span> 소재 정보 관리
							</a>
							<ul class="dropdown-menu forAnimate" role="menu">
		                        <li><a href="#" class="dropdown-sub-menu" onclick="fn_main_headPageMove('manage/materialManage')"><span class="menu-icon pull-right hidden-xs showopacity glyphicon glyphicon-list-alt"></span> 소재 목록</a></li>
		                        <li><a href="#" class="dropdown-sub-menu" onclick="fn_main_headPageMove('manage/materialAdd')"><span class="menu-icon pull-right hidden-xs showopacity 	glyphicon glyphicon-plus"></span> 소재 등록</a></li>
		                    </ul>
						</li>
						
						<li class="#">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" onclick="fn_main_headPageMove('manage/shippingStmt')">
								<span class="menu-icon pull-right hidden-xs showopacity glyphicon glyphicon-print"></span> 외주 출고 명세서 출력
							</a>
						</li>

						<li class="separator">System</li>

						<!-- logout -->
						<!-- ${pageContext.request.contextPath}/j_spring_security_logout -->
						<li>
							<a href="#">
								<span class="menu-icon pull-right hidden-xs showopacity glyphicon material-icons">exit_to_app</span>Logout
							</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>



	<script>
		function fn_main_headPageMove(url) {
			document.selectOne.link.value = url;
			document.selectOne.action = "<c:url value='/com/pageLink.do'/>";
			//alert(document.selectOne.action);
			document.selectOne.submit();
		}

		function htmlbodyHeightUpdate() {
			var height3 = $(window).height();
			var height1 = $('.nav').height() + 50;
			height2 = $('.container-main').height();
			if (height2 > height3) {
				$('html').height(Math.max(height1, height3, height2) + 10);
				$('body').height(Math.max(height1, height3, height2) + 10);
			} else {
				$('html').height(Math.max(height1, height3, height2));
				$('body').height(Math.max(height1, height3, height2));
			}

		}

		$(document).ready(function() {
			
			
			htmlbodyHeightUpdate();
			$(window).resize(function() {
				htmlbodyHeightUpdate();
			});
			$(window).scroll(function() {
				height2 = $('.container-main').height();
				htmlbodyHeightUpdate();
			});

			var Offset = $('#test').offset();
			$(window).scroll(function() {
				if ($(document).scrollTop() > Offset.top) {
					$('#test').addClass('Fixed');
				} else {
					$('#test').removeClass('Fixed');
				}
			});
		});
	</script>
</body>
</html>