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
<title>海韵乐器专卖</title>




<link href="resources/css/123.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/loginn.css">
<link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">


<style type="text/css">
</style>
</head>
<body>

	
	   <div>
        <div class="be-content pren">

            <div class="ioc_text">
                <img src="upload/logo.png" alt="">
                <span>请登录您的用户</span>
            </div>

            <div>
                <form action="">
                    <div class="br-content">

                         <div class="input-group mb-4 bootint">
                             <div class="input-group-prepend">
                                 <span class="input-group-text"><i class="fa fa-user"></i></span>
                             </div>
                             <input type="text" class="form-control" placeholder="Username">
                         </div>

                         <div class="input-group mb-4 bootint">
                             <div class="input-group-prepend">
                                 <span class="input-group-text"><i class="fa fa-unlock-alt"></i></span>
                             </div>
                             <input type="password" class="form-control" placeholder="Your Password">
                         </div>

                        <div class="br-text">
                            <p>
                                <span>没有账号?</span>
                                <a href="">点击注册</a>
                            </p>
                        </div>
                        <div style="padding-top: 10px">
                            <input type="button" class="btn" value="登录">
                        </div>
                        <div class="be-con">
                            <span>Copyright © 2018 - 2019 <a href="">系统登陆</a></span>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
	
	



	<script type="text/javascript">
		layui.use(['form','layer'], function() {
			var form = layui.form;
			var layer=layui.layer;
			form.on('submit(loginSubmit)',function(){
				$.ajax({
					type:"post",
					url:"user/login",
					data:$("#loginForm").serialize(),
					success:function(data){
						if(data=="success"){
							layer.msg("登陆成功！",{icon:1,anim:2,time:2000},function(){
								window.location.href="view/index";
							});
						}else{
							layer.msg("登陆失败！请检查用户名和密码后重试！",{icon:5,anim:6,time:3000});
						}
					}
				});
			});
		});
	</script>








</body>
</html>