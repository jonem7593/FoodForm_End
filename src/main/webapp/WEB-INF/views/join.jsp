<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>


<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/Sliders.css">
<link rel="stylesheet" href="resources/css/member.css">
<link rel="stylesheet" href="resources/css/header.css">
<title>회원 가입</title>
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
</head>


<body>
	<header>
		<%@include file="header.jsp"%>
	</header>
	<section>
		<div class="content">
			<h2 class="join-form">회원 가입</h2>
			<form class="join-form" method="post" action="./memberInsert"
				onsubmit="">
				<table>
					<tr>
						<th class="join1">ID:</th>
						<td><input class="join2" type="text" name="m_id"
							placeholder="아이디"><br></td>
					</tr>
					<tr>
						<th class="join1">PW:</th>
						<td><input class="join2" type="password" name="m_pw"
							placeholder="비밀번호"></td>
					</tr>
					<tr>
						<th class="join1">PW 확인:</th>
						<td><input class="join2" type="password" name="m_pw"
							placeholder="비밀번호 확인">
						<td>
					</tr>
					<tr>
						<th class="join1">이름:</th>
						<td><input class="join2" type="text" name="m_name"
							placeholder="이름"></td>
					</tr>
					<tr>
						<th class="join1">이메일:</th>
						<td><input class="join2" type="text" name="m_mail"
							placeholder="이메일"></td>
					</tr>
					<tr>
						<th class="join1">주소:</th>
						<td><input class="join2" type="text" name="m_addr"
							placeholder="주소"></td>
					</tr>
				</table>
				<input type="submit" class="login-btn" value="가입">
			</form>
		</div>
	</section>
</body>


<script type="text/javascript">
	function check() {
		//form 태그의 내용을 전부 가져오기
		var frm = document.join;
		console.log(frm);

		//submit 버튼을 제외한 나머지 input태그의 개수
		var length = frm.length - 1;

		//input 태그 중에서 value가 ""인 요소 확인(입력안된 요소)
		for (var i = 0; i < length; i++) {
			if (frm[i].value == "" || frm[i].value == null) {
				alert(frm[i].title + " 입력!");
				//입력 안된 input 태그에 포커스를 줌.
				frm[i].focus();
				return false;//action 부분이 실행되지 않음.
			}
		}
		//모든 input 태그에 입력이 다 되었을 경우. -> controller로 전송.
		return true;//action 부분이 실행됨.
	}

	//아이디 중복 여부 확인 함수
	//ajax를 사용하여 확인 결과 경고창에 띄움.
	function idcheck() {
		//입력한 id 값 읽어오기
		var id = $("#mid").val();

		//id값을 입력했는지 확인
		if (id == "") {
			alert("아이디를 입력하세요.");
			$("#mid").focus();
			return;
		}

		var ckObj = {
			"mid" : id
		};

		//ajax를 사용하여 controller로 전송
		$.ajax({
			url : "idCheck",
			type : "get",
			data : ckObj,
			success : function(result) {
				//중복 id가 없으면 "ok", 있다면 "fail" 전송
				if (result == "ok") {
					alert("아이디 사용 가능");
				} else {
					alert("사용할 수 없는 아이디");
					$("#mid").val("");//입력값 지움
					$("#mid").focus();//아이디 입력칸에 포커스
				}
			},
			error : function(error) {
				console.log(error);
			}
		});
	}
</script>
<script type="text/javascript">
	$(function() {
		var windo = $(window), //윈도우창을 변수로 저장
		categorytabs = $('.cate-back'), //카테고리바를 변수로 저장
		catemenuTop = categorytabs.offset().top;//top에서 카테고리바까지의 거리를 변수에 저장

		windo.scroll(function() {//윈도우창에서 스크롤했을떄 함수 발생
			if ($(this).scrollTop() > catemenuTop) {
				//윈도우창에서의 스크롤 양이  
				//top에서 카테고리까지의 거리보다 작으면 
				categorytabs.addClass('sti');
				//카테고리바에 sti 클래스를 추가
				//즉. 카테고리바에는 sti클래스가 현재 없는상황에서 자바스크립트로 생성한다는 의미
			} else {
				categorytabs.removeClass('sti');
				//그렇지 않으면(스크롤양이 적어지면) sti 클래스를 지원라
			}
		});

	});
</script>


</html>