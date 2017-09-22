<%@ page language="java" contentType="text/html; charset=utf-8" %>

<html>
<head>
<title>Java Bean Actions</title>
<link rel='stylesheet' type='text/css' href='css/style.css'>
</head>
<body><br/>
<jsp:forward page="/somepage.jsp">
	<jsp:param name="param1" value="value1"/>
	<jsp:param name="param2" value="value2"/>
</jsp:forward>
<jsp:plugin 
	code="Graph.class" 
	codebase="http://java.sun.com/applets/jdk/1.4/demo/applets/GraphLayout/" 
	type="applet"
	width="500"
	height="400">
	<jsp:params>
		<jsp:param name="edges" value="joe-food,joe-dog,joe-tea,joe-cat,joe-table,table-plate/50,plate-food/30,food-mouse/100,food-dog/100,mouse-cat/150,table-cup/30,cup-tea/30,dog-cat/80,cup-spoon/50,plate-fork,dog-flea1,dog-flea2,flea1-flea2/20,plate-knife"/>
		<jsp:param name="center" value="joe" />
	</jsp:params>
	<jsp:fallback>您的浏览器不支持 Java Applet</jsp:fallback>
</jsp:plugin>
<%-- 声明 Person 类对象 person --%>
<jsp:useBean id="person" class="com.jiudianlianxian.bean.Person" scope="page"></jsp:useBean>
<%-- 设置 person 的所有属性，所有的属性值从 request 中自动取得 --%>
<jsp:setProperty name="person" property="*" />

<div align="center">
	<form action="method.jsp" method="get">
		<fieldset style='width: 300'>
			<legend>请填写 Person 信息</legend>
			<table align="center" width="400">
				<tr>
					<td align="right" style="font-weight:bold; ">姓名：</td>
					<td>
						<%-- 获取 person 的 name 属性 --%>
						<jsp:getProperty name="person" property="name" />
					</td>
				</tr>
				<tr>
					<td align="right" style="font-weight:bold; ">年龄：</td>
					<td>
						<%-- 获取 person 的 age 属性 --%>
						<jsp:getProperty name="person" property="age" />
					</td>
				</tr>
				<tr>
					<td align="right" style="font-weight:bold; ">性别：</td>
					<td>
						<%-- 获取 person 的 sex 属性 --%>
						<jsp:getProperty name="person" property="sex" />
					</td>
				</tr>
				<tr>
					<td align="right" style="font-weight:bold; "></td>
					<td>
						<input type="button" onclick="history.go(-1); " value=" 返回 " class="button">
					</td>
				</tr>
				
			</table>
		</fieldset>	
	</form>
</div>

</body>
</html>

