<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,height=device-height, user-scalable=no,initial-scale=1, minimum-scale=1, maximum-scale=1,target-densitydpi=device-dpi ">
    <title>确认收货成功</title>
    <link rel="stylesheet" href="css/pay_success.css">
</head>
<%
	String name;
	int order_id,deliver_user_id;
	
	if(session.getAttribute("name")!=null){
		name=session.getAttribute("name").toString();
	}else{
		name="null";
	}
	
	if(session.getAttribute("order_id")!=null){
		order_id=Integer.parseInt(session.getAttribute("order_id").toString());
	}else{
		order_id=0;
	}
	
	if(session.getAttribute("deliver_user_id")!=null){
		deliver_user_id=Integer.parseInt(session.getAttribute("deliver_user_id").toString());
	}else{
		deliver_user_id=0;
	}
	
%>
<body>
    <div class="choice-head">
        <div class="choice-head-con">
            <img src="image/tx_small.png">
            <a><%=name %>&nbsp;</a>
            <div class="name">童鞋，欢迎使用递归！</div>
        </div>
    </div>
    
    <div class="con-top">
        <span><img src="image/success.png" alt=""></span>
        <span class="success">确认收货成功！</span>
    </div>


    <div class="con-middle">
        <img src="image/paysuccess.png" alt="">
    </div>
    
    <div class="index-btns">
        <div class="index-btns-Con">
                <div class="index-btn1">
                        <a href="assess.jsp?order_id=<%=order_id %>&deliver_user_id=<%=deliver_user_id %>"><input type="button" value="立&nbsp;即&nbsp;评&nbsp;价"></a>
                </div>
        </div>
        <div class="index-btns-Con">
                <div class="index-btn2">
                        <a href="show_my_orders.jsp"><input type="button" value="返&nbsp;回&nbsp;我&nbsp;的&nbsp;订&nbsp;单"></a>
                </div>
        </div>
    </div>
    </div>
</body>
</html>
