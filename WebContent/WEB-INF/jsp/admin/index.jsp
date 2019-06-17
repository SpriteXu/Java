<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>海韵乐器专卖后台管理</title>
<link rel="stylesheet" href="resources/css/layui.css">
<script src="resources/js/jquery.1.12.4.min.js"></script>
<script src="resources/js/layui.js"></script>



        <link rel="stylesheet" href="resources/css/uikit.min.css" />
        <script src="resources/js/uikit.min.js"></script>


<link rel="stylesheet" href="resources/css/uikit.css">
<link rel="stylesheet" href="resources/css/uikit.min.css">
<link rel="stylesheet" href="resources/css/uikit.gradient.css">
<link rel="stylesheet" href="resources/css/uikit.gradient.min.css">
<link rel="stylesheet" href="resources/css/uikit.almost-flat.css">
<link rel="stylesheet" href="resources/css/uikit.almost-flat.min.css">


</head>
<body class="layui-layout-body">
	<div class="">
	
	
	
	<%-- 
	
		<div class="layui-header">				
			<div class="layui-logo">海韵乐器专卖后台管理</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="view/welcome" target="myframe">主页</a></li>
			</ul>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="javascript:;"> <img
						src="upload/headpic.jpg" class="layui-nav-img">${sessionScope.admin.adminName }</a>
				</li>
				<li class="layui-nav-item"><a href="admin/logout">退了</a></li>
			</ul>
		</div>
--%>
		<%-- 	
		<nav class="uk-navbar">
		    <div  class="uk-navbar-brand">海韵乐器商城后台</div>
    <ul class="uk-navbar-nav">
        <li><a  href="">132131</a></li>
        <li class="uk-parent" data-uk-dropdown><a  href="">bbb</a>
                                        <div class="uk-dropdown uk-dropdown-navbar">
                                            <ul class="uk-nav uk-nav-navbar">
                                                <li><a href="#">Item</a></li>
                                                <li><a href="#">Another item</a></li>
                                                <li class="uk-nav-header">Header</li>
                                                <li><a href="#">Item</a></li>
                                                <li><a href="#">Another item</a></li>
                                                <li class="uk-nav-divider"></li>
                                                <li><a href="#">Separated item</a></li>
                                            </ul>
                                        </div></li>
        <li class="uk-parent" data-uk-dropdown><a href="">ccc</a>
                                        <div class="uk-dropdown uk-dropdown-navbar">
                                            <ul class="uk-nav uk-nav-navbar">
                                                <li><a href="#">Item</a></li>
                                                <li><a href="#">Another item</a></li>
                                                <li class="uk-nav-header">Header</li>
                                                <li><a href="#">Item</a></li>
                                                <li><a href="#">Another item</a></li>
                                                <li class="uk-nav-divider"></li>
                                                <li><a href="#">Separated item</a></li>
                                            </ul>
                                        </div>


        </li>
        
    </ul>
</nav>
	--%>	



<nav class="uk-navbar">
		    <a href="view/welcome" target="myframe" class="uk-navbar-brand">海韵乐器商城后台</a>
    <ul class="uk-navbar-nav">
    <c:forEach items="${sessionScope.admin.adminRole.roleFuns }" var="f">
    <c:if test="${ not empty f.funsList }">
        <li class="uk-parent" data-uk-dropdown><a >${f.funName }</a>
          <div class="uk-dropdown uk-dropdown-navbar">
        <ul class="uk-nav uk-nav-navbar">
									<c:forEach items="${f.funsList }" var="t">
										<li>
											<a href="${pageContext.request.contextPath }/${t.funUrl }" target="${t.funTarget }">${t.funName }</a>
										</li>
									</c:forEach>

             </ul>
        </div>
        </li>
</c:if>
        </c:forEach>
   
    </ul>
    
    
    
     <div class="uk-navbar-flip">
        <ul class="uk-navbar-nav">
             <li class="uk-navbar-flip"><a href="admin/logout">退出</a></li> 
        </ul>
    </div>
    
    
</nav>






	<%-- 
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" lay-filter="test" style="">
					<c:forEach items="${sessionScope.admin.adminRole.roleFuns }" var="f">
						<c:if test="${ not empty f.funsList }">
							<li class="layui-nav-item">
							<a class=""	href="javascript:;">${f.funName }</a>
								<dl class="layui-nav-child">
									<c:forEach items="${f.funsList }" var="t">
										<dd>
											<a href="${pageContext.request.contextPath }/${t.funUrl }" target="${t.funTarget }">${t.funName }</a>
										</dd>
									</c:forEach>
								</dl>
						</c:if>
						</li>
						<c:if test="${empty f.funsList }">
							<li class="layui-nav-item">
							<a href="${pageContext.request.contextPath }/${f.funUrl }" target="${f.funTarget }">${f.funName }</a>
								</li>
						</c:if>
				
					</c:forEach>
				</ul>
			</div>
		</div>
		
		
	--%>
		
		
		
		
		
		
		
		

		<div class="">
			<!-- 内容主体区域 -->
			<iframe src="view/welcome" name="myframe" style="width:1300px;height:550px;border: 0;position:relative;top:3px" ></iframe>
		</div>

		<div class="layui-footer">
			<!-- 底部固定区域 -->
			© 海韵乐器专卖 - 底部固定区域
		</div>
	</div>
	
	<script>
		//JavaScript代码区域
		layui.use(['element','layer', 'table'], function() {
			var element = layui.element;
			var table = layui.table;
			var layer = layui.layer;
		});
	</script>
</body>
</html>