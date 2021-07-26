<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="resources/css/Sliders.css">
<link rel="stylesheet" href="resources/css/header.css">

<script src="resorces/js/infiniteScroll.js"></script>
<script type="text/javascript">
	$(function() {
		var images = new Array(100);
		images[0] = "resources/images/pd_img/vegetable/vegetable_01.jpg";
		images[1] = "resources/images/pd_img/vegetable/vegetable_02.jpg";
		images[2] = "resources/images/pd_img/vegetable/vegetable_03.jpg";
		images[3] = "resources/images/pd_img/vegetable/vegetable_04.jpg";
		images[4] = "resources/images/pd_img/vegetable/vegetable_05.jpg";
		images[5] = "resources/images/pd_img/vegetable/vegetable_06.jpg";
		images[6] = "resources/images/pd_img/vegetable/vegetable_07.jpg";
		images[7] = "resources/images/pd_img/vegetable/vegetable_08.jpg";
		images[8] = "resources/images/pd_img/vegetable/vegetable_09.jpg";
		images[9] = "resources/images/pd_img/vegetable/vegetable_10.jpg";
		images[10] = "resources/images/pd_img/vegetable/vegetable_11.jpg";
		images[11] = "resources/images/pd_img/vegetable/vegetable_12.jpg";
		images[12] = "resources/images/pd_img/vegetable/vegetable_13.jpg";
		images[13] = "resources/images/pd_img/vegetable/vegetable_14.jpg";
		images[14] = "resources/images/pd_img/vegetable/vegetable_15.jpg";
		images[15] = "resources/images/pd_img/vegetable/vegetable_16.jpg";
		images[16] = "resources/images/pd_img/vegetable/vegetable_17.jpg";
		images[17] = "resources/images/pd_img/vegetable/vegetable_18.jpg";
		images[18] = "resources/images/pd_img/vegetable/vegetable_19.jpg";
		images[19] = "resources/images/pd_img/vegetable/vegetable_20.jpg";
		images[20] = "resources/images/pd_img/vegetable/vegetable_21.jpg";
		images[21] = "resources/images/pd_img/vegetable/vegetable_22.jpg";
		images[22] = "resources/images/pd_img/vegetable/vegetable_23.jpg";
		images[23] = "resources/images/pd_img/vegetable/vegetable_24.jpg";
		images[24] = "resources/images/pd_img/vegetable/vegetable_25.jpg";
		images[25] = "resources/images/pd_img/vegetable/vegetable_26.jpg";
		images[26] = "resources/images/pd_img/vegetable/vegetable_27.jpg";
		images[27] = "resources/images/pd_img/vegetable/vegetable_28.jpg";
		images[28] = "resources/images/pd_img/vegetable/vegetable_29.jpg";
		images[29] = "resources/images/pd_img/vegetable/vegetable_30.jpg";
		images[30] = "resources/images/pd_img/vegetable/vegetable_31.jpg";
		images[31] = "resources/images/pd_img/vegetable/vegetable_32.jpg";
		images[32] = "resources/images/pd_img/vegetable/vegetable_33.jpg";
		images[33] = "resources/images/pd_img/vegetable/vegetable_34.jpg";
		images[34] = "resources/images/pd_img/vegetable/vegetable_35.jpg";
		images[35] = "resources/images/pd_img/vegetable/vegetable_36.jpg";
		images[36] = "resources/images/pd_img/vegetable/vegetable_37.jpg";
		images[37] = "resources/images/pd_img/vegetable/vegetable_38.jpg";
		images[38] = "resources/images/pd_img/vegetable/vegetable_39.jpg";
		images[39] = "resources/images/pd_img/vegetable/vegetable_40.jpg";
		images[40] = "resources/images/pd_img/aquatic/aquatic_01.jpg";
		images[41] = "resources/images/pd_img/aquatic/aquatic_02.jpg";
		images[42] = "resources/images/pd_img/aquatic/aquatic_03.jpg";
		images[43] = "resources/images/pd_img/aquatic/aquatic_04.jpg";
		images[44] = "resources/images/pd_img/aquatic/aquatic_05.jpg";
		images[45] = "resources/images/pd_img/aquatic/aquatic_06.jpg";
		images[46] = "resources/images/pd_img/aquatic/aquatic_07.jpg";
		images[47] = "resources/images/pd_img/aquatic/aquatic_08.jpg";
		images[48] = "resources/images/pd_img/aquatic/aquatic_09.jpg";
		images[49] = "resources/images/pd_img/aquatic/aquatic_10.jpg";
		images[50] = "resources/images/pd_img/aquatic/aquatic_11.jpg";
		images[51] = "resources/images/pd_img/aquatic/aquatic_12.jpg";
		images[52] = "resources/images/pd_img/aquatic/aquatic_13.jpg";
		images[53] = "resources/images/pd_img/aquatic/aquatic_14.jpg";
		images[54] = "resources/images/pd_img/aquatic/aquatic_15.jpg";
		images[55] = "resources/images/pd_img/aquatic/aquatic_16.jpg";
		images[56] = "resources/images/pd_img/aquatic/aquatic_17.jpg";
		images[57] = "resources/images/pd_img/aquatic/aquatic_18.jpg";
		images[58] = "resources/images/pd_img/aquatic/aquatic_19.jpg";
		images[59] = "resources/images/pd_img/aquatic/aquatic_20.jpg";
		images[60] = "resources/images/pd_img/aquatic/aquatic_21.jpg";
		images[61] = "resources/images/pd_img/aquatic/aquatic_22.jpg";
		images[62] = "resources/images/pd_img/aquatic/aquatic_23.jpg";
		images[63] = "resources/images/pd_img/aquatic/aquatic_24.jpg";
		images[64] = "resources/images/pd_img/aquatic/aquatic_25.jpg";
		images[65] = "resources/images/pd_img/aquatic/aquatic_26.jpg";
		images[66] = "resources/images/pd_img/aquatic/aquatic_27.jpg";
		images[67] = "resources/images/pd_img/aquatic/aquatic_28.jpg";
		images[68] = "resources/images/pd_img/aquatic/aquatic_29.jpg";
		images[69] = "resources/images/pd_img/aquatic/aquatic_30.jpg";
		images[70] = "resources/images/pd_img/fruit/fruit_01.jpg";
		images[71] = "resources/images/pd_img/fruit/fruit_02.jpg";
		images[72] = "resources/images/pd_img/fruit/fruit_03.jpg";
		images[73] = "resources/images/pd_img/fruit/fruit_04.jpg";
		images[74] = "resources/images/pd_img/fruit/fruit_05.jpg";
		images[75] = "resources/images/pd_img/fruit/fruit_06.jpg";
		images[76] = "resources/images/pd_img/fruit/fruit_07.jpg";
		images[77] = "resources/images/pd_img/fruit/fruit_08.jpg";
		images[78] = "resources/images/pd_img/fruit/fruit_09.jpg";
		images[79] = "resources/images/pd_img/fruit/fruit_10.jpg";
		images[80] = "resources/images/pd_img/fruit/fruit_11.jpg";
		images[81] = "resources/images/pd_img/fruit/fruit_12.jpg";
		images[82] = "resources/images/pd_img/fruit/fruit_13.jpg";
		images[83] = "resources/images/pd_img/fruit/fruit_14.jpg";
		images[84] = "resources/images/pd_img/fruit/fruit_15.jpg";
		images[85] = "resources/images/pd_img/fruit/fruit_16.jpg";
		images[86] = "resources/images/pd_img/fruit/fruit_17.jpg";
		images[87] = "resources/images/pd_img/fruit/fruit_18.jpg";
		images[88] = "resources/images/pd_img/fruit/fruit_19.jpg";
		images[89] = "resources/images/pd_img/fruit/fruit_20.jpg";
		images[90] = "resources/images/pd_img/fruit/fruit_21.jpg";
		images[91] = "resources/images/pd_img/fruit/fruit_22.jpg";
		images[92] = "resources/images/pd_img/fruit/fruit_23.jpg";
		images[93] = "resources/images/pd_img/fruit/fruit_24.jpg";
		images[94] = "resources/images/pd_img/fruit/fruit_25.jpg";
		images[95] = "resources/images/pd_img/fruit/fruit_26.jpg";
		images[96] = "resources/images/pd_img/fruit/fruit_27.jpg";
		images[97] = "resources/images/pd_img/fruit/fruit_28.jpg";
		images[98] = "resources/images/pd_img/fruit/fruit_29.jpg";
		images[99] = "resources/images/pd_img/fruit/fruit_30.jpg";

		//스크롤 바닥 감지
		window.onscroll = function(e) {
			//추가되는 임시 콘텐츠
			//window height + window scrollY 값이 document height보다 클 경우,

			if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
				//실행할 로직 (콘텐츠 추가)
				//var addContent = '<div class="block"></div>';
				var index1 = Math.floor(Math.random() * images.length);//이미지 배열의 길이만큼의 랜덤 숫자를 받는다.
				var index2 = Math.floor(Math.random() * images.length);//이미지 배열의 길이만큼의 랜덤 숫자를 받는다.
				var index3 = Math.floor(Math.random() * images.length);//이미지 배열의 길이만큼의 랜덤 숫자를 받는다.
				var index4 = Math.floor(Math.random() * images.length);//이미지 배열의 길이만큼의 랜덤 숫자를 받는다.
				while (1) {
					if (index1 == index2 || index1 == index3
							|| index1 == index4 || index2 == index3
							|| index2 == index4 || index3 == index4)//받아온 숫자가 겹친다면 다시한번 숫자를 랜덤으로 돌린다.
					{
						var index1 = Math.floor(Math.random() * images.length);
						var index2 = Math.floor(Math.random() * images.length);
						var index3 = Math.floor(Math.random() * images.length);
						var index4 = Math.floor(Math.random() * images.length);
					} else { //4개의 인덱스가 모두 값이 다를경우 실행된다.
						var addContent = '<div class="block">'
								+ '<div class="foodblock">'
								+ "<img src='" + images[index1]  + "'width=300>"
								+ "<h1>상품명 : 데이터베이스</h1>"
								+ "<h1>가격  : 데이터베이스</h1>"
								+ '</div>'
								+ '<div class="foodblock">'
								+ "<img src='" + images[index2]  + "'width=300>"
								+ "<h1>상품명 : 데이터베이스</h1>"
								+ "<h1>가격  : 데이터베이스</h1>"
								+ '</div>'
								+ '<div class="foodblock">'
								+ "<img src='" + images[index3]  + "'width=300>"
								+ "<h1>상품명 : 데이터베이스</h1>"
								+ "<h1>가격  : 데이터베이스</h1>"
								+ '</div>'
								+ '<div class="foodblock">'
								+ "<img src='" + images[index4]  + "'width=300>"
								+ "<h1>상품명 : 데이터베이스</h1>"
								+ "<h1>가격  : 데이터베이스</h1>" + '</div>' + '</div>';
						$('article').append(addContent); //페이지 끝에 addContent를 붙여넣는다.
						break;
					}
				}
			}
		};
	});
</script>
</head>
<body>
	<article>
		<!-- 여기에 상품정보가 표시 된다. -->
	</article>
</body>
</html>