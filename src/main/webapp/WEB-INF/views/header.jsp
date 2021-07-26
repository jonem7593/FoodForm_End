<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<div class="sans">

<script type="text/javascript" src="resources/js/jquery.serializeObject.js">
<script type="text/javascript">
 $(function(){
   var windo = $(window),//윈도우창을 변수로 저장
      categorytabs = $('.cate-back'),//카테고리바를 변수로 저장
      catemenuTop = categorytabs.offset().top;//top에서 카테고리바까지의 거리를 변수에 저장
   
   windo.scroll(function(){//윈도우창에서 스크롤했을떄 함수 발생
      if($(this).scrollTop() > catemenuTop) {
         //윈도우창에서의 스크롤 양이  
         //top에서 카테고리까지의 거리보다 작으면 
         categorytabs.addClass('sti');
         //카테고리바에 sti 클래스를 추가
         //즉. 카테고리바에는 sti클래스가 현재 없는상황에서 자바스크립트로 생성한다는 의미
         }
      else{
         categorytabs.removeClass('sti');
         //그렇지 않으면(스크롤양이 적어지면) sti 클래스를 지원라
      }
   }); 
      
});
</script>
	<div class="top-bar">
		<!-- 상단바(검색, 로그인,회원가입 ...) -->
		<div class="toptop">
			<div class="top-left">
				<input type="text" class="sa_ch">
				<button class="ask">
					<img class="ask" alt="저를 눌러보세요!" src="resources/images/search.png">
				</button>
			</div>
			<div class="top-bar">
				<!-- 상단바(로고) -->
				<div class="toplogo">
					<a href="./"><img class="logoimg" alt="home"
						src="resources/images/LOGO.jpg"></a>

				</div>
			</div>
			<nav class="top-right">
				<ul>
					<li class="suc"><a href="./myPage">마이페이지</li>
					<!-- 로그인상태 -->
					<li class="suc"><a href="./shopping_basket">장바구니</a></li>
					<li class="suc"><a href="./logout">로그아웃</a></li>
					<!-- 비로그인상태 -->
					<li class="bef"><a href="./join">회원가입</a></li>
					<li class="bef"><a href="./login">로그인</a></li>
				</ul>
			</nav>
		</div>
	</div>


	<div class="cate-back">
		<!-- 카테고리바 -->
		<ul class="category">
			<li class="cate"><a href="#">카테고리</a>
				<ul>
					<li><a href="#">과일 / 채소</a></li>
					<li><a href="#">해산물</a></li>
					<li><a href="#">정육 / 계란</a></li>
					<li><a href="#">면 / 소스</a></li>
					<li><a href="#">생수 / 음료</a></li>
					<li><a href="#">간편식</a></li>
					<li><a href="#">해외</a></li>
				</ul>
			</li>
			<li class="cate"><a href="">베스트</a></li>
			<li class="cate"><a href="">신상품</a></li>
			<li class="cate"><a href="">이벤트</a></li>
			<li class="cate"><a href="./boardCenter">고객센터</a></li>

		</ul>
	</div>
</div>


