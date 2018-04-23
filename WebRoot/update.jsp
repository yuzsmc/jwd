<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %><!-- 使用"${fn:contains(stu.aihao,'篮球')}"
时必须要导入fn标签才可以 -->
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
    
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
    <form action='stu1/update'  method='post'>
    <input type='hidden' value='${stu.id}' name='id'/>
    姓名 <input type='text' name='name' value='${stu.name}'/><br/>
    性别<input type='radio' name='sex' value='男' <c:if test="${stu.sex eq '男'}">checked</c:if>/>男
    <input type='radio' name='sex' value='女' <c:if test="${stu.sex eq '女'}">checked</c:if>/>女<br/>
    班级<select name='banji'>
     <option value='英琪1班' <c:if test="${stu.banji eq '英琪1班'}">selected </c:if>>英琪1班</option>
     <option value='英琪2班' <c:if test="${stu.banji eq '英琪2班'}">selected </c:if>>英琪2班</option>
     <option value='英琪3班' <c:if test="${stu.banji eq '英琪3班'}">selected </c:if>>英琪3班</option>
     <option value='英琪4班' <c:if test="${stu.banji eq '英琪4班'}">selected </c:if>>英琪4班</option>
     <option value='英琪5班' <c:if test="${stu.banji eq '英琪5班'}">selected </c:if>>英琪5班</option>
    </select><br/>
    爱好<input name='aihao' type='checkbox' value='篮球' <c:if test="${fn:contains(stu.aihao,'篮球')}">checked</c:if> />篮球
   <input name='aihao' type='checkbox' value='足球' <c:if test="${fn:contains(stu.aihao,'足球')}">checked</c:if> />足球
   <input name='aihao' type='checkbox' value='看电影' <c:if test="${fn:contains(stu.aihao,'看电影')}">checked</c:if> />看电影<br/>
   <input type='submit' value='修改'/>
    </form>
  </body>
</html>
