<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<!-- java.sql 패키지 안에 있는 모든 클래스들을 IMPORT 시키는 의미 -->

<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<title>고객센터</title>
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
<!-- 자바스크립트 영역 -->
<script type="text/javascript">
        $(function(){  
            var article = (".boardTable .show");  
            $(".boardTable .item  td").click(function() {  
                var myArticle =$(this).parents().next("tr");  
                if($(myArticle).hasClass('hide')) {  
                    $(article).removeClass('show').addClass('hide');  
                    $(myArticle).removeClass('hide').addClass('show');  
                } else {  
                    $(myArticle).addClass('hide').removeClass('show');  
                }  
            });  
        });  
    </script>
<!-- //자바스크립트 영역 -->
</head>
<body>
	<div class="board">
		<header>
			<%@include file="header.jsp"%>
		</header>
		<div><!-- all -->
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
					<h4 class="BMName">자주하는 질문</h4>
					<hr class="BMline">
					<!-- ------------------- -->
					<!-- 검색 폼 영역 -->
					<table class="boardTable" border="1">
						<!-- 게시판 목록 영역 -->
						<colgroup>
							<col width="60" />
							<col width="400" />
							<col width="80" />
							<col width="100" />
							<col width="70" />
						</colgroup>
						<thead>
							<tr align="center">
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>등록일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="center" colspan="5">등록된 게시물이 없습니다.</td>
							</tr>
							<tr class="title">
								<td align="center">1</td>
								<td><a href="./boardRead">글제목</a></td>
								<td align="center">이름</td>
								<td align="center">날짜</td>
								<td align="center">10</td>
							</tr>
							<tr class="hide">
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td align="center" colspan="5">1</td>
							</tr>
						</tfoot>
					</table> <!-- //게시판 목록 영역 -->
					<nav class="boardBut"> <!-- 버튼 영역 ========================================== -->
							<input type="button" value="목록" onclick="goUrl('boardList.jsp');"/>
							<a href="./boardWrite"> <input type="button" value="글쓰기" /></a>
					</nav> <!-- 버튼 영역 끝  ====================================================== -->
				</div>
			</div>
		</div><!-- //all -->
		<footer><!-- 풋터 -->
			<%@include file="footer.jsp"%>
		</footer><!-- 풋터끝 -->
	</div>


</body>
</html>