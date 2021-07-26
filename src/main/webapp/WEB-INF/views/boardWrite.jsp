<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!-- java.sql 패키지 안에 있는 모든 클래스들을 IMPORT 시키는 의미 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>

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
<link rel="stylesheet" href="resources/css/Sliders.css">
<link rel="stylesheet" href="resources/css/header.css">
<!-- 자바스크립트 영역 -->
<script type="text/javascript">
	$(function() {

		var article = (".boardTable .show");

		$(".boardTable .item  td").click(function() {

			var myArticle = $(this).parents().next("tr");

			if ($(myArticle).hasClass('hide')) {

				$(article).removeClass('show').addClass('hide');

				$(myArticle).removeClass('hide').addClass('show');

			}

			else {

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

					<h4 class="BMName">글쓰기</h4>
					<hr class="BMline">
					<!-- ------------------- -->
					<!-- 검색 폼 영역 -->

					<!-- 게시판 목록 영역 -->

					<div class="write">

						<label for="wName">제목</label>
						<!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
						<!-- required 속성을 설정하면 필수입력 사항이된다. -->
						<!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
						<input type="text" class="form-control" id="title"
							placeholder="제목 입력(4-100)" name="title" maxlength="100"
							required="required" pattern=".{4,100}"><br> <label
							for="wConName">내용</label>
						<!--  여러줄의 데이터를 입력하고 하고자 할때 textarea 태그를 사용한다. -->
						<!--  textarea 안에 있는 모든 글자는 그대로 나타난다. 공백문자, tag, enter -->
						<textarea class="form-control" rows="5" id="content"
							name="content" placeholder="내용 작성"></textarea>

						<input type="file" name="SelectFile" />
					</div>


					<!-- //게시판 목록 영역 -->

					<!-- 버튼 영역 -->
					<nav class="boardBut">
						<p>

							<input type="button" value="완료" onclick="goUrl('boardList.jsp');" />
							<a href="./boardCenter"> <input type="button" value="취소하기" />
							</a>

						</p>
					</nav>
					<!-- //버튼 영역 -->
					<!-- ------------------------- -->

				</div>

			</div>
		</div>
		<!-- //all -->
		<footer>
			<%@include file="footer.jsp"%>
		</footer>
	</div>



</body>
</html>