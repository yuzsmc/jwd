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
    <link rel="stylesheet" href="lib/layui/css/layui.css">
    <link rel="stylesheet" href="lib/laydate/theme/default/laydate.css">
    <script type="text/javascript" src="lib/jQuery.js"></script>
</head>

<body>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <div class="layui-fluid  layui-form">
        <div class="layui-row layui-col-space10">
            <div class="layui-col-xs12 layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-header">筛选条件</div>
                    <div class="layui-card-body">
                        <form action="">
                            <div class="layui-form-item">
                                <div class="layui-inline">
                                    <label class="layui-form-label">参考部门</label>
                                    <div class="layui-input-inline ">
                                        <select name="postdepartment" lay-verify="">
                                            <option value="">选择接收部门</option>
                                            <option value="0">部们一</option>
                                            <option value="1">部门二</option>
                                            <option value="2">部门三</option>
                                            <option value="3">部门四</option>
                                            <option value="4">部门五</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <label class="layui-form-label">车队</label>
                                    <div class="layui-input-inline">
                                        <select name="getdepartment" lay-verify="">
                                            <option value="">选择接收部门</option>
                                            <option value="0">部们一</option>
                                            <option value="1">部门二</option>
                                            <option value="2">部门三</option>
                                            <option value="3">部门四</option>
                                            <option value="4">部门五</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <label class="layui-form-label">班组</label>
                                    <div class="layui-input-inline">
                                        <select name="getdepartment" lay-verify="" lay-search>
                                            <option value="">选择接收用户</option>
                                            <option value="0">用户一</option>
                                            <option value="1">用户二</option>
                                            <option value="2">用户三</option>
                                            <option value="3">用户四</option>
                                            <option value="4">用户五</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <label class="layui-form-label">参考人员</label>
                                    <div class="layui-input-inline">
                                        <select name="getdepartment" lay-verify="" lay-search>
                                            <option value="">选择接收用户</option>
                                            <option value="0">用户一</option>
                                            <option value="1">用户二</option>
                                            <option value="2">用户三</option>
                                            <option value="3">用户四</option>
                                            <option value="4">用户五</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <label class="layui-form-label">考试时间</label>
                                    <div class="layui-form-item layui-inline">
                                        <div class="layui-input-inline">
                                            <input type="text" placeholder="开始时间" id="StartTime" class="layui-input">
                                        </div>
                                    </div>

                                    <div class="layui-form-item layui-inline">
                                        <div class="layui-input-inline">
                                            <input type="text" placeholder="结束时间" id="EndTime" class="layui-input">
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <label class="layui-form-label" style="width: 100px">培训/考试主题</label>
                                    <div class="layui-input-inline">
                                        <input type="text" name="" placeholder="请输入关键字" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <button class="layui-btn" lay-submit="" lay-filter="component-form-element">查询</button>
                                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="layui-col-xs12 layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-header">查询结果</div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="lib/laydate/laydate.js"></script>
    <script type="text/javascript" src="lib/layui/layui.all.js"></script>
    <script>
        laydate.render({
            elem: '#StartTime',
            type: 'datetime'
        });
        laydate.render({
            elem: '#EndTime',
            type: 'datetime'
        });
        layui.use("['layer','form']", function () {
            var form = layui.form;
        });
    </script>
</body>

</html>