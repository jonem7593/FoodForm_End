<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%--     <title><%= title %></title> --%>
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
</head>


<body>
	<div class="board">
		<header>
			<%@include file="header.jsp"%>
		</header>
		<div>
			<!-- all -->
			<div class="boardTop">
				<h3 class="boardName">고객센터</h3>
				<hr class="boardTopline">
			</div>
			<div class="boardAll">
				<ul class="boardMenu">
					<li><a href="./boardCenter">공지사항</a>
					<li><a href="./qna">자주하는 질문</a>
					<li><a href="./inquiry">1:1문의</a>
				</ul>

				<div class="boardBox">

					<h4 class="BMName">1:1문의</h4>
					<hr class="BMline">





					<%--     <h1><%= title %</h1> --%>
					<table border="2">
						<tr>
							<th>번호</th>
							<%--         <td><%=read.idx%></td> --%>
							<th>조회수</th>
							<%--         <td><%=read.hit%></td> --%>
							<th>작성자</th>
							<%--         <td><%=read.writer%></td> --%>
						</tr>
						<tr>
							<th>제목</th>
							<%--        <td colspan="5"><%=read.title%></td> --%>
						</tr>
						<tr>
							<th>작성일</th>
							<%--        <td colspan="2"><%=read.regdate%></td> --%>

						</tr>
						<tr>
							<%--         <td colspan="6" height="400" ><%=read.content%></td> --%>
						</tr>
						<tr>
							<td colspan="6"><a href="./boardCenter"> <input
									type="button" value="목록" />
							</a></td>
						</tr>
					</table>
				</div>
				<!-- //all -->





				<footer>
					<%@include file="footer.jsp"%>
				</footer>
</body>
</html>