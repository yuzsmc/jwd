<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

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
    <script type="text/javascript" src="lib/jQuery.js"></script>
</head>

<body>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->


    <div class="layui-fluid  layui-form">
        <form>
            <div class="layui-row layui-col-space10">
                <div class="layui-col-xs12 layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">筛选条件</div>
                        <div class="layui-card-body">
                            <!-- <form action=""> -->
                            <div class="layui-form-item">
                                <div class="layui-inline">
                                    <label class="layui-form-label">接收部门</label>
                                    <div class="layui-input-inline ">
                                        <select id="get" name="get">
                                            <option value="">选择接收部门</option>
                                            <c:forEach  var='li' items='${list}'> 
							                     <option value='${li.group_id}'>${li.group_name}</option> 
							                  </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <label class="layui-form-label">发送部门</label>
                                    <div class="layui-input-inline">
                                        <select id="post" name="post">
                                            <option value="">选择发送部门</option>
                                             <c:forEach  var='li' items='${list}'> 
							                     <option value='${li.group_id}'>${li.group_name}</option> 
							                  </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <label class="layui-form-label">接收用户</label>
                                    <div class="layui-input-inline">
                                          <select name='person' id="person" lay-verify="" lay-search>
                                              <option value="">选择接收用户</option>
                                          </select>
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <label class="layui-form-label">关键字检索</label>
                                    <div class="layui-input-inline">
                                        <input type="text" id="notice_text" name="notice_text" placeholder="请输入关键字" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <label class="layui-form-label">发布时间</label>
                                    <div class="layui-form-item layui-inline">
                                        <div class="layui-input-inline">
                                            <input type="text" placeholder="开始时间" id="StartTime" name="StartTime" class="layui-input">
                                        </div>
                                    </div>
                                    <div class="layui-form-item layui-inline">
                                        <div class="layui-input-inline">
                                            <input type="text" placeholder="结束时间" id="EndTime" name="EndTime" class="layui-input">
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <button class="layui-btn" lay-submit lay-filter="*">搜索</button>
                                    <!-- <button class="layui-btn" id="search">搜索</button> -->
                                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                </div>
                            </div>
                            <!-- </form> -->
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">查询结果</div>
                        <div class="layui-card-body">
                            <table class="layui-table" id="searchAnnocTable" lay-data="{ height:332, url:'<%=request.getContextPath()%>/notice/selectall', page:true, id:'searchAnnocTable'}"
                                lay-filter="demo">
                                <thead>
                                    <tr>
                                        <!-- <th lay-data="{type:'checkbox', fixed: 'left'}"></th> -->
                                    <th lay-data="{field:'notice_id', width:120, sort: true, fixed: true}">ID</th>
                                    <th lay-data="{field:'item', width:200}">主题</th>
                                    <th lay-data="{field:'post', width:200, sort: true}">发布部门</th>
                                    <th lay-data="{field:'get', width:200}">接收部门</th>
                                    <th lay-data="{field:'startTime', width:150}">发布时间</th>
                                    <th lay-data="{field:'endTime', width:150, sort: true}">失效时间</th>
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
                </div>
            </div>
        </form>
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
        layui.use(['layer', 'form', 'table'], function () {
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
            form.on('submit(*)', function (data) {
                console.log(JSON.stringify(data.field));
                var a = JSON.stringify(data.field);
                table.reload('searchAnnocTable',  {
                    url: '<%=request.getContextPath()%>/notice/select'
                    , method: 'POST'
                    , where: {
                    	str: a
                    }, //设定异步数据接口的额外参数
                   
                });
                return false;
            });
        });
    </script>

</body>

</html>