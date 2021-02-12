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
<%--	중단		--%>	
	.main {
		position : relative;
		flex: 1 0 auto;
	}
	.container {
		margin-right : auto;
		margin-left : auto;
		width : 1136px;
		max-width : 100%;
		min-height : 1px;
		box-sizing : border-box;
	}
	.page_content {
		display: flex;
		position : relative;
		box-sizing : border-box;
		flex-wrap:wrap;
		margin-right : -10px;
		margin-left : -10px;
	}
	.left {
		position : relative;
		width : 100%;
		min-height : 1px;
		box-sizing : border-box;
		flex : 0 0 58.3333333333%;
		max-width : 58.3333333333%;
		padding-right : 7.5px;
		padding-left : 7.5px;
	}
	.left_content {
		position : relative;
		margin:0;
		padding: 30px 0;
	}
	.upper_option {
		z-index : 100;
	}
	.uo_content {
		display : flex;
		padding : 0 21px;
		margin : 0 0 11px;
		z-index : 100;
		align-items : center;
		border : none;
		box-sizing : border-box;
	}
	.upper_left {
		flex: 0 0 auto;
		margin : -9px;
	}
	.left_tb {
		display : inline-flex;
		align-items : center;
		width : 100%;
		padding-right : 6px;
		flex-direction : row;
		vertical-align : middle;
	}
	.bt {
		position : relative;
		display : inline-block;
		font-size : 0;
		padding : 9px;
	}
	.all_select_bt{
		position : absolute;
		top : 0;
		left : 0;
		width : 100%;
		height : 100%;
		margin : 0;
		padding : 0;
		box-sizing : border-box;
	}
	.all_text {
		font-size : 15px;
	}
	
	.upper_right {
		flex : 0 0 auto;
		position: relative;
        left: 480px;
	}
	.selected_delete_bt{
		display : inline-block;
		margin : 2px -3px 0;
		padding : 3px;
		border : none;
		font_weight : 400;
		font_size : 12px;
		line-height : 1;
	}
	.cart_all_list {
		list-style:none;
	}
	.item_article {
		margin-bottom : 12px;
	}
	.item_list_num {
		border-width: 1px 1px 0;
		border-radius: 6px 6px 0 0;
		padding : 10px 0;
		font-size : 15px;
		font-weight : 500px;
		line - height : 20px;
		text-align : center;
		margin : 0;
	}
	.item_page_article {
		border-top-left-radius : 0;
		border-top-right-radius : 0;
		border : 1px solid #ededed;
		border-radius : 6px;
		margin-bottom : 12px;
	}
	.product_page_li {
		border-bottom : 1px solid #ededed;
	}
	.product_page_article {
		position : relative;
		padding : 20px 15px 20px 54px;
	}
	.product_select_bt{
		position : absolute;
		left : 20px;
		margin : -9px;
		top : 20px;
	}
	.product_content {
		margin : 0 20px 12px 0;
		display : flex;
	}
	.product_img{
		position : relative;
		flex : 0 0 auto;
		display : block;
		width : 70px;
		height : 70px;
		border-radius : 6px;
	}
	.product_img>img {
		display : block;
		position : absolute;
		top : 50%;
		left : 50%;
		width : 100%;
		transition : transform .2s;
		transform : translate(-50%,-50%)
			scale(1.0001);
	}
	.product_name{
		flex : 1 0 0px;
		padding-left : 12px;
	}
	.product_title{
		min-width: 0;
		font-size : 15px;
		font-weight : 500;
		line-height : 21px;

	}
	.product_delete{	<%-- 개별 X 표시 --%>
		position: absolute;
		display:inline-block;
		top:15px;
		right:15px;
		padding:5px;
		border:none;
	}
	.product_cnt_article{
		position : relative;
		display : block;
		margin :  0 0 8px;
		padding : 10px;
		border-radius : 6px;
	}
	.product_cnt_name{
		padding : 0 22px 10px 0;
		font-size : 15px;
		font-weight : 400;
		line-height : 20px;
		margin : 0;
	}
	.product_cnt_delete{
		position : absolute;
		display : inline-block;
		top : 0;
		right : 0;
		padding : 5px;
		border : none;
		font-size: 0;
		
	}
	.product_quantity_change{
		display : flex;
		align-items : center;
		justify-content : space-between;
		margin : 0;
		padding: 0;
		height : 24px;
	}
	.option_count{
		width : 80px;
		position : relative;
		flex : 1 0 auto;
	}
	.count_form{
		display : block;
		flex : 1 0 auto;
		box-sizing : border-box;
		padding-right : 30px;
		padding : 0 10px;
		height : 24px;
		font-size : 13px;
		line-height : 22px;
		border : solid 1px #dbdbdb;
		border-radius : 3px;
		text-align : center;
		width : 100%;
	}
	.product_quantity_price{
		flex : 0 0 auto;
		font-size : 15px;
		font-weight : 700;
		line-height : 24px;
	}
	.product_option_change{
		display : flex;
		align-items : center;
		justify-content : space-between;
		margin-top : 16px;
	}
	.product_option{
		flex : 0 0 auto;
	}
	.edit_option {
		position : relative;
		display : inline-block;
		margin : 2px 0 0 -3px;
		padding : 3px;
		border : none;
		font-weight : 400;
		font-size : 12px;
		line-height : 1;
	}
	.product_subtotal {
		flex : 0 0 auto;
		font-size : 17px;
		font-weight : 700;
	}
	
	.cart_right{
		display : block;
		position : relative;
		width : 100%;
		min-height : 1px;
		box-sizing : border-box;
		flex : 0 0 33.3333333333%;
		max-width: 33.3333333333%;
		display : block;
		padding-top : 35px;
		padding-right : 10px;
		padding-left : 10px;
	}
	.total_price_container{
		position : sticky;
		top : 81px;
	}
	.total_price_wrap {
		position : relative;
		padding : 30px 0;
	}
	.total_price_summary{
		margin : 0 0 20px;
		border : 1px solid #ededed;
		border-radius : 6px;
		padding : 10px 20px;
	}
	.summary{
		display : flex;
		align-items : center;
		justify-content : space-between;
		margin : 20px 0;
		font-size : 15px;
		font-weight : 400;
	}
	.summary>dt{
		flex: 0 0 auto;
	}
	.summary>dd{
		flex : 0 0 auto;
		font-weight : 700;
		text-align : right;
	}
	.total {
		margin : 30px 0 20px;
	}
	.total>dt{
		flex : 0 0 auto;
		font-weight : 700;
	}
	.total>dd{
		flex : 0 0 auto;
		font_size : 24px;
	}
	.order_bt {
		position : relative;
		display : inline-flex;
		justify-content : center;
		align-items : center;
		margin : 0;
		padding : 15px 10px;
		line-height : 20px;
		box-sizing : border-box;
		border : 1px solid;
		font-size : 17px;
		font-weight : 700;
		text-decoration : none;
		text-align : center;
		border-radius : 4px;
		width : 100%;
		min-height : 50px;
		background-color: #35c5f0;
		border-color : #35c5f0;
		color : #fff;
	}
	
</style>
<script>
	window.onload=function(){

	}
</script>
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
			</header>
			<div class="main">
				<div class="container">
					<div class="page_content">
						<div class="left">
							<div class="left_content">
								<div class="upper_option">
									<div class="uo_content">
										<span class="upper_left">
											<label class="left_tb">
												<div class="bt">
													<input type="checkbox" class="all_select_bt">
												</div>
												<span class="all_text">
													<span class="text">모두선택</span>
												</span>
											</label>
										</span>
										<span class="upper_right">
											<button class="selected_delete_bt">선택삭제</button>
										</span>
									</div>
								</div>
								<ul class="cart_all_list">
									<li class="item_li">
										<article class="item_article">
											<h1 class="item_list_num">1</h1>
											<ul class="item_page">
												<li class="item_page_li">
													<article class="item_page_article">
														<ul class="product_page_ul">
															<li class="product_page_li">
																<article class="product_page_article">
																	<div class="product_select_bt">
																		<div class="bt">
																			<input type="checkbox" class="all_select_bt">
																		</div>
																	</div>
																	<a class="product_content" <%-- href="상품상세페이지"--%>>
																		<div class="product_img">
																			<img src="logo.png">
																		</div>
																		<div class="product_name">
																			<h1 class="product_title">제품이름1</h1>
																		</div>
																	</a>
																	<button class="product_delete" type="button">
																		<svg width="12" height="12" viewBox="0 0 12 12"
																		fill="currentColor" preserveAspectRatio="xMidYMid meet">
																			<path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 
																			6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path>
																		</svg>
																	</button>
																	<ul class="product_cnt_ul">
																		<li class="product_cnt_li">
																			<article class="product_cnt_article">
																				<h2 class="product_cnt_name">제품이름1과 동일하게</h2>
																				<button class="product_cnt_delete" type="button">
																					<svg width="12" height="12" viewBox="0 0 12 12"
																						fill="currentColor" preserveAspectRatio="xMidYMid meet">
																							<path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 
																							6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path>
																					</svg>
																				</button>
																				<div class="product_quantity_change">
																					<div class="quantity">
																						<div class="option_count">
																							<select class="count_form">
																								<option value="0">1</option>
																								<option value="1">2</option>
																								<option value="2">3</option>
																								<option value="3">4</option>
																								<option value="4">5</option>
																								<option value="5">6</option>
																								<option value="6">7</option>
																								<option value="7">8</option>
																								<option value="8">9</option>
																							</select>
																							<%--span 생략(화살표 css) --%>
																						</div>
																					</div>
																					<p class="product_quantity_price">
																						<span class="price">39,900</span>원</p>
																				</div>
																			</article>
																		</li>
																	</ul>
																	<div class="product_option_change">
																		<span class="product_option">
																			<button class="edit_option" type="button">옵션변경</button>
																		</span>
																		<span class="product_subtotal">
																			<span class="product_subtotal_price">39,900</span>원
																		</span>
																	</div>
																</article>
															</li>
														</ul>
														
													</article>
												</li>
											</ul>
										</article>
									</li>
								</ul>
							</div>
						</div>
						<div class="cart_right">
							<div class="total_price_container" style="position: sticky; top:81px;">
								<div class="total_price_wrap" style="position:relative">
									<dl class="total_price_summary">
										<div class="summary">
											<dt>총 상품금액</dt>
											<dd>
												<span class="number">39,900</span>원
											</dd>	
										</div>
										<div class="summary">
											<dt>총 배송비</dt>
											<dd>+
												<span class="number">0</span>원
											</dd>	
										</div>
										<div class="summary">
											<dt>총 할인금액</dt>
											<dd>-
												<span class="number">0</span>원
											</dd>	
										</div>
										<div class="summary total">
											<dt>결제금액</dt>
											<dd>
												<span class="number">39,900</span>원
											</dd>	
										</div>
									</dl>
									<div class="order">
										<button class="order_bt" type="button">구매하기</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>