<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
					  <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
  </head>
  
  <body>
  <table border='1' align='center'>
  <tr><td>操作</td><td>操作</td><td>姓名</td><td>性别</td><td>班级</td><td>爱好</td></tr>
  <c:forEach  var='li' items='${list}'>
   <tr><td><a href='<%=basePath%>stu1/delete?id=${li.id}'>删除</a></td><td><a href='stu1/chaxun?id=${li.id}'>修改</a></td><td>${li.name}</td><td>${li.sex}</td><td>${li.banji}</td><td>${li.aihao}</td></tr>
  </c:forEach>
  </table>
  </body>
</html>
