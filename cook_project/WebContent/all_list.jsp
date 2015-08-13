<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<!-- <script type="text/javascript" src="js/Customer.js"></script> -->
<style type="text/css">
// p태그
p{
 margin: 0;
}
h3{
 margin: 0px 0 5px 0;
}
body {
	font-family: "맑은 고딕", "고딕", "굴림"
}

#wrapper {
	width: 860px;
	margin: 0 auto;
}

.menu_btn {
	width: 100%;
	height: 150px;
	margin: auto;
	background-color: #F64075;
	background-repeat: no-repeat;
	background-position: right center;
}

nav ul {
	float: left;
	width: 70%;
	margin-top: 50px;
	list-style: none;
}

nav ul li {
	display: inline;
	float: left; font-weight : bold;;
	font-size: 20px;
	margin: 15px;
	font-weight: bold;
}

nav ul li a {
	color: white;
	text-decoration: none;
}
/* section{margin:0 auto; width: 80%; height: auto;  padding: 5px;} */
section article{
	float:left;
	width:250px;
	height: 260px;
	margin: 5px;
	padding: 10px;
	border: 1px solid #ccc;
}
img{
	float: right;
	width: 250px;
	height: auto;
	border: 1px solid green;
	background-color: #ffc;
	text-align: center;
} 
footer p{ padding: 20px; }
footer{ 
 		 width: 800px;
 		 margin-bottom: 0;
 		 background-color: #333;
 		 color: white;
 		 text-align: center;
 		 clear: both; 
      }
</style>

</head>


<body>
	<header>
		<p>영행이형 로그인화면</p>
	</header>


	<div id="wrapper">
		<header class="menu_btn">
			<nav>
				<ul>
					<li><a href="#">전체</a></li>
					<li><a href="#">한식</a></li>
					<li><a href="#">중식</a></li>
					<li><a href="#">양식</a></li>
					<li><a href="#">글쓰기</a></li>
					<li><a href="#">즐겨찾기</a></li>
				</ul>
			</nav>
		</header>
	

	<section id="listTable">
	<c:if test="${empty list}">
  				<article><h3>등록된 자료가 없음</h3></article>
  	</c:if>
  	<c:if test="${!empty list}">
	<c:forEach items="${list}" var="k">
  				<article>
  					<img src="image/${k.image}" />
					<h3>${k.title}</h3>
					<p>${k.contents2}</p>
  				</article>
 	</c:forEach>
 	</c:if>
	 
  		<%--<c:if test="${!empty list}">
		<c:forEach items="${list}" var="k">
			<article>
				<img src="../menu_image/${k.image}.PNG" />
				<h3>${k.title}</h3>
				<p>${k.content1 }</p>
			</article>
		</c:forEach>
		</c:if> --%>
		<!-- <article class="art1">
			<img src="../menu_image/menu1_kimchi_soup.PNG" />
			<h3>김치찌개</h3>
			<p>한국을 대표하는 전통 음식이다.<br/> 김치를 먹기 좋게 썰은 뒤 각종...</p>
		</article> -->
		
	</section>
</div>

</body>
</html>