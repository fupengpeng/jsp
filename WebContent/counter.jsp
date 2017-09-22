<%@ page language="java" contentType="text/html; charset=utf-8"%>

 
<html>
<head>
<title>计数器</title>
<link rel='stylesheet' type='text/css' href='css/style.css'>
</head>
<body>
	<br />

	<%-- 定义一个 session 范围内的计数器 记录个人访问信息 --%>
	<jsp:useBean id="personCount"
		class="com.jiudianlianxian.bean.Counter" scope="session" />

	<%-- 定义一个 application 范围内的计数器 记录所有人的访问信息 --%>
	<jsp:useBean id="totalCount"
		class="com.jiudianlianxian.bean.Counter" scope="application" />

	<div align="center">
		<form action="method.jsp" method="get">
			<fieldset style='width: 300'>
				<legend>计数器</legend>
				<table align="center" width="400">
					<tr>
						<td width=150 align="right" style="font-weight:bold; ">您的访问次数：</td>
						<td>
							<%-- 获取个人的 访问次数 --%> <jsp:getProperty name="personCount"
								property="count" /> 次
						</td>
					</tr>
					<tr>
						<td width=150 align="right" style="font-weight:bold; ">总共的访问次数：</td>
						<td>
							<%-- 获取所有人的 访问次数 --%> <jsp:getProperty name="totalCount"
								property="count" /> 次
						</td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>

	<%
		for (int i = 0; i < 5; i++) {
	%> 
	break 所在的循环, i = <%=i%>. <br />
	<%
		if (i == 2)
				break;
		}
	%>
	break 循环完毕.<br />
	<%
		for (int i = 0; i < 5; i++) {
	%>
	return 所在的循环, i = <%=i%>. <br />
	<%
		if (i == 2)
				return;
		}
	%>
	return 循环完毕.
	<br />
	<jsp:include flush="true" page="/foot.jsp"></jsp:include>
	<%
		out.getBufferSize();
		out.println(request);
	%>
<%--
	这是 JSP 注释，可以添加多行注释
--%>
	<%
		String param = request.getParameter("param");
		if ("1".equals(param)) {
	%>
	<br /> 关关雎鸠，在河之洲。窈窕淑女，君子好逑。<br />
	<%
		} else {
	%>
	<a href="if.jsp?param=1">if.jsp?param=1</a><br>
	<%
		}
	%>

</body>
</html>

