<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="resources/css/Sliders.css">
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
<script src="resorces/js/infiniteScroll.js"></script> 
<script type="text/javascript">
	$(function() {
		$(".sliders_auto").bxSlider({
			auto : true,
			slidwidth : 500,
			autoHover : true,
			pager : false,
			mode : 'fade',
		});
		$(".sliders").bxSlider({
			auto : false,
			slidwidth : 500,
			pager : false,
		});
	});
</script>
</head>


<body>
	<div>
		<section>
			<div class="content-home">
				<div class="sliders_auto">
					<div><img src="resources/images/a.jpg"></div>
					<div><img src="resources/images/b.jpg"></div>
					<div><img src="resources/images/c.jpg"></div>
					<div><img src="resources/images/d.jpg"></div>
					<div><img src="resources/images/e.jpg"></div>
				</div>
			</div>
		</section>
		<section>
			<div class="content-home1">
				<div class="sliders">
					<div><img src="resources/images/a.jpg"></div>
					<div><img src="resources/images/b.jpg"></div>
					<div><img src="resources/images/c.jpg"></div>
					<div><img src="resources/images/d.jpg"></div>
					<div><img src="resources/images/e.jpg"></div>
				</div>
			</div>
		</section>
		<section>
			<div class="content-home1">
				<div class="sliders">
					<div><img src="resources/images/a.jpg"></div>
					<div><img src="resources/images/b.jpg"></div>
					<div><img src="resources/images/c.jpg"></div>
					<div><img src="resources/images/d.jpg"></div>
					<div><img src="resources/images/e.jpg"></div>
				</div>
			</div>
		</section>
	</div>


</body>


</html>