<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/myPage_iframe_content.css">
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
	<div class="iframe_wrapper">
		<!-- 모든요소를 랩핑하는 div -->
		<div class="iframe_top">개인 정보 수정</div>
		<!-- 제목부분 -->
		<div class="contour_box"></div>
		<!-- ㄴ요소 구분선 -->
		<div class="input_bundle">
			<input type="text" class="input_id" placeholder="아이디"><br>
			<input type="text" class="input_pw" placeholder="비번"><br>
			<input type="text" class="input_seconName" placeholder="닉네임"><br>
			<input type="text" class="input_name" placeholder="이름"><br>
			<input type="text" class="input_addr" placeholder="주소"><br>
			<input type="text" class="input_date" placeholder="생년월일"><br>
		</div>
		<div class="button_bundle">
			<div class="iframe_button_ok" onclick="">
				확인
			</div>
			<div class="iframe_button_no" onclick="">
				취소
			</div>
		</div>
	</div>
</body>


</html>