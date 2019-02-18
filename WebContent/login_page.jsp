<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Monochromed by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>JMT</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		
		<link rel="stylesheet" type="text/css" href="css/login.css"/>
			<link rel="stylesheet" type="text/css" href="css/skel-noscript.css" />
			<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body class="homepage">
<script type="text/javascript">
document.body.style.zoom = 0.67;
</script>
	<!-- Header -->
		<div id="header">
			<div class="container">
				<div class="login_section">
					<nav id="nav">
					<ul>
							<li class="active"><a href="login_page.jsp">로그인</a></li>
							<li class="active"><a href="member_regi.jsp">회원가입</a></li>

						
						</ul>
					</nav>
				</div>
				<!-- Logo -->
					<div id="logo">
						<h1><a href="index">JMT</a></h1>
						
					</div>
					
				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li class="active"><a href="main_page.jsp">메인페이지</a></li>
							<li><a href="recommand_list.jsp">JMT 추천맛집</a></li>
							<li><a href="review_list.jsp">리뷰 게시판</a></li>
							<li><a href="my_page_main.jsp">마이페이지</a></li>
						
						</ul>
					</nav>

	
			
			</div>
			
		</div>
	<!-- Header -->
			
	<!-- Main -->
		<div id="main">
			<div class="container">
<!--
여기서부터 메인부분 
 -->		
 
	<form name="loginInfo" onsubmit="return checkValue()" action="my_controller" method="post">
		<input type="hidden" name="command" value="login">
<div class="login-wrap1">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">아이디</label>
					<input id="user" name="id" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">비밀번호</label>
					<input id="pass" name="pwd" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span>아이디 저장</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="로그인">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">비밀번호 찾기</a>
				</div>
			</div>

		</div>
	</div>
</div>
</form>				
	
	
<!--여기까지 메인부분 	-->				


				<div class="row">			
				</div>
			
			</div>
		</div>
	<!-- Main -->

	<!-- Footer -->
		<div id="footer">
			<div class="container" align="center">
	
			<nav id="nav">
						<ul>
							<li class="active"><a href="team.jsp">팀소개</a></li>
							<li class="active"><a href="sitemap.jsp">사이트맵</a></li>
							<li class="active"><a href="qnabbs.jsp">Q&A</a></li>
						</ul>
					</nav>
			
				
			</div>
		</div>

	</body>
</html>