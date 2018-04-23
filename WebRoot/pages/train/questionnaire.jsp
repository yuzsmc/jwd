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
    <title>调查问卷管理</title>
    <style>
        .h1 {
            text-align: center;
            font-size: 22px;
        }
        
        .h2 {
            font-size: 18px;
        }
        
        .progress {
            display: flex;
            align-items: center;
            height: 30px;
            line-height: 30px;
            margin: 0 auto 30px;
        }
        
        .button {
            display: flex;
            justify-content: space-evenly;
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
                <div class="layui-form-item">
                    <h1 class="h1">使用培训调查问卷</h1>
                    <hr class="layui-bg-green">
                </div>

                <div class="layui-form-item">
                    <h2 class="h2">教学评价</h2>
                    <hr class="layui-bg-green">
                </div>

                <div id="view"></div>

                <div class="layui-form-item">
                    <h2 class="h2">培训质量调查</h2>
                    <hr class="layui-bg-green">
                </div>

                <div id="view2"></div>

                <div class="layui-row progress layui-row">
                    <div class="layui-col-md2 layui-col-md-offset1 layui-col-sm10">请选择调查比例</div>

                    <div class="layui-col-md5 layui-col-md-offset1 layui-col-sm10 layui-progress" lay-filter="cent" lay-showpercent="true">
                        <div class="layui-progress-bar" lay-percent="25%"></div>
                    </div>

                    <div class="layui-col-md2 layui-col-md-offset1 layui-col-sm10 site-button" style="margin-left:10px ">
                        <input type="button" class="layui-btn site-active" value="+" data-type="plus">
                        <input type="button" class="layui-btn site-active" value="-" data-type="subtract">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block layui-col-md6 button">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">生成</button>
                        <button type="reset" class="layui-btn layui-btn-primary">修改</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
<script src="lib/layui/layui.js"></script>
<script src="lib/layui/lay/modules/laytpl.js"></script>

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
        setTimeout(function(){
            layui.use('laytpl', function() {
                var laytpl = layui.laytpl;
                var data = {
                    "list": [{
                        "title": "内容设计",
                        "item": ["好", "较好", "一般", "需改进"]
                    }, {
                        "title": "教学方法",
                        "item": ["好", "较好", "一般", "需改进"]
                    }, {
                        "title": "表达能力",
                        "item": ["好", "较好", "一般", "需改进"]
                    }]
                };
                var data2 = {
                    "list": [{
                        "title": "您认为培训课程的安排",
                        "item": ["很合理", "合理", "较合理", "一般", "不合理"]
                    }, {
                        "title": "您认为培训课程的安排",
                        "item": ["很合理", "合理", "较合理", "一般", "不合理"]
                    }, {
                        "title": "您认为培训课程的安排",
                        "item": ["很合理", "合理", "较合理", "一般", "不合理"]
                    }, {
                        "title": "您认为培训课程的安排",
                        "item": ["很合理", "合理", "较合理", "一般", "不合理"]
                    }, {
                        "title": "您认为培训课程的安排",
                        "item": ["很合理", "合理", "较合理", "一般", "不合理"]
                    }, {
                        "title": "您认为培训课程的安排",
                        "item": ["很合理", "合理", "较合理", "一般", "不合理"]
                    }]
                };

                var getTpl = site.innerHTML;
                view = document.getElementById('view');
                laytpl(getTpl).render(data, function(html) {
                    view.innerHTML = html;
                });

                view2 = document.getElementById('view2');
                laytpl(getTpl).render(data2, function(html) {
                    view2.innerHTML = html;
                });
                form.render();
            })
        }, 200);

    });
</script>
<script id="site" type="text/html">
    {{# layui.each(d.list, function(index, item){ }}
    <div class="layui-form-item">
        <div class="layui-col-md3 layui-col-md-offset1 layui-col-sm12">
            {{item.title}}
        </div>
        <div class="layui-col-md8 layui-col-sm12">
            <div class="layui-row">
                {{# layui.each(d.list[index].item, function(xindex, xtemp){ }}
                <div class="layui-col-md2">
                    <div class="">
                        <input type="radio" name="{{index}}" value="{{xtemp}}" title="{{xtemp}}">
                    </div>
                    <!-- <label class="layui-form-label">{{xtemp}}</label> -->
                    <!-- <input type="radio" name="role" value="" title="{{xtemp}}"> -->
                    <!-- <div class="layui-unselect layui-form-radio">
                        <i class="layui-anim layui-icon"></i>
                        <div>{{xtemp}}</div>
                    </div> -->
                </div>
                {{# }); }} {{# if(d.list[index].title.length === 0){ }} 无数据 {{# } }}
            </div>
        </div>
    </div>
    {{# }); }} {{# if(d.list.length === 0){ }} 无数据 {{# } }}
</script>

</html>