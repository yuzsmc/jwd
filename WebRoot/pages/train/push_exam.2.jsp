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
        <div class="layui-col-space10">
            <div class="layui-card" style="padding-top: 10px;padding-bottom: 10px;">
                <div class="layui-card-body">
                    <form class="layui-form" action="">
                        <div class="layui-form-item">
                            <div class="layui-col-md3">
                                <label class="layui-form-label">发布部门</label>
                                <div class="layui-input-block">
                                    <select name="city" lay-verify="required">
                                        <option value=""></option>
                                        <option value="0">北京</option>
                                        <option value="4">杭州</option>
                                    </select>
                                </div>
                            </div>
                            <div class="layui-col-md3">
                                <label class="layui-form-label">参考部门</label>
                                <div class="layui-input-block">
                                    <select name="city" lay-verify="required">
                                        <option value=""></option>
                                        <option value="0">北京</option>
                                        <option value="4">杭州</option>
                                    </select>
                                </div>
                            </div>
                            <div class="layui-col-md3">
                                <label class="layui-form-label">车队</label>
                                <div class="layui-input-block">
                                    <input type="text" name="title" required lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-col-md3">
                                <label class="layui-form-label">班组</label>
                                <div class="layui-input-block">
                                    <input type="text" name="title" required lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                        </div>

                        <div class="layui-form-item layui-row">
                            <div class="layui-col-md3">
                                <label class="layui-form-label">参考人员</label>
                                <div class="layui-input-block">
                                    <input type="text" name="title" required lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-col-md3">
                                <label class="layui-form-label">关键字搜索</label>
                                <div class="layui-input-block">
                                    <input type="text" name="title" required lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-col-md3">
                                <label class="layui-form-label">培训时间</label>
                                <div class="layui-input-block">
                                    <input type="text" class="layui-input" id="data" placeholder="请选择日期">
                                </div>
                            </div>
                        </div>

                        <div class="layui-form-item layui-row">
                            <label class="layui-form-label"></label>
                            <button class="layui-btn">发布考试</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="layui-card">
                <div class="layui-card-body">
                    <table class="layui-table">
                        <colgroup>
                        </colgroup>
                        <thead>
                            <tr id="view1"></tr>
                        </thead>
                        <tbody id="view2"></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="lib/laydate/laydate.js"></script>
<script src="lib/layui/layui.js"></script>
<script>
    layui.use('element', function () {
        var element = layui.element;
    });

    layui.use('form', function () {
        var form = layui.form;
        //监听提交
        /* form.on('submit(formDemo)', function (data) {
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

    //日期范围
    laydate.render({
        elem: '#data',
        range: true
    });

    setTimeout(function() {
        layui.use('laytpl', function () {
            var laytpl = layui.laytpl;
           /*  var data1 = {
                "list": ["序号", "培训名称", "发布部门", "签收部门", "是否考试", "调查问卷", "调查比例", "失效时间", "应参培人数", "已参培人数", "补培人数", "签收情况", "培训教师", "签收人", "负责人"]
            };
            var data2 = {
                "list": [
                    ["序号", "培训名称", "发布部门", "签收部门", "是否考试", "调查问卷", "调查比例", "失效时间", "应参培人数", "已参培人数", "补培人数", "签收情况", "培训教师", "签收人", "负责人"],
                    ["序号", "培训名称", "发布部门", "签收部门", "是否考试", "调查问卷", "调查比例", "失效时间", "应参培人数", "已参培人数", "补培人数", "签收情况", "培训教师", "签收人", "负责人"]
                ]
            }; 

            laytpl(site1.innerHTML).render(data1, function (html) {
                document.getElementById('view1').innerHTML = html;
            });
            laytpl(site2.innerHTML).render(data2, function (html) {
                document.getElementById('view2').innerHTML = html;
            });*/
        })
    }, 200);
</script>
<script id="site1" type="text/html">
    {{# layui.each(d.list, function(index, item){ }}
    <th>{{item}}</th>
    {{# }); }} {{# if(d.list.length === 0){ }} 无数据 {{# } }}
</script>
<script id="site2" type="text/html">
    {{# layui.each(d.list, function(index, item){ }}
    <tr>
        {{# layui.each(d.list[index], function(index, item2){ }}
        <td>{{item2}}</td>
        {{# }); }} {{# if(d.list[index].length === 0){ }} 无数据 {{# } }}
    </tr>
    {{# }); }} {{# if(d.list.length === 0){ }} 无数据 {{# } }}
</script>

</html>