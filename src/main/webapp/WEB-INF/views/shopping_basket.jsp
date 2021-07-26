<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<!-- 김예원 -->


<head>
<link rel="stylesheet" href="resources/css/Sliders.css"><!-- 슬라이더로드(슬라이더.CSS 내부에 푸터존재) -->
<link rel="stylesheet" href="resources/css/header.css"><!-- 헤더.CSS 로드 -->
<link rel="stylesheet" href="resources/css/shopping_basket.css"><!-- 장바구니.CSS 로드 -->
<script src="resources/js/jquery.serializeObject.js"></script>
<meta charset="UTF-8">
<title>장바구니</title>
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
	<header><!-- ==헤더=================================================== -->
		<%@include file="header.jsp"%>
	</header>
	<br><!-- ======헤더 종료============================================== -->
	
	
	<div class="all_contents_wrapper"><!-- 모든 내용의 부모요소=========== -->
		<div class="shopping_contents_wrapper"><!-- 상품의 여러요소 -->
			<div class="photo_area"><!-- 상품의 사진요소 -->
				
			</div>
			<div class="object_explanation_area"><!-- 상품의 설명 요소 -->
			
			</div>
		</div>
		<div class="shopping_contents_wrapper">
			<div class="photo_area">
				
			</div>
			<div class="object_explanation_area">
			
			</div>
		</div>
		<div class="shopping_contents_wrapper">
			<div class="photo_area">
				
			</div>
			<div class="object_explanation_area">
			
			</div>
		</div>
		<div class="shopping_contents_wrapper">
			<div class="photo_area">
				
			</div>
			<div class="object_explanation_area">
			
			</div>
		</div>
		
		<div class="payment_area_wrapper"><!-- !!!반드시 이건 아래에 존재할것. [결제창임 !!!{중요함}!!! ]!!! -->
			<div class="specification_font_area"><!-- 명세서 전용 영역지정 -->
				명세서
			</div>
			<div class="specification_contents_area"><!-- 명세서 내용 영역 지정 -->
				<div class="specification_explanation_area"><!-- 명세서 설명 부분 영역 지정 -->
				
				</div>
				<div class="specification_button_area"><!-- 명세서 버튼 영역 지정 -->
					<button type="button" class="button_area">결제하기!</button>
				</div>
			</div>
		</div><!-- 결제창 END ============================================================================== -->
	</div><!-- all_contents_wrapper====================================== -->

</body>


</html>