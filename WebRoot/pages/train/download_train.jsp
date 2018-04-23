<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>培训通知下载</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="lib/layui/css/layui.css">
</head>

<body>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <div class="layui-fluid">
        <div class="layui-row layui-col-space10">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-header">搜索条件</div>
                    <div class="layui-card-body">
                        <div class="layui-form-item">
                            <div class="layui-inline layui-col-md3 layui-col-sm6">
                                <label class="layui-form-label" style="width: auto">培训开始结束时间</label>
                                <div class="layui-input-block" style="margin-left: 142px">
                                    <input type="text" class="layui-input" id="time" placeholder="请选择日期">
                                </div>
                            </div>
                            <div class="layui-inline layui-col-md3 layui-col-sm6">
                                <label class="layui-form-label">培训名称</label>
                                <div class="layui-input-block">
                                    <input type="text" class="layui-input" placeholder="请填写培训名称">
                                </div>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" lay-submit lay-filter="formDemo">立即搜索</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-header">搜索结果</div>
                    <div class="layui-card-body">
                        <table class="layui-table" lay-data="{ height:332, url:'../../config/table.js?limit=10', page:true, id:'searchAnnocTable'}" lay-filter="demo">
                            <thead>
                                <tr>
                                    <!-- <th lay-data="{type:'checkbox', fixed: 'left'}"></th> -->
                                    <th lay-data="{field:'id', width:120, sort: true, fixed: true}">ID</th>
                                    <th lay-data="{field:'title', width:150}">标题</th>
                                    <th lay-data="{field:'postPart', width:150, sort: true}">发布部门</th>
                                    <th lay-data="{field:'getPart', width:150}">接收部门</th>
                                    <th lay-data="{field:'pushTime', width:150}">发布时间</th>
                                    <th lay-data="{field:'lostTime', width:150, sort: true}">失效时间</th>
                                    <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#bar'}"></th>
                                </tr>
                            </thead>
                        </table>
                        <script type="text/html" id="bar">
                            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="download">下载</a>
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="lib/laydate/laydate.js"></script>
    <script src="lib/layui/layui.js"></script>
    <script src="lib/layui/lay/modules/laytpl.js"></script>
    <script>
        laydate.render({
            elem: '#time',
            type: 'datetime',
            range: true //或 range: '~' 来自定义分割字符
        });
        layui.use("['layer','formm','table']", function() {
            var table = layui.table;
            //监听工具条
            table.on('tool(demo)', function(obj) {
                var data = obj.data;
                if (obj.event === 'download') {
                    // 下载方法写在这里
                }
            });
        });
    </script>
</body>

</html>