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

</head>

<body>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <style>
    </style>
    <div class="layui-fluid layui-form">
        <form>
            <div class="layui-row layui-col-space10">
                <!-- 公告标题和发布时间s  -->
                <div class="layui-col-xs12 layui-col-md6">
                    <div class="layui-card">
                        <div class="layui-card-header">公告主题</div>
                        <div class="layui-card-body">
                            <div class="layui-form-item">
                                <div class="layui-input-inline" style="width: 100%;">
                                    <input type="text" id="item" name='item' placeholder="请输入公告主题" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-md6">
                    <div class="layui-card">
                        <div class="layui-card-header">发布时间</div>
                        <div class="layui-card-body">
                            <span>设置时间：</span>
                            <div class="layui-form-item layui-inline">
                                <div class="layui-input-inline">
                                    <input type="text" placeholder="开始时间" name='StartTime' id="StartTime" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item layui-inline">
                                <div class="layui-input-inline">
                                    <input type="text" placeholder="结束时间" name='EndTime' id="EndTime" class="layui-input">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 公告标题和发布时间e -->

                <!-- 公告内容s -->
                <div class="layui-col-xs12 layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">公告内容</div>
                        <div class="layui-card-body">
                            <textarea id="notice_text" name='notice_text' placeholder="请输入" class="layui-textarea" style="margin-top: 0px; margin-bottom: 0px; height: 100px;"></textarea>
                        </div>

                    </div>
                </div>
                <!-- 公告内容e -->

                <!-- 底部部门选择和其他选项 -->
                <div class="layui-col-xs12 layui-col-md12">
                    <div class="layui-row layui-col-space10">
                        <!-- 部门s -->
                        <div class="layui-col-xs8 layui-col-md8">
                            <div class="layui-card">
                                <div class="layui-card-header">接收部门</div>
                                <div class="layui-card-body">
                                    <div class="layui-form-item">
                                        <div class="layui-inline">
                                            <label class="layui-form-label">接收部门</label>
                                            <div class="layui-input-inline ">
                                                <select id="get" name='get' lay-verify="" lay-filter="get">
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
                                                <select id="post" name='post' lay-verify="">
                                                    <option value="">选择接收部门</option>
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
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 部门e -->

                        <!-- 其他选项s -->
                        <div class="layui-col-xs4 layui-col-md4">
                            <div class="layui-card">
                                <div class="layui-card-header">其他选项</div>
                                <div class="layui-card-body">
                                    <div class="layui-form-item">
                                        <div class="layui-inline">
                                            <div class="layui-input-inline">
                                                <input type="checkbox" id="longer" name="longer" value="1" title="是否长期有效" lay-skin="primary" checked>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <div class="layui-input-inline">
                                            <button class="layui-btn" lay-submit="" lay-filter="*">立即提交</button>
                                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 其他选项e -->
                    </div>
                </div>
            </div>
        </form>
    </div>
    <script type="text/javascript" src="js/socket.js"></script>
    <script type="text/javascript" src="lib/laydate/laydate.js"></script>
    <script type="text/javascript" src="lib/jQuery.js"></script>
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
        layui.use(['layer','form'], function () {
            var form = layui.form;
            form.on('select(get)', function(data){
    	        $.ajax({
    	            url: "<%=request.getContextPath()%>/user/selectperson",
    	            type : "post",
    	            data: {
    	            	"getClass_id": data.value
    	            },
    	            contentType:"application/x-www-form-urlencoded",
    	            success: function (res) {
    	            	var res = $.parseJSON(res);
    	            	var person =  $('#person');
    	            	person.html("<option>选择接收用户</option>");
    	            		for(var i=0 ;i< res.length;i++) {
    	            			var m_options = $('<option>').val(res[i][0]).text(res[i][1]);
    	            			person.append(m_options);
    	            			console.log(m_options);
    	            		}
    	            		form.render('select');
    	            }
    	        });
     		}); 
            form.on('submit(*)',function(data){
            	console.log(data.field);
            	send();
            	return false;
            })
        });
    </script>
        <script>
websocket.onmessage = function(){
	$.ajax({
		url : "<%=request.getContextPath()%>/notice/add",
		type : "post",
		data : {
			"str" : event.data
		},
		success : function(res) {
			alert(res);

		}
	});
    tongZhi(event.data);
};
</script>
</body>

</html>