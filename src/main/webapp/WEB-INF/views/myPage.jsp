<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/Sliders.css">
<link rel="stylesheet" href="resources/css/myPage.css">
<link rel="stylesheet" href="resources/css/header.css">
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
<title>마이페이지</title>
</head>


<body>
	<header>
		<%@include file="header.jsp"%>
	</header>
	<br>

	<div class="mypage_wrapper">
		<div class="left_menu">
			<div class="mypage">마이페이지</div>
			<div class="order_history">
				<a href="myPage_orderHistory" target="iframe">주문내역</a>
			</div>
			<div class="order_history">
				<a href="myPage_productReview" target="iframe">상품후기</a>
			</div>
			<div class="order_history">
				<a href="myPage_question" target="iframe">문의</a>
			</div>
			<div class="order_history">
				<a href="myPage_pointCoupon" target="iframe">적립금/쿠폰</a>
			</div>
			<div class="order_history">
				<a href="myPage_privacy" target="iframe">개인정보수정</a>
			</div>
		</div>

		<div class="all_div_meeting">
			<div class="member_Page">
				<div class="member_mypage_box">
					<div class="circle"
						style="background-image: url('resources/images/profile.png');"></div>
					<div class="member_name">000님</div>
				</div>
				<div class="contour_box"></div><!-- 구분선 전용 박스 -->
				<div class="member_div_box">
					<a href="" target="iframe">적립금 ></a>
				</div>
				<div class="contour_box"></div><!-- 구분선 전용 박스 -->
				<div class="member_div_box">
					<a href="" target="iframe">쿠폰 ></a>
				</div>
				<div class="contour_box"></div><!-- 구분선 전용 박스 -->
				<div class="member_div_box">
					<a href="" target="iframe">등급 ></a><br>
					<div class="level">GÖLÐ</div>
				</div>
			</div>

			<div class="bottom_content_box">
				<iframe name="iframe" frameborder="0"></iframe>
			</div>
		</div>
	</div>
</body>


</html>