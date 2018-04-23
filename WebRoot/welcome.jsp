<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html class="no-js">
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>机务段后台</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="lib/layui/css/layui.css">
    <script type="text/javascript" src="js/cookie.js"></script>
    <script type="text/javascript" src="lib/jQuery.js"></script>
	<script type="text/javascript" src="js/socket.js"></script>

</head>

<body class="layui-layout-body">

    <div class="layui-layout layui-layout-admin">
        <!-- 内容 -->
        <div class="layui-header">
            <div class="layui-logo">机务段</div>
            <!-- 头部区域（可配合layui已有的水平导航） -->
            <ul class="layui-nav layui-layout-left" lay-filter="nav">
                <li class="layui-nav-item layui-this">
                    <a href="javascript:;" data-index='0'>系统首页</a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;" data-index='1'>培训管理</a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;" data-index='2'>基本信息</a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;" data-index='3'>考务管理</a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;" data-index='4'>其它系统</a>
                </li>
            </ul>
            <ul class="layui-nav layui-layout-right">
                <li class="layui-nav-item">
                    <a href="javascript:;">
                        <img src="http://t.cn/RCzsdCq" class="layui-nav-img"> 
                         <c:forEach  var='li' items='${list}'> 
                         ${li.ordername}
                         <input id="user_id" type="hidden" value='${li.user_id}'> 
                         <input id="ordername" type="hidden" value='${li.ordername}'>
                         <input id="group_id" type="hidden" value='${li.group_id}'> 
                         </c:forEach>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="">基本资料</a>
                        </dd>
                        <dd>
                            <a href="">安全设置</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="">退出</a>
                </li>
            </ul>
        </div>

        <div class="layui-side layui-bg-black">
            <div class="layui-side-scroll">
                <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
                <ul class="layui-nav layui-nav-tree sideNav" lay-filter="test">
                    <!-- js渲染区 -->
                </ul>
            </div>
        </div>

        <div class="layui-body">
            <!-- 内容主体区域 -->
            <!-- <div class="layui-main"> -->
            <div id="iframe_box">
                <div class="loading"></div>
                <div class="show-iframe">
                    <iframe src="pages/annoumcement/index_announce.jsp" name="myIframe"></iframe>
                </div>
            </div>

            <div class="layui-footer">
                <!-- 底部固定区域 -->
                © layui.com - 底部固定区域
            </div>
            <!-- </div> -->
</body>
<script type="text/javascript" src="lib/laydate/laydate.js"></script>
<script type="text/javascript" src="lib/layui/layui.js"></script>
<script type="text/javascript" src="config/sidemenu.js"></script>
<script>
    //JavaScript代码区域
    window.onload = function () {
        render(0);
        $(document).on('click', '.layui-nav-item', function () {
            $(this).addClass('layui-this');
            $(this).siblings().removeClass('layui-this'); 
        })
    }
    layui.use('element', function () {
        var element = layui.element;
        element.on('nav(nav)', function (data) {
            console.log(data[0].dataset.index);
            //加载侧边导航
            render(data[0].dataset.index);

        })
    });

    //侧边导航渲染
    function render(e) {
        // console.log(e);
        $(".sideNav").empty();
        for (var i = 0; i < dataArray[e].length; i++) {
            var template = "<li class='layui-nav-item'><a target='myIframe' href='" +
                dataArray[e][i].href + "'>" +
                dataArray[e][i].item + "</a></li>";
            $(".sideNav").append(template);
        }
    }
</script>
<script type="text/javascript">
var user_id = document.getElementById('user_id').value;
var group_id = document.getElementById('group_id').value;
setCookie("user_id", user_id);
setCookie("group_id", group_id);
</script>
</html>