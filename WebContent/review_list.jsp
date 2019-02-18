<%@page import="dto.member_Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Monochromed by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<%
member_Dto mem = (member_Dto)session.getAttribute("login");
    		%>
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
			
			<%if(mem == null){
				%>
			
			
				<div class="login_section">
					<nav id="nav">
					<ul>
							<li class="active"><a href="login_page.jsp">로그인</a></li>
							<li class="active"><a href="member_regi.jsp">회원가입</a></li>

						
						</ul>
					</nav>
				</div>
				<%
				}else{ 
					%>
					<div class="login_section">
					<nav id="nav">
					<ul>
							<li class="active"><span style="color: white;"><%=mem.getName() %>님 환영합니다</span></li>
					<li class="active"><a href="logout.jsp">로그아웃</a></li>			

						
						</ul>
					</nav>
				</div>
				<%
				}
			 %>
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
			
			
			
			
			
				
	
	
<!--여기까지 메인부분 	-->				

		<div class="divider">&nbsp;</div>	
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