<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>海韵乐器专卖</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<script type="text/javascript" src="resources/js/jquery.1.12.4.min.js"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

<style type="text/css">

.nav_6{
position:fixed;
top:80px;
width:100%;
background-color:#333;
height:35px;
z-index:100;
line-height:35px;
}

.nav_5{
position:fixed;
width:100%;
left:10%;

}
.nav_5 li{
float:left;
color:#fff;
width:13%;
text-align:center;
}
.nav_5 li:hover{
color:#000;
cursor:default;
background-color:rgba(174,238,238,0.9);
}



.nav_2 li{  width:100%;padding-top:10px;border-radius:8%;line-height:35px;}
.nav_3:hover{background-color:#fff;
}
.nav_4:hover{background-color:#fff;
}
.nav_3:hover a{text-decoration:none;
color:#000;cursor:default;
}
.nav_4:hover a{text-decoration:none;
color:#000;cursor:default;
}

.nav_2{position:fixed;top:115px;left:22%;z-index:100;display:none;width:20%;margin-left:-23px;background-color:rgba(174,238,238,0.9);}
.nav_7:hover .nav_2{display:block;}
.nav_3{width:300px;}




.nav_0 {color:#fff;}



.nav_0:hover{
color:#000;
text-decoration:none;cursor:default;
}
.nav_3 a{color:#fff;}
.nav_4 a{color:#fff;}
</style>

</head>
<body>
	<!--导航栏部分-->
	<nav class="navbar navbar-default navbar-fixed-top" style="height:80px">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="view/index" ><p style="color:rgba(64,64,64,0.);left:150px;top:10px;position:relative;font-size:22px;font-family:'楷体'">海韵乐器专卖 </p></a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">

				<ul class="nav navbar-nav navbar-right" style="padding-right:30px;top:20px;position:relative;">
					<c:if test="${ empty sessionScope.user}">
						<li><a href="view/register" >注册</a></li>
						<li><a href="view/login">登录</a></li>
					</c:if>
					<c:if test="${not empty sessionScope.user}">
						<li><a href="view/usercenter">用户中心</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"><div style="margin-top:-5px;float:left;width:30px; height:30px; border-radius:50%; overflow:hidden;"><img src="upload/${user.userImg }" style="width:30px;height:30px;" class="layui-nav-img"></div>&nbsp;&nbsp;${sessionScope.user.userName} <span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="view/cart">购物车</a></li>
								<li><a href="user/amendinfo">个人资料修改</a></li>
								<li><a href="user/logout">注销登录</a></li>
							</ul></li>
					</c:if>
				</ul>

				<div class="navbar-form navbar-right" style="top:20px;position:relative;">
				<form action="goods/search" method="post">
					<div class="form-group">
						<input type="text" class="form-control"  placeholder="吉他" name="keyWord"
							id="searchKeyWord" />
					</div>
					<button class="btn btn-default" type="submit">查找商品</button>
				</div>
				</form>
			</div>
		</div>
	</nav>
	<div class="nav_6">
<ul class="nav_5">
           <a href="view/index">     <li>首页</li>   </a>
           <a class="nav_0">     <li class="nav_7">乐器分类
          
          
          
            <ul class="nav_2">
				                   
					<c:forEach items="${applicationScope.goodsTypeList }" var="t" varStatus="c">
						<c:if test="${fn:length(t.goodsList)!=0 }">
							<c:if test="${c.count==1 }">
								<li class="nav_3"><a href="#productArea${t.typeId }">${t.typeName }</a></li>
							</c:if>
							
							
							
							<c:if test="${c.count!=1 }">											
								<li class="nav_4"><a href="#productArea${t.typeId }">${t.typeName }</a></li>
					
							
							</c:if>
							</c:if>
					</c:forEach>
				</ul>
				
				</li></a>
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<c:forEach items="${applicationScope.goodsTypeList }" var="t" varStatus="c">
						<c:if test="${fn:length(t.goodsList)!=0 }">
							<c:if test="${c.count==1 }">
								<a href="#productArea${t.typeId }"><li>${t.typeName }</li></a>
							</c:if>
							
							</c:if>
					</c:forEach>
				
				
				
				
				
				
				
				
























           <a href="view/novice">     <li>入门优选</li></a>
           <a href="view/repair">     <li>维修工坊</li></a>
                </ul>
         </div>       
</body>
</html>