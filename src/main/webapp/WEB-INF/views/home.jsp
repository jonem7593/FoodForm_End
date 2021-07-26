<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>

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
</head>
<body>
	<header>
		<%@include file="header.jsp"%>
	</header>
	
	<section>
		<%@include file="sliders.jsp"%>
		<%@include file="infinityscroll.jsp"%>
	</section>
	
	<footer>
		<%@include file="footer.jsp"%>
	</footer>
</body>
</html>
