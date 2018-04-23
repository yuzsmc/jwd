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
    <title>发布培训任务</title>
</head>

<body>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. 

Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <div class="layui-fluid">
        <form class="layui-form" action="insertT" method="post" enctype="multipart/form-data">
            <div class="layui-card">
                <div class="layui-card-header">培训通知</div>
                <div class="layui-card-body">
                    <div class="layui-form-item">
                        <div class="layui-btn-group">
                        <input class="layui-btn"  type="file" name="fileTest" value='增加'/>
                        <a href="./listFile" class="layui-btn">下载</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-card">
                <div class="layui-card-header">主要选项</div>
                <div class="layui-card-body">
                    <div class="layui-form-item layui-row">
                        <div class="layui-col-md4">
                            <label class="layui-form-label">培训名称</label>
                            <div class="layui-input-block">
                                <input type="text" name="trainingname" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-col-md4">
                            <label class="layui-form-label">培训类型</label>
                            <div class="layui-input-block">
                                <select name="trainingtype" lay-verify="required">
                                    <option value=""></option>
                                   <c:forEach items="${listtype}" var="li">
									<option value="${li}">${li}</option>
								</c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="layui-col-md4">
                            <label class="layui-form-label">培训方式</label>
                            <div class="layui-input-block">
                                <select name="trainingmode" lay-verify="required">
                                    <option value=""></option>
                                   <c:forEach items="${listmothod}" var="li">
									<option value="${li}">${li}</option>
								</c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="layui-form-item layui-row">
                    <div class="layui-col-md4">
                            <label class="layui-form-label">培训时间</label>
                            <div class="layui-input-block">
                                <input type="text" name="ttime" class="layui-input" id="data1" placeholder="请选择日期">
                            </div>
                        </div>
                        <div class="layui-col-md4">
                            <label class="layui-form-label">培训学时</label>
                            <div class="layui-input-block">
                                <!-- <input type="text" name="traininghours" class="layui-input" id="data1" placeholder="请选择日期"> -->
                            	<select name="traininghours">
                            	 <c:forEach items="${listtime}" var="li">
									<option value="${li}">${li}</option>
								</c:forEach>
                            	</select>
                            </div>
                        </div>
                        <!-- <div class="layui-col-md4">
                            <label class="layui-form-label">培训部门</label>
                            <div class="layui-input-block">
                                <input type="text" name="title" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                            </div>
                        </div> -->
                        <div class="layui-col-md4">
                            <label class="layui-form-label">参培部门</label>
                            <div class="layui-input-block">
                                <select name="departments" >
                    			<c:forEach items="${listpart}" var="page">
									<option value="${page.group_name}">${page.group_name}</option>
								</c:forEach>
                				</select>
                            </div>
                        </div>

                    </div>
                    <div class="layui-form-item layui-row">
                        <div class="layui-col-md4">
                            <label class="layui-form-label">考试图像记录周期</label>
                            <div class="layui-input-block">
                                <select name="recordingperiod" lay-verify="required">
                                    <option value=""></option>
									<c:forEach items="${listweek}" var="li">
									<option value="${li}">${li}</option>
								</c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item layui-row layui-col-space10">
                        <div class="layui-col-md12">
                            <label class="layui-form-label">培训资料</label>
                            <div class="layui-input-block">
                             <input class="layui-btn"  type="file" name="fileList" value='增加' multiple/>
                            </div>
                        </div>
                        <div class="layui-col-md12">
                            <label class="layui-form-label">参培人员</label>
                            <div class="layui-input-block">
                                <input type="button" class="layui-btn" id='addTrainers' value="增加">
                            </div>
                            <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px; ">
                                <div id="parentIframe" style="margin: 0 auto;width: 90%">
                                </div>
                            </blockquote>

                        </div>
                        <div class="layui-col-md12">
                            <label class="layui-form-label">培训负责人</label>
                            <div class="layui-input-block">
                                <!-- <input type="button" class="layui-btn" id='addCharger' value="增加"> -->
                            	<select name="trainer">
                            	<c:forEach items="${listteach}" var="pagea">
									<option value="${pagea.username}">${pagea.username}</option>
								</c:forEach>
                            </select>
                            </div>
                            <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px; ">
                                <div id="parentIframe1" style="margin: 0 auto;width: 90%">
                                </div>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-card">
                <div class="layui-card-header">其他选项</div>
                <div class="layui-card-body">
                    <div class="layui-form-item layui-row">
                        <div class="layui-col-md4" style="text-align: center">
                            <!-- <label class="layui-form-label"></label> -->
                            <input type="checkbox" value="1" name="examination" title="是否发布考试" lay-skin="primary" checked>
                        </div>
                        <div class="layui-col-md4">
                            <!-- <label class="layui-form-label"></label> -->
                            <input type="checkbox" value="1" name="trainingimage" title="是否留存培训影像资料" lay-skin="primary" checked>
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
        </form>
    </div>
</body>
<script src="lib/jQuery.js"></script>
<script src="lib/laydate/laydate.js"></script>
<script src="lib/layui/layui.js"></script>
<script>
    layui.use(['layer', 'form'], function () {
        var form = layui.form,
            layer = layui.layer;
        // 添加参培人员和负责人
        var addTrainersBtn = $('#addTrainers'),
            addChargerBtn = $('#addCharger');
       /*  addTrainersBtn.on('click', function () {
            layer.open({
                type: 2,
                area: ['700px', '450px'],
                fixed: false, //不固定
                maxmin: true,
                content: '../others/trainers.html'
            });
        });
        addChargerBtn.on('click', function () {
            layer.open({
                type: 2,
                area: ['700px', '450px'],
                fixed: false, //不固定
                maxmin: true,
                content: '../others/charger.html'
            });
        })
        $(document).on('click', '#delBtn', function () {
            $(this).parent('.userItm').remove();
        }) */
    });

    //日期范围
    laydate.render({
        elem: '#data1',
        range: true
    });
</script>

</html>