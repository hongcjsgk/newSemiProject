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

	<!-- Header -->
		<div id="header">
			<div class="container">
				<div class="login_section">
					<nav id="nav">
					<ul>
							<li class="active"><a href="index.html">로그인</a></li>
							<li class="active"><a href="threecolumn.html">회원가입</a></li>

						
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
							<li class="active"><a href="index.html">메인페이지</a></li>
							<li><a href="threecolumn.html">JMT 추천맛집</a></li>
							<li><a href="twocolumn1.html">리뷰 게시판</a></li>
							<li><a href="twocolumn2.html">마이페이지</a></li>
						
						</ul>
					</nav>

	
			
			</div>
			
		</div>
	<!-- Header -->
			
	<!-- Main -->
		<div id="main" align="center">
			<div class="container">
			<div id="wrap">
		<br><br>
		<b><font size="6" color="gray">회원가입</font></b>
		<br><br><br>
		
		
		<!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
		<!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 JoinPro.jsp -->
		<form action="regiAf.jsp" name="userInfo" method="post"
				onsubmit="return checkValue()">
			<table>
				<tr>
					<td id="title">아이디</td>
					<td>
						<input type="text" name="id" maxlength="50">
						<input type="button" class="button" value="중복확인" >	
					</td>
				</tr>
				
				<tr>
					<td id="title">비밀번호</td>
					<td>
						<input type="password" name="pwd" maxlength="50">
					</td>
				</tr>
			
				<tr>
					<td id="title">비밀번호확인</td>
					<td>
						<input type="password" name="pwd" maxlength="50">
					</td>
				</tr>
						
				<tr>
					<td id="title">이름</td>
					<td>
						<input type="text" name="name" maxlength="50">
					</td>
				</tr>
					
				<tr>
					<td id="title">이메일</td>
					<td>
						<input type="text" name="email" maxlength="100">
				
					</td>
				</tr>
				<tr>
					<td id="title">주소</td>
					<td>
						<input type="text" id="sample4_postcode" placeholder="우편번호">
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					</td>
				</tr>	
				<tr>
				<td></td>
					<td>
						<input  width="100" type="text" id="sample4_roadAddress" placeholder="도로명주소">
						<input maxlength="100" type="text" id="sample4_jibunAddress" placeholder="지번주소">
						<span id="guide" style="color:#999;display:none"></span>
					</td>
				</tr>
				<tr>
				<td></td>
				<td>
						<input  maxlength="100" type="text" id="sample4_detailAddress" placeholder="상세주소">
						<input  maxlength="100" type="text" id="sample4_extraAddress" placeholder="참고항목">
				</td>				
				</tr>
					
			</table>
			<br>
			<input type="submit" class="button" value="가입"/>  
			<input type="button" class="button" value="취소" onclick="goLoginForm()">
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
							<li class="active"><a href="index.html">팀소개</a></li>
							<li class="active"><a href="threecolumn.html">사이트맵</a></li>
							<li class="active"><a href="twocolumn1.html">Q&A</a></li>
						</ul>
					</nav>
			
				
			</div>
		</div>

	</body>
</html>