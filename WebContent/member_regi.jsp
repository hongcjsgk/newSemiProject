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
				<link rel="stylesheet" type="text/css" href="css/login.css"/>
		<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
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
							<li ><a href="main_page.jsp">메인페이지</a></li>
							<li><a href="recommand_list.jsp">JMT 추천맛집</a></li>
							<li><a href="review_list.jsp">리뷰 게시판</a></li>
							<li class="active"><a href="my_page_main.jsp">마이페이지</a></li>
						
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
 -->		<form action="my_controller" method="post" >
 <input type="hidden" name="command" value="add">
 
 <div class="login-wrap2">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" ><label for="tab-1" class="tab"></label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"  checked="checked"><label for="tab-2" class="tab">회원가입</label>
		<div class="login-form">
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">아이디</label>
					<input id="user" name="id" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">비밀번호</label>
					<input id="pass" name="pwd" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">비밀번호 확인</label>
					<input id="pass_chk" type="password" class="input" data-type="password">
				</div>
					<div class="group">
					<label for="pass" class="label">이름</label>
					<input id="pass" name="name" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">이메일</label>
					<input id="pass" name="email" type="text" class="input">
				</div>
					<div class="group">
					<label for="pass" class="label">핸드폰번호</label>
					<input id="pass" name="phone" type="text" class="input">
				</div>
				
				
					<div class="group">
					<label for="pass" class="label">주소</label>
				<input class="input"  type="text" id="sample4_postcode" placeholder="우편번호"><br>
						<input class="input" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					<input class="input"  name="address1" width="50" type="text" id="sample4_roadAddress" placeholder="도로명주소"><br>
			<input class="input"   name="address2" maxlength="100" type="text" id="sample4_detailAddress" placeholder="상세주소">
			
				</div>		
		<div class="group">
					<input type="submit" class="button" value="Sign Up">
				</div>


				</div>
			</div>
		
		</div>
	</div>
	</form>
</div>
 
			
				<div class="divider">&nbsp;</div>
	
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