<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html class="no-js">
<head>
 <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="lib/layui/css/layui.css">
    <link rel="stylesheet" href="lib/laydate/theme/default/laydate.css">

</head>

<body>

    <style>
        #time {
            text-align: center;
        }

        .wran-text {
            font-size: 20px;
            font-weight: 500;
            text-indent: 2em;
        }

        #charts1 {
            width: 700px;
            height: 300px;
        }
        @media screen and (max-width: 1024px) {
            #charts1 {
                width: 700px;
                height: 400px;
            }
        }

        @media screen and (max-width: 768px) {
            #charts1 {
                width: 400px;
                height: 400px;
            }
        }
    </style>
    <div class="layui-fluid">
        <div class="layui-row layui-col-space5">
            <div class="layui-col-xs12 layui-col-md8">
                <div class="layui-row layui-col-space5">
                    <div class="layui-col-xs6 layui-col-md6">
                        <div class="layui-card">
                            <div class="layui-card-header">系统公告</div>
                            <div class="layui-card-body">
                                <p class="wran-text">
                                    尊敬的用户，您好！ 由于2018年3月9日至2018年3月10日系统维护，本系统在此期间停用，于2018年3月11日08:00分恢复使用。
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-xs6 layui-col-md6">
                        <div class="layui-card">
                            <div class="layui-card-header">待办事项</div>
                            <div class="layui-card-body">
                                <p class="wran-text">
                                    
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-xs12 layui-col-md12">
                        <div class="layui-card">
                            <div class="layui-card-header">数据分析</div>
                            <div class="layui-card-body">
                                <div class="charts-wrap">
                                    <div id="charts1"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-col-xs12 layui-col-md4">
                <div class="grid-demo">
                    <div class="layui-card">
                        <div class="layui-card-header">当前时间</div>
                        <div class="layui-card-body">
                            <div id="time"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="lib/laydate/laydate.js"></script>
    <script type="text/javascript" src="lib/layui/layui.all.js"></script>
    <script type="text/javascript" src="lib/echarts.js"></script>
    <script>
        var dom = document.getElementById("charts1");
        var myChart = echarts.init(dom);
        var app = {};
        option = null;
        option = {
            xAxis: {
                type: 'category',
                data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
            },
            yAxis: {
                type: 'value'
            },
            series: [{
                data: [820, 932, 901, 934, 1290, 1330, 1320],
                type: 'line'
            }]
        };
        ;
        if (option && typeof option === "object") {
            myChart.setOption(option, true);
        }
    </script>

    <script>
        laydate.render({
            elem: '#time',
            position: 'static'
        });
    </script>
</body>
</html>