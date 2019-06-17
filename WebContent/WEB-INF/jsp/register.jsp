<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>乐享手机商城</title>
<link href="resources/css/123.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/loginn.css">
<link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
<script src="resources/js/jquery.min.js" type="text/javascript"></script>
<script src="resources/js/layui.js" type="text/javascript"></script>
<style type="text/css">
</style>
</head>
<body>

	<!-- 中间内容 -->
	<div class="be-content pren">
	
		            <div class="ioc_text">
                <img src="upload/logo.png" alt="">
                <span>用户注册</span>
            </div>
	
	
		<form id="regForm">
			<div class="br-content" id="LAY-user-login">
				<div class="layadmin-user-login-main">

					<div class="layadmin-user-login-box layadmin-user-login-body layui-form">
					
						<div class="input-group mb-4 bootint">
						                            <div class="input-group-prepend">
                                 <span class="input-group-text"><i class="fa fa-user"></i></span>
                             </div>
						
						<input type="text"
								name="userName" id="LAY-user-login-nickname"
								lay-verify="nickname" placeholder="昵称" class="form-control">
						</div>
						
						
						
						
						
						<div class="input-group mb-4 bootint">
								<div class="input-group-prepend">
                                 <span class="input-group-text"><i class="fa fa-unlock-alt"></i></span>
                             </div>
                             
							<input type="password"
								name="userPass" id="LAY-user-login-password" lay-verify="pass"
								placeholder="密码" class="form-control">
						</div>
						
						
						
						
						
						<div class="input-group mb-4 bootint">
								<div class="input-group-prepend">
                                 <span class="input-group-text"><i class="fa fa-unlock-alt"></i></span>
                             </div>


                               <input type="password"
								name="repass" id="LAY-user-login-repass" lay-verify="required"
								placeholder="确认密码" class="form-control">
						</div>
						
						
						
						
						
						<div class="input-group mb-4 bootint">
                    	<div class="input-group-prepend">
                                 <span class="input-group-text"><i class="fa fa-phone"></i></span>
                             </div>
                           
                           
                            <input type="text"
								name="userPhone" id="LAY-user-login-cellphone"
								lay-verify="phone" placeholder="手机" class="form-control">
						</div>
						
						
						
						
						
						<div class="input-group mb-4 bootint">
                    	<div class="input-group-prepend">
                                 <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                             </div>                             
                             
                             
                             
                              <input type="text"
								name="userEmail" id="LAY-user-login-email"
								lay-verify="email" placeholder="邮箱" class="form-control">
						</div>
						
						
						
						
							<%--		
						<div class="input-group mb-4 bootint" style="height:10px;">
							<input type="checkbox" name="agreement" lay-skin="primary"
								title="同意用户协议" checked="">
							
			
							
							
							<div
								class="layui-unselect layui-form-checkbox layui-form-checked"
								lay-skin="primary">
								<span>同意用户协议</span><i class="layui-icon layui-icon-ok"></i>
							</div>
						
						</div>
							 --%>	
						
						
						
											                        <div class="br-text">
                            <p>
                                <span>已有账号?</span>
                                <a href="view/login">点击登陆</a>
                            </p>
                        </div>
						
						<div style="padding-top: 10px">
							<button class="btn" lay-submit="" type="button"
								lay-filter="reg-submit">注 册</button>
						</div>


						                        <div class="be-con">
                            <span>Copyright © 2018 - 2019 <a href="">返回首页</a></span>
                        </div>



					</div>
				</div>
			</div>
		</form>
	</div>

	<script type="text/javascript">
		layui.use(['form','layer'], function() {
			var form = layui.form;
			var layer=layui.layer;
			form.on('submit(reg-submit)',function(){
				$.post("user/register",$("#regForm").serialize(),function(data){
					if(data=="success"){
						layer.msg("注册成功！即将转向登陆页面！",{icon:1,anim:4,time:2000},function(){
							window.location.href="view/login";
						});
					}else{
						layer.msg("注册失败！请重试！",{icon:5,anim:6,time:2000});
					}
				});
			});
		});
	</script>
</body>
</html>