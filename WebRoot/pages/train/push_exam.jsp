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
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="lib/layui/css/layui.css">
    <title>发布考试任务</title>
</head>

<body>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <div class="layui-fluid">
        <form class="layui-form" action="insertet" enctype="multipart/form-data" method="post">
            <div class="layui-card">
                <div class="layui-card-header">上传考试通知</div>
                <div class="layui-card-body">
                    <div class="layui-upload">
                        <button id="upload_1" type="button" class="layui-btn layui-btn-normal">选择文件</button>
                        <input class="layui-upload-file" type="file" name="file">
                        <span class="layui-inline layui-upload-choose"></span>
                    </div>
                </div>
            </div>
            <div class="layui-row layui-col-space10">
                <div class="layui-col-xs12 layui-col-md8">
                    <div class="layui-card">
                        <div class="layui-card-header">主要选项</div>
                        <div class="layui-card-body">
                            <div class="layui-form-item layui-row">
                                <div class="layui-col-xs12 layui-col-md6">
                                    <label class="layui-form-label">发布部门</label>
                                    <div class="layui-input-block">
                                        <select name="releasedepartment" lay-verify="required">
                                            <option value=""></option>
                                            <option value="0">北京</option>
                                            <option value="4">杭州</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-col-xs12 layui-col-md6">
                                    <label class="layui-form-label">签收部门</label>
                                    <div class="layui-input-block">
                                        <select name="signingdepartment" lay-verify="required">
                                            <option value=""></option>
                                            <option value="0">北京</option>
                                            <option value="4">杭州</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-form-item layui-row">
                                <div class="layui-col-xs12 layui-col-md6">
                                    <label class="layui-form-label">考试名称</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="ename" required lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-col-xs12 layui-col-md6">
                                    <label class="layui-form-label">选择岗位</label>
                                    <div class="layui-input-block">
                                        <select name="post" lay-verify="required">
                                            <option value=""></option>
                                            <option value="0">北京</option>
                                            <option value="1">上海</option>
                                            <option value="2">广州</option>
                                            <option value="3">深圳</option>
                                            <option value="4">杭州</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-form-item layui-row">
                                <div class="layui-col-xs12 layui-col-md6">
                                    <label class="layui-form-label">监考教师</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="teacher" required lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-col-xs12 layui-col-md6">
                                    <label class="layui-form-label">考试时间</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="ebegintime" class="layui-input" id="data1" placeholder="请选择日期">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-form-item layui-row">
                                <div class="layui-col-xs12 layui-col-md6 layui-block">
                                    <label class="all-text-label">填写调查比例</label>
                                    <div class="layui-input-inline">
                                        <select name="surveyratio" lay-verify="required">
                                            <option value=""></option>
                                            <option value="0">10%</option>
                                            <option value="0">20%</option>
                                            <option value="0">30%</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-md4">
                    <div class="layui-card ">
                        <div class="layui-card-header">其他选项</div>
                        <div class="layui-card-body">
                            <div class="layui-form-item layui-row">
                                <div class="layui-col-xs12 layui-col-md12">
                                    <input type="checkbox" value="1" name="questionnaire" title="是否发布考试" lay-skin="primary" checked>
                                </div>
                                <div class="layui-col-xs12 layui-col-md12">
                                    <input type="checkbox" value="1" name="imagedata" title="是否留存培训影像资料" lay-skin="primary" checked>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-input-block">
                                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
<script src="lib/laydate/laydate.js"></script>
<script src="lib/layui/layui.js"></script>
<script>
    layui.use('form', function () {
        var form = layui.form;
        //监听提交
      /*   form.on('submit(formDemo)', function (data) {
            layer.confirm('提示消息', {
                btn: ['确认', '取消'], //可以无限个按钮
            }, function (index) {
                //按钮【按钮一】的回调
            }, function (index) {
                //按钮【按钮二】的回调
            });
            return false;
        }); */
    });
  /*   layui.use('upload', function () {
        var upload = layui.upload;
        //执行实例
        var uploadInst = upload.render({
            elem: '#upload_1'
            , auto: false
            , url: '/upload/' //上传接口
            , done: function (res) {
                //上传完毕回调
            }
            , accept: 'file'
            , error: function () {
                //请求异常回调
            }
        });
    }); */
    //日期范围
    laydate.render({
        elem: '#data1',
        range: true
    });
</script>

</html>