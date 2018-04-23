<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html class="no-js">
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="lib/layui/css/layui.css">
    <link rel="stylesheet" href="css/login.css">
	<script type="text/javascript" src="js/cookie.js"></script>
    <script type="text/javascript" src="lib/jQuery.js"></script>
</head>

<body class="login-body">
<div id="message" class="td"></div><br/><br/>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <div class="bg"></div>
    <div class="login-box">
        <div class="login-box-main">
            <div class="user-head-wrap">
                <img src="" alt="">
            </div>
            <h2>管理登陆</h2>
            <div class="login-from-wrap layui-form  layui-row">
                <form action="user/login" method="post">
                    <div class="layui-fluid">
                        <div class="layui-col-xs12 layui-col-md12">
                            <div class="layui-form-item">
                                <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="user-login-username"></label>
                                <input type="text" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-form-item">
                                <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="user-login-password"></label>
                                <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-row">
                                    <div class="layui-col-xs12 layui-col-md6">
                                        <label class="layadmin-user-login-icon layui-icon layui-icon-vercode" for="user-login-vercode"></label>
                                        <input type="text" name="user-login-vercode" placeholder="请输入验证码" autocomplete="off" class="layui-input">
                                    </div>
                                    <div class="layui-col-xs12 layui-col-md6">
                                        <div style="padding-left:20px;">
                                            <input type="text" name="user-login-vercode" placeholder="请输入验证码" autocomplete="off" class="layui-input">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <button class="layui-btn layui-btn-fluid login-btn" lay-submit="" lay-filter="LAY-user-login-submit">登 陆</button>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-row layui-col-space20">
                                    <div class="ayui-col-xs12 layui-col-md6">
                                        <button class="layui-btn layui-btn-fluid sp-btn" lay-submit="" lay-filter="LAY-user-login-submit">指纹登陆</button>
                                    </div>
                                    <div class="ayui-col-xs12 layui-col-md6">
                                        <button class="layui-btn layui-btn-fluid sp-btn" lay-submit="" lay-filter="LAY-user-login-submit">面部识别</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="lib/layui/layui.js"></script>
    <script>
        layui.use('form', function () {
            var form = layui.form;
        });
    </script>
</body>

</html>