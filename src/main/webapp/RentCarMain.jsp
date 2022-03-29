<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

	<%
	String Center = request.getParameter("Center");
	if (Center == null)
		Center = "Center.jsp";
	%>

	<center>
		<table width="1000">
		
		<!-- top -->
		<tr height = "150">
		<jsp:include page="top.jsp"></jsp:include>
		</tr>
		
		<!-- center -->
		<tr height = "550">
		<jsp:include page="<%=Center%>"></jsp:include>		
		</tr>
		
		<!-- bottom -->
		<tr height ="100">
		<jsp:include page="bottom.jsp"></jsp:include>
		</tr>
		
		</table>
	</center>

</body>
</html>