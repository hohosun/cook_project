<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style type="text/css">
	section{
		margin-left: 400px;
		margin-right: 400px;
	}
</style>
<script type="text/javascript">
	function submit_form(){
		if(f.title.value == ""){
			alert("글제목을 입력해주세요");
			return;
		}else if(f.content1.value == ""){
			alert("재료를 입력해주세요");
			return;
		}else if(f.content2.value == ""){
			alert("조리법을 입력해주세요");
			return;
		}else{
			f.action="/cook_project/MyController?type=write";
			f.submit();
		}
	}
</script>
</head>
<body>
<header class="login_bar">
		<!-- 로그인  -->
		로그인 화면
	</header>
	<div id="wrapper">
		<header>
			<nav>
				<ul>
					<li><a href="#">메뉴 1</a></li>
					<li><a href="#">메뉴 2</a></li>
					<li><a href="#">메뉴 3</a></li>
					<li><a href="#">메뉴 4</a></li>
				</ul>
			</nav>
		</header>
		
		
		<section>
			<form id = "f" method="post">
				<h2 align="center">레시피 작성하기</h2>
				<br/>
		
				<div class="form-group">
					<label for="title">요리명</label> 
					<input type="text" class="form-control" name="title" placeholder="요리 이름을 입력해주세요">
				</div>
				<div class="form-group">
					<label for="title">카테고리 선택</label> 
					<select name="category" class="form-control">
					  	<option value="한식">한식</option>
					  	<option>중식</option>
					  	<option>일식</option>
					  	<option>양식</option>
					</select>
				</div>
				
				<div class="form-group">
				<label for="content1">재료</label> 
				<textarea class="form-control" rows="3" name="content1" placeholder="요리에 필요한 재료를 입력해주세요"></textarea>
				</div>
				
				<div class="form-group">
				<label for="content2">조리법</label> 
				<textarea class="form-control" rows="10" name="content2" placeholder="조리법을 입력해주세요"></textarea>
				</div>
				
				<div class="form-group">
					<label for="exampleInputFile">이미지 첨부</label> <input type="file"
						name="image">
					
				</div>
				
				<div align="center">
				<button type="button" class="btn btn-default" onclick="submit_form()">등록하기</button>
				<button type="reset" class="btn btn-default">취소</button>
				<input type="hidden" name="chk" value="chk"/>
				</div>
				<br>
				<br>
				
			</form>
		</section>
</body>
</html>