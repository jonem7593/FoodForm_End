<%@ page language="java" contentType="text/html; charset=UTF-8" 
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 페이지</title>
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/pdDetail.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script><script src="resources/js/jquery.serializeObject.js"></script>
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
<script type="text/javascript">
$(function(){
	var $menu = $('#nav nav a'),//탭 내용 
		$contents = $('#main > div');//탭을 클릭시 보여질 내용
		
		console.log($menu);//배열처럼 인덱스 번호로 저장이 된다(contents도 마찬가지)
		/*$menu를 클릭하면 해당요소에만 클래스명 item이 추가 되도록*/
		$menu.click(function(e){
			e.preventDefault();//기본 기능을 막는다. 링크를 안먹게 
			//$menu.removeClass('item');
			//$(this).addClass('item');
			//한줄로 처리 하는방법 siblings => 밑에 있는 녀석들 포함해서
			//$(this).addClass('item').siblings().removeClass('item');
			var idx = $(this).index();//idx에 menu(this) 인덱스 번호 저장
			var section = $contents.eq(idx);//section에 contens 인덱스 번호도 저장
			var sectionDistance = section.offset().top;//top에서 contents까지의 거리를 저장
			console.log(idx);//index 번호를 통해 어떤게 클릭되어있는데 번호로 확인이 가능
			//ex)a.scrollTop() 스크롤양을 확인
			$('html,body').stop().animate({scrollTop:sectionDistance});
			//html의 하던일을 멈추고 animate , html 에 스크롤양을 줄거다 html의 스크롤양을 sectionDistance로 바꾸겠다.
			//스크롤양이 만들어지면서 이동할거다				
		});
		/*
		윈도우 스크롤이 생기면 
			$contents를 마다 할일
				각각의 화면상단에서의 거리sectionDistance 보다 
				스크롤양이 많은지 적은지
				많다는 조건이 참이면 
					각요소마다 순번 변수명 idx 저장 
					그 순번에 해당하는 메뉴에만 클래스명 item  추가
		*/
		$(window).scroll(function(){
			$contents.each(function(){//contents 들 마다할일
				if($(this).offset().top <= $(window).scrollTop()){
					var idx = $(this).index();
					$menu.removeClass('item');
					$menu.eq(idx).addClass('item');//순번의 해당하는 menu에 item 클래스 추가
				}
			});
		});	
});
</script>
<script type="text/javascript">
//var offset = p.offset();//무조건 화면상단에서의 거리
//a.position() 가까운 부모중에 포지션이 기본값이 아닌 요소를 기준으로 좌측, 우측에서의 거리
$(function(){
	var wind = $(window),
		navi = $('.tabs'),
		menuoffsetTop = navi.offset().top;
		
		console.log(menuoffsetTop);
		
	wind.scroll(function(){
			if($(this).scrollTop() > menuoffsetTop) {
				navi.addClass('stiky');
				
			} else {
				navi.removeClass('stiky');
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
<div>
<p><img src="resources/images/productpic/goruma.jpg" align="left"></p>
</div>
<form>
<table>
	<tr>
		<th class="pd01">상품명: </th>
		<td class="pd02">데이터 베이스</td>
	</tr>
	<tr>
		<th class="pd01">가격: </th>
		<td class="pd02">데이터 베이스</td>
	</tr>
	<tr>
		<th class="pd01">판매 단위: </th>
		<td class="pd02">데이터 베이스</td>
	</tr>
	<tr>
		<th class="pd01">중량: </th>
		<td class="pd02">데이터 베이스</td>
	</tr>
	<tr>
		<th class="pd01">유통기한: </th>
		<td class="pd02">데이터 베이스</td>
	</tr>
	<tr>
		<th class="pd01">수량: </th>
		<td class="pd02">데이터 베이스</td>
	</tr>
	<tr>
		<th class="pd03">총 상품 금액: </th>
		
	</tr>
	<tr>
		<td><input class="barket-btn" type="submit" value="장바구니 담기"></td>
	</tr>
</table>
</form>	
<hr>
<div class="tabs-back">
	<div class="tabs-cate">
		<div id="nav" class="tabs">
    <nav >
        <a href="#1" class="item">상품 설명</a>
        <a href="#2">상품 정보</a>
        <a href="#3">상품 후기</a>
        <a href="#4">상품 문의</a>
    </nav>
    	</div>
	</div>
</div>
<section id="main" >
    <div id="1" class="target" style="background:red;">상품 설명</div>
    <div id="2" class="target" style="background:blue;">상품 정보</div>
    <div id="3" class="target" style="background:yellow;">상품 후기</div>
    <div id="4" class="target" style="background:green;">상품 문의</div>
</section> 
  <!--   <div class="tab_content" id="pdex_content">
   		
    </div>
    
    <div class="tab_content" id="pdimpo_content">
		
	</div>
    <div class="tab_content" id="pdview_content">
      
	</div>
	<div class="tab_content" id="pdqu_content">
		
	</div> -->
	

</section>
<footer>
 <%@include file="footer.jsp"%>
</footer>
</body>
</html>

