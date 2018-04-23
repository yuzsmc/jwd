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
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="lib/layui/css/layui.css">
    <style>
        .toButton {
            display: inline-block;
            height: 38px;
            line-height: 38px;
            padding: 0 18px;
            background-color: #009688;
            color: #fff;
            white-space: nowrap;
            text-align: center;
            font-size: 14px;
            border: none;
            border-radius: 2px;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

    <div class="layui-fluid">

        <form class="layui-form" action="">
            <div class="layui-card" style="padding: 10px;">
                <div class="layui-form-item layui-row">
                    <label class="layui-form-label"></label>
                    <div class="layui-col-md3">
                        <button class="layui-btn">文档资料</button>
                        <button class="layui-btn">视频资料</button>
                    </div>
                </div>

                <div class="layui-form-item layui-row">
                    <div class="layui-col-md3">
                        <label class="layui-form-label">资料说明</label>
                        <div class="layui-input-block">
                            <button class="layui-btn">规章</button>
                        </div>
                    </div>
                </div>

                <div class="layui-form-item layui-row">
                    <div class="layui-col-md3">
                        <label class="layui-form-label">选择资料</label>
                        <div class="layui-input-block">
                            <a class="toButton" href="./libraryUpload.html">点击区域跳转上传文件所在位置</a>
                        </div>
                    </div>
                </div>

                <div class="layui-form-item layui-row">
                    <div class="layui-col-md3">
                        <label class="layui-form-label">上传部门</label>
                        <div class="layui-input-block">
                            <select name="city" lay-verify="required">
                                <option value=""></option>
                                <option value="0">10%</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-col-md3">
                        <label class="layui-form-label">接受部门</label>
                        <div class="layui-input-block">
                            <select name="city" lay-verify="required">
                                <option value=""></option>
                                <option value="0">10%</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-col-md3">
                        <label class="layui-form-label">资料类型</label>
                        <div class="layui-input-block">
                            <select name="city" lay-verify="required">
                                <option value=""></option>
                                <option value="0">文档资料</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="layui-form-item layui-row">
                    <div class="layui-col-md3">
                        <label class="layui-form-label">培训时间</label>
                        <div class="layui-input-block">
                            <input type="text" class="layui-input" id="data" placeholder="请选择日期">
                        </div>
                    </div>
                    <div class="layui-col-md3">
                        <label class="layui-form-label"></label>
                        <input type="checkbox" name="" title="是否发布考试" lay-skin="primary" checked>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
        </form>

        </div>
</body>
<script src="lib/laydate/laydate.js"></script>
<script src="lib/layui/layui.js"></script>
<script src="lib/layui/lay/modules/laytpl.js"></script>
<script>
    layui.use('element', function() {
        var element = layui.element;
    });

    layui.use('form', function() {
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function(data) {
            layer.confirm('提示消息', {
                btn: ['确认', '取消'], //可以无限个按钮
            }, function(index) {
                //按钮【按钮一】的回调
            }, function(index) {
                //按钮【按钮二】的回调
            });
            return false;
        });
    });
    //日期范围
    laydate.render({
        elem: '#data',
        range: true
    });
</script>

</html>