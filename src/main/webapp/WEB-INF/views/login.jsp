<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/Sliders.css">
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/member.css">
<script src="resources/js/jquery.serializeObject.js"></script>
<script type="text/javascript">
 $(function(){
   var windo = $(window), //윈도우창을 변수로 저장
      categorytabs = $('.cate-back'),//카테고리바를 변수로 저장
      catemenuTop = categorytabs.offset().top;//top에서 카테고리바까지의 거리를 변수에 저장
   
   windo.scroll(function(){ //윈도우창에서 스크롤했을떄 함수 발생
      if($(this).scrollTop() > catemenuTop) { //윈도우창에서의 스크롤 양이 op에서 카테고리까지의 거리보다 작으면 
         categorytabs.addClass('sti'); //카테고리바에 sti 클래스를 추가 ==> 즉. 카테고리바에는 sti클래스가 현재 없는상황에서 자바스크립트로 생성한다는 의미
      } else {
         categorytabs.removeClass('sti'); //그렇지 않으면(스크롤양이 적어지면) sti 클래스를 지원라
      }
   });
});
</script>
<title>로그인</title>
</head>


<body>
	<header>
		<%@include file="header.jsp"%>
	</header>
	<section>
		<div class="content">
			<h2 class="join-form">회원 가입</h2>
			<form class="join-form">
				<table>
					<tr>
						<th class="join1">ID:</th>
						<td><input class="join2" type="text" placeholder="아이디"><br></td>
					</tr>
					<tr>
						<th class="join1">PW:</th>
						<td><input class="join2" type="password" placeholder="비밀번호"></td>
					</tr>
				</table>
				<input type="button" value="로그인" /> <input type="button"
					value="회원가입" />
			</form>
		</div>
	</section>
</body>


</html>