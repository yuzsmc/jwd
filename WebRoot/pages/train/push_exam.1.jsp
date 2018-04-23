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
    <style>
        .progress {
            display: flex;
            align-items: center;
            height: 30px;
            line-height: 30px;
            margin: 0 auto 30px;
        }
    </style>
</head>

<body>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <div class="layui-fluid">
        <div class="layui-card">
            <div class="layui-card-body">
                <form class="layui-form" action="">
                    <div class="layui-form-item">
                        <div class="layui-col-md3">
                            <label class="layui-form-label">考试通知</label>
                            <div class="layui-btn-group">
                                <button class="layui-btn">上传考试通知</button>
                            </div>
                        </div>
                        <div class="layui-col-md3">
                            <label class="layui-form-label">选择题库</label>
                            <div class="layui-btn-group">
                                <button class="layui-btn">点击选择</button>
                            </div>
                        </div>
                        <div class="layui-col-md3">
                            <label class="layui-form-label">发布部门</label>
                            <div class="layui-btn-group">
                                <button class="layui-btn">点击选择</button>
                            </div>
                        </div>
                        <div class="layui-col-md3">
                            <label class="layui-form-label">签收部门</label>
                            <div class="layui-btn-group">
                                <button class="layui-btn">点击选择</button>
                            </div>
                        </div>
                    </div>

                    <div class="layui-form-item layui-row">
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
                            <label class="layui-form-label">考试名称</label>
                            <div class="layui-input-block">
                                <input type="text" name="title" required lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-col-md3">
                            <label class="layui-form-label">选择人员</label>
                            <div class="layui-btn-group">
                                <button class="layui-btn">点击选择</button>
                                <button class="layui-btn">人员标识</button>
                            </div>
                        </div>
                    </div>

                    <div class="layui-form-item layui-row">
                        <div class="layui-col-md3">
                            <label class="layui-form-label">考试时间</label>
                            <div class="layui-input-block">
                                <input type="text" class="layui-input" id="data1" placeholder="请选择日期">
                            </div>
                        </div>
                        <div class="layui-col-md3">
                            <label class="layui-form-label">监考教师</label>
                            <div class="layui-btn-group">
                                <button class="layui-btn">+</button>
                            </div>
                        </div>
                        <div class="layui-col-md3 layui-col-md-offset1">
                            <input type="checkbox" name="" title="是否留存培训影像资料" lay-skin="primary" checked>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-col-md9" style="display: flex">
                            <label class="layui-form-label">难度分配</label>
                            <table class="layui-table">
                                <colgroup>
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>单选题</th>
                                        <th>多选题</th>
                                        <th>判断题</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>初级
                                            <input type="text" value="0">道</td>
                                        <td>初级
                                            <input type="text" value="0">道</td>
                                        <td>初级
                                            <input type="text" value="0">道</td>
                                    </tr>
                                    <tr>
                                        <td>中级
                                            <input type="text" value="0">道</td>
                                        <td>中级
                                            <input type="text" value="0">道</td>
                                        <td>中级
                                            <input type="text" value="0">道</td>
                                    </tr>
                                    <tr>
                                        <td>高级
                                            <input type="text" value="0">道</td>
                                        <td>高级
                                            <input type="text" value="0">道</td>
                                        <td>高级
                                            <input type="text" value="0">道</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-col-md9" style="display: flex">
                            <label class="layui-form-label">分数分配</label>
                            <table class="layui-table">
                                <colgroup>
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>单选题</th>
                                        <th>多选题</th>
                                        <th>判断题</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>初级
                                            <input type="text" value="0">道</td>
                                        <td>初级
                                            <input type="text" value="0">道</td>
                                        <td>初级
                                            <input type="text" value="0">道</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="layui-row progress">
                        <div class="layui-col-md2 layui-col-md-offset1">请选择调查比例</div>
                        <div class="layui-col-md5 layui-col-sm10 layui-progress" lay-filter="cent" lay-showpercent="true">
                            <div class="layui-progress-bar" lay-percent="25%"></div>
                        </div>

                        <div class="layui-col-md2 layui-col-sm10 site-button" style="margin-left:10px ">
                            <input type="button" class="layui-btn site-active" value="+" data-type="plus">
                            <input type="button" class="layui-btn site-active" value="-" data-type="subtract">
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
        </div>
    </div>
</body>
<script src="lib/laydate/laydate.js"></script>
<script src="lib/layui/layui.js"></script>
<script>
    layui.use('element', function() {
        var $ = layui.jquery,
            element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

        //触发事件
        var xprecent = parseInt($('.layui-progress-bar').attr('lay-percent'));
        var active = {
            //设置进度
            plus: function() {
                xprecent >= 100 ? xprecent == 100 : xprecent += 5;
                element.progress('cent', xprecent + "%")
            },
            subtract: function() {
                xprecent <= 0 ? xprecent == 0 : xprecent -= 5;
                element.progress('cent', xprecent + "%")
            },
            loading: function(othis) {
                var DISABLED = 'layui-btn-disabled';
                if (othis.hasClass(DISABLED)) return;

                //模拟loading
                var n = 0,
                    timer = setInterval(function() {
                        n = n + Math.random() * 10 | 0;
                        if (n > 100) {
                            n = 100;
                            clearInterval(timer);
                            othis.removeClass(DISABLED);
                        }
                        element.progress('cent', n + '%');
                    }, 300 + Math.random() * 1000);

                othis.addClass(DISABLED);
            }
        };

        $('.site-active').on('click', function() {
            console.log("demo")
            var othis = $(this),
                type = $(this).data('type');
            active[type] ? active[type].call(this, othis) : '';
        });
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
        elem: '#data1',
        range: true
    });
</script>

</html>