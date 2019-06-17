<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>乐享手机商城</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/layui.css" rel="stylesheet">
<script src="resources/js/jquery.min.js" type="text/javascript"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/layui.js" type="text/javascript"></script>


        <link href="resources/css/public.css" type="text/css" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="resources/css/base.css"/>
        <link rel="stylesheet" type="text/css" href="resources/css/buyConfirm.css" />






</head>
<body>
	<!--导航栏部分-->
	<jsp:include page="include/header.jsp" />

	<!-- 中间内容 -->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		<!-- 新加内容 -->
	
	
	<div class="border_top_cart" style="position:relative;top:80px;">

        <div class="container payment-con">
    <form  target="_blank" action="#" id="pay-form" method="post">
            <div class="order-info">
                <div class="msg">
                    <h3>您的订单已提交成功！付款咯～</h3>
                    <p></p>
                    
                                                                    <p class="post-date">成功付款后，48小时内发货</p>
                                    </div>
                <div class="info">
                    <p>
                        金额：<span class="pay-total">${order.orderPrice }元</span>
                    </p>
                    <p>
                        订单：${order.orderId }                </p>
                    <p>
                        配送：${order.orderUserName }                                    <span class="line">/</span>
                                   ${order.orderPhone }                                  <span class="line">/</span>
                               ${order.orderAddress }                                                     <span class="line">/</span>
                                                                    不限送货时间                                    <span class="line">/</span>
                                    个人电子发票                                                    </p>
                </div>
                <div class="icon-box">
                    <i class="iconfont" ><img src="upload/yes_ok.png" style="position:relative;top:-20px"></i>
                </div>
            </div>
            
            <div class="xm-plain-box">
                                                <!-- 选择支付方式 -->
                <div class="box-hd bank-title clearfix">
                    <div id="titleWrap" class="title-wrap">
                        <h2 class="title">选择支付方式</h2>
                        <h2 class="title hide " >你还需要继续支付 <em>49.00</em> 元</h2>
                        <span class="tip-tag"></span>
                    </div>
                </div>
                <div class="box-bd" id="bankList">
                    <div class="payment-bd">
                    <form name="ck">
                    <dl class="clearfix payment-box" >
                    <dt>
                                <strong>支付平台</strong>
                                <p>手机等大额支付推荐使用支付宝快捷支付</p>
                            </dt>
                            <dd>
                        <fieldset id="test4-input-input_tab1-input_tab2" style=" border:none;">
                        <ul class="payment-list clearfix" >
                           <li> <input class="input_tab1" name="myradio" id="r1" type="radio" checked="checked"/><label for="r1" ><img src="upload/xhw.png" alt=""/></label></label></li>
                            <li><input class="input_tab2" name="myradio" id="r2" type="radio" /><label for="r2" ><img src="upload/zfb.png" alt=""/></label></li>
                            <li> <input class="input_tab3" name="myradio" id="r3" type="radio" /><label for="r3" ><img src="upload/yck.png" alt=""/></label></li>
                           <li>  <input class="input_tab4" name="myradio" id="r4" type="radio" /><label for="r4" ><img src="upload/zxzf.png" alt=""/></label></li>
                             </ul>
                        <div >

                        <div  id="test4_2" style="display:none;">
                        	
                        </div>
                        <div  id="test4_3" style="display:none;">
                        	
                        </div>
                        <div  id="test4_4" style="display:none;">
                        	
                        </div>

                       

                        </div>
                        </fieldset>
                        </dd>
                        </dl>
                        </form>

                        <dl class="clearfix payment-box" >
                            <dt>
                                <strong>银行网银</strong>
                                <p>支持以下各银行借记卡及信用卡</p>
                                
                            </dt>
                            <dd>
                                                                <ul class="payment-list clearfix">
                                    <li><label  for="CMB"><input type="radio" name="myradio" id="CMB" value="CMB" /> <img src="http://s1.mi.com/images/payOnline_zsyh.gif" alt=""/></label></li>
                                    <li><label  for="ICBCB2C"><input type="radio" name="myradio" id="ICBCB2C" value="ICBCB2C" /> <img src="http://s1.mi.com/images/payOnline_gsyh.gif" alt=""/></label></li>
                                    <li><label  for="CCB"><input type="radio" name="myradio" id="CCB" value="CCB" /> <img src="http://s1.mi.com/images/payOnline_jsyh.gif" alt=""/></label></li>
                                    <li><label  for="ABC"><input type="radio" name="myradio" id="ABC" value="ABC" /> <img src="http://s1.mi.com/images/payOnline_nyyh.gif" alt=""/></label></li>
                                    <li><label  for="BOCB2C"><input type="radio" name="myradio" id="BOCB2C" value="BOCB2C" /> <img src="http://s1.mi.com/images/payOnline_zgyh.gif" alt=""/></label></li>
                                    <li><label  for="COMM"><input type="radio" name="myradio" id="COMM" value="COMM" /> <img src="http://s1.mi.com/images/payOnline_jtyh.gif" alt=""/></label></li>
                                    <li><label  for="PSBC-DEBIT"><input type="radio" name="myradio" id="PSBC-DEBIT" value="PSBC-DEBIT" /> <img src="http://s1.mi.com/images/payOnline_youzheng.gif" alt=""/></label></li>
                                    <li><label  for="GDB"><input type="radio" name="myradio" id="GDB" value="GDB" /> <img src="http://s1.mi.com/images/payOnline_gfyh.gif" alt=""/></label></li>
                                    <li><label  for="SPDB"><input type="radio" name="myradio" id="SPDB" value="SPDB" /> <img src="http://s1.mi.com/images/payOnline_pufa.gif" alt=""/></label></li>
                                    <li><label  for="CEBBANK"><input type="radio" name="myradio" id="CEBBANK" value="CEBBANK" /> <img src="http://s1.mi.com/images/payOnline_gdyh.gif" alt=""/></label></li>
                                    <li><label  for="SPABANK"><input type="radio" name="myradio" id="SPABANK" value="SPABANK" /> <img src="http://s1.mi.com/images/payOnline_payh.gif" alt=""/></label></li>
                                    <li><label  for="CIB"><input type="radio" name="myradio" id="CIB" value="CIB" /> <img src="http://s1.mi.com/images/payOnline_xyyh.gif" alt=""/></label></li>
                                    <li><label  for="CMBC"><input type="radio" name="myradio" id="CMBC" value="CMBC" /> <img src="http://s1.mi.com/images/payOnline_msyh.gif" alt=""/></label></li>
                                    <li><label  for="BOB"><input type="radio" name="myradio" id="BOB" value="BOB" /> <img src="http://s1.mi.com/images/payOnline_bjyh.gif" alt=""/></label></li>
                                    <li><label  for="CITIC"><input type="radio" name="myradio" id="CITIC" value="CITIC" /> <img src="http://s1.mi.com/images/payOnline_zxyh.gif" alt=""/></label></li>
                                    <li><label  for="SDB"><input type="radio" name="myradio" id="SDB" value="SDB" /> <img src="http://s1.mi.com/images/payOnline_sfyh.gif" alt=""/></label></li>
                                    <li><label  for="SHBANK"><input type="radio" name="myradio" id="SHBANK" value="SHBANK" /> <img src="http://s1.mi.com/images/payOnline_shyh.gif" alt=""/></label></li>
                                    <li><label  for="BJRCB"><input type="radio" name="myradio" id="BJRCB" value="BJRCB" /> <img src="http://s1.mi.com/images/payOnline_bjnsyh.gif" alt=""/></label></li>
                                    <li><label  for="NBBANK"><input type="radio" name="myradio" id="NBBANK" value="NBBANK" /> <img src="http://s1.mi.com/images/payOnline_nbyh.gif" alt=""/></label></li>
                                    <li><label  for="HZCBB2C"><input type="radio" name="myradio" id="HZCBB2C" value="HZCBB2C" /> <img src="http://s1.mi.com/images/payOnline_hzyh.gif" alt=""/></label></li>
                                    <li><label  for="SHRCB"><input type="radio" name="myradio" id="SHRCB" value="SHRCB" /> <img src="http://s1.mi.com/images/payOnline_shnsyh.gif" alt=""/></label></li>
                                    <li><label  for="FDB"><input type="radio" name="myradio" id="FDB" value="FDB" /> <img src="http://s1.mi.com/images/payOnline_fcyh.gif" alt=""/></label></li>                                </ul>
                            </dd>
                        </dl>
                        

                                                
                                                
                    </div>
                            </div>
            <div class="box-ft clearfix">
                  
                    <button type="button"
						class="btn btn-primary"
						onclick="javascript:window.location.href='order/toPay?orderId=${order.orderId}'">立即支付</button>
                    <a href="#" class="btn btn-lineDakeLight">修改订单</a>
                    <span class="tip"></span>
                </div>
            </div>
</form>  
</div>
<!-- 支付弹框 -->
<div class="modal hide to-pay-tip" id="toPayTip">
    <div class="modal-header">
        <span class="close" id="toPayTipClose">
            <i class="iconfont">&#xe617;</i>
        </span>
        <h3>正在支付...</h3>
    </div>
    <div class="modal-body">
        <div class="pay-tip clearfix">
            <div class="fail">
                <h4>如果支付失败...</h4>
                <p>额度问题，推荐<a href="#" id="alipayTrigger">支付宝快捷支付 &gt;</a></p>
                <p>其他问题，查看<a href="#">支付常见问题 &gt;</a></p>
            </div>
            <div class="success">
                <h4>支付成功了</h4>
                <p>立即查看<a href="#" target="_blank">订单详情 &gt;</a></p>
            </div>
        </div>
    </div>
</div>
<!-- 余额支付弹框 -->




    <script src="js/base.min.js"></script>

        <script type="text/javascript" src="js/buyConfirm.js"></script>
   
</div>
	
			<!-- 新加内容 -->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		<!-- 原来内容 -->
	
	<%-- 原来内容
	
	<div class="container-fluid bigHead">
		<div class="row" style="background-color:white;">
			<div class="col-sm-10  col-md-10 col-sm-offset-1 col-md-offset-1">

			</div>
			<div class="col-sm-10  col-md-10 col-sm-offset-1 col-md-offset-1">
				<table class="table table-hover center" id="shoppingCarTable">
					<tr>
						<th>订单编号</th>
						<th>总价</th>
						<th>收件人</th>
						<th>电话</th>
						<th>收货地址</th>
						<th>状态</th>
					</tr>
					<tr>
						<th>${order.orderId }</th>
						<th>${order.orderPrice }</th>
						<th>${order.orderUserName }</th>
						<th>${order.orderPhone }</th>
						<th>${order.orderAddress }</th>
						<th>待付款</th>
					</tr>
				</table>
				<hr />
				<div class="row" style="text-align:center;">
					<button type="button"
						class="layui-btn layui-btn-lg layui-btn-normal"
						onclick="javascript:window.location.href='view/index'">继续购买</button>
					<button type="button"
						class="layui-btn layui-btn-lg layui-btn-warm"
						onclick="javascript:window.location.href='order/toPay?orderId=${order.orderId}'">立即支付</button>
				</div>
				
				
					--%>
	<!-- 原来内容 -->
				
				
				
				
				<div style="position:relative;top:80px;">
				<h3 style="padding-left:50px">猜你喜欢</h3>
				<div>
				<div class="span16" style="width:1080px;">
					<ul>
					<c:forEach items="${guessList }"  var="g">
									<a href="goods/detail?goodsId=${g.guessGoods.goodsId }">
										<li>
											<img src="upload/${g.guessGoods.goodsImg }" />
											<p class="goods-title">${g.guessGoods.goodsName }</p>
											<p class="goods-desc">${g.guessGoods.goodsDesc }</p>
											<p><span class="newprice">${g.guessGoods.goodsPrice }</span>&nbsp;
											</p>
										</li>
									</a>
					</c:forEach>
					</ul>
				</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	

	
	
	
	
	
	
	
	


<script type="text/javascript">
	var layer;
	layui.use(['layer','form'], function ()
	        {
	            layer = layui.layer;
	            form =layui.form;
	        });
	
	</script>
</body>
</html>