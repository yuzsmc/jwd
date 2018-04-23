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
    <title>培训任务查询</title>
</head>

<body>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <div class="layui-fluid">
        <form class="layui-form" action="selectLike">
            <div class="layui-card" style="padding: 10px">

                <div class="layui-form-item layui-row">
                    <div class="layui-col-md3">
                        <label class="layui-form-label">发布部门</label>
                        <div class="layui-input-block">
                            <select name="releasedepartment" lay-verify="required">
                                <option ></option>
                               <c:forEach items="${listpart}" var="page">
									<option value="${page.group_name}">${page.group_name}</option>
								</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="layui-col-md3">
                        <label class="layui-form-label">接受部门</label>
                        <div class="layui-input-block">
                            <select name="departments" lay-verify="required">
                                <option ></option>
                                <c:forEach items="${listpart}" var="page">
									<option value="${page.group_name}">${page.group_name}</option>
								</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="layui-col-md3">
                        <label class="layui-form-label">关键字搜索</label>
                        <div class="layui-input-block">
                            <input type="text" name="trainingname" lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item layui-row">
                    <div class="layui-col-md3">
                        <label class="layui-form-label">培训时间</label>
                        <div class="layui-input-block">
                            <input type="text" name="ttime" class="layui-input" id="data" placeholder="请选择日期">
                        </div>
                    </div>
                    <div class="layui-col-md3">
                        <label class="layui-form-label">签收人</label>
                        <div class="layui-input-block">
                            <input type="text" name="recipient"  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item layui-row">
                    <div class="layui-col-md3">
                        <label class="layui-form-label">培训负责人</label>
                        <div class="layui-input-block"><!-- trainer -->
                            <input type="text" name="trainer" class="layui-input" id="data1" placeholder="请选择日期">
                        </div>
                    </div>
                    <!-- <div class="layui-col-md3">
                        <label class="layui-form-label">培训教师</label>
                        <div class="layui-input-block">
                            <input type="text" name="trainingteachers" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                        </div>
                    </div> -->
                    <div class="layui-col-md3">
                        <label class="layui-form-label"></label>
                        <button class="layui-btn">点击查询</button>
                    </div>
                </div>
            </div>
        </form>
        <div class="layui-card" style="padding: 10px;">
            <table class="layui-table" id="searchAnnocTable" lay-data="{ height:332, url:'<%=request.getContextPath()%>/train/selectall', page:true, id:'searchAnnocTable'}"
                                lay-filter="demo">
                                <thead>
                                    <tr>
                                        <!-- <th lay-data="{type:'checkbox', fixed: 'left'}"></th> -->
                                    <th lay-data="{field:'id', width:120, sort: true, fixed: true}">ID</th>
                                    <th lay-data="{field:'trainingname', width:200}">培训名称</th>
                                    <th lay-data="{field:'releasedepartment', width:200, sort: true}">发布部门</th>
                                    <th lay-data="{field:'departments', width:200}">签收部门</th>
                                    <th lay-data="{field:'examination', width:150}">是否考试</th>
                                    <th lay-data="{field:'examination', width:150, sort: true}">失效时间</th>
                                    <th lay-data="{field:'examination', width:200}">应培人数</th>
                                    <th lay-data="{field:'examination', width:150}">参陪人数</th>
                                    <th lay-data="{field:'examination', width:150, sort: true}">补培人数</th>
                                    <th lay-data="{field:'endTime', width:150, sort: true}">签收情况</th>
                                    <th lay-data="{field:'recipient', width:150, sort: true}">签收人</th>
                                    <th lay-data="{field:'trainer', width:150, sort: true}">负责人</th>
                                    <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#bar'}"></th>
                                    </tr>
                                </thead>
                            </table>
                            <script type="text/html" id="bar">
                                <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
                                <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
                                <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
                            </script>
        </div>
    </div>
</body>
<script src="lib/laydate/laydate.js"></script>
<script src="lib/layui/layui.js"></script>
<script src="lib/layui/lay/modules/laytpl.js"></script>
<script>
    layui.use('element', function () {
        var element = layui.element;
    });

    layui.use(['form','table'], function () {
        var form = layui.form, 
        	table = layui.table;
        //监听工具条
        table.on('tool(demo)', function (obj) {
            var data = obj.data;
            if (obj.event === 'detail') {
                layer.msg('ID：' + data.id + ' 的查看操作');
            } else if (obj.event === 'del') {
                layer.confirm('真的删除行么', function (index) {
                    obj.del(); 
                    $.ajax({
                    	url:'<%=request.getContextPath()%>/notice/del',
                    	type:'POST',
                    	data:{
                    		notice_id: data.notice_id
                    	}
                    });
                    layer.close(index);
                },function(){
                	layer.close(index);
                });
            } else if (obj.event === 'edit') {
                layer.alert('编辑行：<br>' + JSON.stringify(data))
            }
        });
        //监听提交
       /*  form.on('submit(formDemo)', function (data) {
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
   /*  setTimeout(function() {
        layui.use('laytpl', function () {
            var laytpl = layui.laytpl;
            var data1 = {
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
            });
        })
    }, 200); */
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