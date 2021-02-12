<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="jspexp.z01_vo.*"
    import ="java.util.*"
    %>
<% request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/a00_com/a00_com.css">
<style>
	div { display : block;}
	
	.page .layout{
		height:100%;
	}
	
	.header {
		box-sizing:border-box;
		position:relative;
		display:block;
	}
	.upper {
		position:relative;
		display:block;
	}
	.lower {
		position:relative;
		display:block;
	}
	.total_upper{
		position:relative;
	}
	.upper_layout{
		display:flex;
		max-width:1256px;
		height:80px;
		padding: 10px 60px;
		margin: 0 auto;
		position:relative;
		box-sizing:border-box;
	}
	.left_logo{
		position:static;
		margin-right:35px;
		transform:none;
		top:50%;
		left:50%;
		flex: 0 0 auto;
	}
	.logo{
		display:inline-block;
		margin:-4px;
		padding:4px;
	}
	.icon{
		width:74px;
		height:60px;
	}
	.center_menu {
		display:block;
		flex:0 0 auto;
		margin-left:300px;
	}
	.right {
		position:static;
		flex:1 0 auto;
		display:flex;
		right:8px;
	    margin-left: 130px;	
	}
	form {
		display:block;
	}
	a {
		text-decoration:none;	
	}
	.center_menu .inp_search {
		position:relative;
	    width: 300px;
	    height: 25px;
	    <%--padding: 0 60px 0 14px;--%>
	    border: 1px solid #f7f7f6;
	    border-radius: 18px;
	    background-color: #f7f7f7;
	    font-family: 'Noto Sans';
	    font-weight: 400;
	    font-size: 12px;
	    color: #666;
	    line-height: 16px;
	    outline: none;
	}
	.center_menu .btn_search {
	    position:relative;
	    width: 35px;
	    height: 35px;
	    top:14px;
	    right:48px;
	}
	.right .cart{
		display:block;
		width:36px;
		height:36px;
		margin: 12px 0 0 0;
		background:url(https://res.kurly.com/pc/service/common/2011/ico_cart.svg) no-repeat 50% 50%}
	}
	.right .cart:hover a {
		background:url(https://res.kurly.com/pc/service/common/2011/ico_cart_on.svg?v=1) no-repeat 50% 50%}
		background-color:blue;
	}
	.login {
		position:relative;
		float:left;
	}
	.login li{
		position:relative;
		margin: 20px 0 0 5px;
		margin-left: 10px;
		padding: 0 0 0 0;
		border : 0;
		float:left;
	}
	ul{
		position:relative;
		list-style:none;
		margin: 0;
		padding: 0;
	}
	.menu:after {
		content: "";
		float: right;
		width: 1px;
		height: 15px;
		margin-top: 3px;
		margin-left: 7px;
		background-color: #d8d8d8;
	}
	
	.lower_layout {
		position:relative;
		min-height:49px;
		min-width:768px;
		max-width:1256px;
		display:flex;
		margin:0 200px 0 200px;
	}
	.lower_menu {
		padding: 0 0 0 60px;
		margin: 0 8px 0 -12px;
		text-align: left;
		flex: 1 0 auto;
		white-space:nowrap;
	}
	.second_menu{
		display:inline-block;
		font-size:20px;
		margin:8px 20px;
		padding: 6px 8px 4px;
		color:#424242;
	}
	
	.sub {
		left:auto;
		float:none;
		right:0;
		display:none;
		opacity:0;
	}
	
	.sub li{
		position:relative;
		margin: 20px 0 0 5px;
		margin-left: 10px;
		padding: 0 0 0 0;
		border : 0;
		display:block;
	}
	
	.sub a {
		font-size:12px;
		color:#404040;
		line-height:24px;
		text-align: center;
		display:block;
	}
	<%--
	.lower_layout :hover + .sub_category .sub {
		display:block;
		opacity:1;
	}
	--%>
	.lower_layout nav:hover + .sub_category .sub {
		display:block;
		opacity:1;
	}
	
	nav ul {
		width: 100%
		background-color : blue;
		list-style-type:none;
		margin: 0;
		padding : 0;
	}
	nav ul li {
		display: inline-block;
	}
	.dropdown{
		position:relative;
	}
	.dropdown-menu{
		color:white;
		padding:16px 25px 16px 25px;
		font-size:20px;
		cursor:pointer;
	}
	.dropdown-content {
		position:absolute;
		bachground-color:#f9f9f9;
		min-width:160px;
		box-shadow:0 8px 16px 0 rgba(0,0,0,0.2);
		display:none;
	}
	.dropdown-menu:hover {
		background-color:#35c5f0;
		color:white;
	}
	.dropdown-content a{
		color:black;
		padding: 12px 16px;
		text-decoration:none;
		display: block;
	}
	.dropdown-content a:hover {
		background-color: #f1f1f1;
	}
	.dropdown:hover .dropdown-content{
		display:block;
	}
	
</style>

</head>
<body>
	<div class="page">
		<div class="layout">
			<header class="header">
				<div class="upper">
					<div class="total_upper">
						<div class="upper_layout">
							<div class="left_logo">
								<a class="logo" href="main-upper.jsp">
									<img src="logo.png" alt="메인 로고" class="icon" style="display: block">
								</a>
							</div>
							<div class="center_menu">
								<form action="search.jsp">
									<input name="sword" type="text" class="inp_search">
									<input type="image" class="btn_search" src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png">
								</form>
							</div>
							<div class="right">
								<a class="cart" title="장바구니" href="cart.jsp">
								
								</a>
								<div class="login">
									<ul class="list_menu">
										<li class="menu none_sub menu_join"><a href="login.jsp" class="login_text">로그인</a></li>
										<li class="menu none_sub"><a href="register.jsp" class="login_text">회원가입</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="lower">
					<div class="total_lower">
						<div class="lower_layout">
						<%--
							<ul class="lower_menu">
								<li id="category" class="second_menu">전체카테고리</li>
								<li class="second_menu"><a href="best.jsp">베스트</a></li>
								<li class="second_menu"><a href="commentary.jsp">후기</a></li>
							</ul>
						
							<nav class="lower_menu">
								<a id="category" class="second_menu">전체카테고리</a>
								<a class="second_menu" href="best.jsp">베스트</a>
								<a class="second_menu" href="commentary.jsp">후기</a>
							</nav>
						--%>
							<nav>
								<ul>
									<li class="dropdown">
										<div class="dropdown-menu"><a href="#">전체카테고리</a></div>
										<div class="dropdown-content">
											<a href="dish1.jsp">dish1</a>
											<a href="dish2.jsp">dish2</a>
											<a href="dish3.jsp">dish3</a>
											<a href="dish4.jsp">dish4</a>
											<a href="dish5.jsp">dish5</a>
											<a href="dish6.jsp">dish6</a>
											<a href="dish7.jsp">dish7</a>
										</div>
									</li>
									<li class="dropdown">
										<div class="dropdown-menu">
											<a href="best.jsp">베스트</a>
										</div>
									</li>
									<li class="dropdown">
										<div class="dropdown-menu">
											<a href="commentary.jsp">후기</a>
										</div>
									</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</header>
			<div class="home-page">
			
			</div>
			<footer class="footer">
			
			</footer>
		</div>
	</div>















</body>
</html>