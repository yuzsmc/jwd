<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="static/jquery/jquery-1.9.1.min.js"></script> <!-- 引入jquery框架 -->
<script type="text/javascript">
$(function(){
	$("#a1").click(function(){
		this.value=(this.value==0?1:0);
		alert(this.value);
	});
});


</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>发布培训任务</title>
</head>
<body>
<!-- <form action="insertT" method="post" enctype="multipart/form-data">  
选择文件:<input type="file" name="file" width="120px">  
选择文件:<input type="file" name="file" width="120px">  
        <input type="submit" value="提交">  
</form> -->
    <form action="listFile" method="get">  
        <input type="submit" value="下载">  
    </form>  
<form action="insertT" method="post" enctype="multipart/form-data">
<ul>
<li>
培训通知:<input type="file" name="file" width="120px">  
</li>
</ul>
<table>

<tr><th>培训名称</th>
	<td><input type="text" name="trainingname"></td>
	<th>培训类型</th>
	<td>
	<select name="trainingtype">
	<option>1</option>
	<option>2</option>
	<option>3</option>
	<option>4</option>
	</select>
	</td>
	<th>培训方式</th>
	<td>
	<select name="trainingmode">
	<option>非脱产</option>
	<option>2</option>
	<option>3</option>
	<option>4</option>
	</select>
	</td>
</tr>
<tr>
<th>培训时间</th>
	<td>
	<select name="begintime">
	<option>1</option>
	<option>2</option>
	<option>3</option>
	<option>4</option>
	</select>
	</td>
	<th>至</th>
	<td>
	<select name="endtime">
	<option>1</option>
	<option>2</option>
	<option>3</option>
	<option>4</option>
	</select>
	</td>
	<th>培训学时</th>
	<td>
	<select name="traininghours">
	<option>1学时</option>
	<option>2学时</option>
	<option>3学时</option>
	<option>4学时</option>
	<option>5学时</option>
	<option>6学时</option>
	<option>7学时</option>
	<option>8学时</option>
	<option>9学时</option>
	<option>10学时</option>
	<option>11学时</option>
	<option>12学时</option>
	</select>
	</td>
	<th>培训资料</th>
	<td>
	<input type="file" name="file" width="120px"> 
	</td>
</tr>
<tr><th>参培部门</th>
	<td>
	<select name="departments">
	<option>7</option>
	<option>2</option>
	<option>3</option>
	<option>4</option>
	</select>
	</td>
	<th>参培人员</th>
	<td></td>
	<th>培训负责人</th>
	<td></td>
</tr>
<tr>
<th>是否留存培训影像资料</th>
<td>
<input type="checkbox" value="0" name="trainingimage" onclick="this.value=(this.value==0)?1:0">
</td>
</tr>
<tr>
<th>是否发布考试</th>
<td>
<input type="checkbox" value="0" name="examination" onclick="this.value=(this.value==0)?1:0">
</td>
<th>考试图像记录周期</th>
<td>
<select name="recordingperiod">
	<option>1</option>
	<option>2</option>
	<option>3</option>
	<option>4</option>
	</select>

</td>
</tr>
</table>
<input type="submit" value="提交">
<input type="button" value="取消">
</form>
</body>

</html>