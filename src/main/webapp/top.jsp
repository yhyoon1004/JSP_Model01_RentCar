<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%
String id = (String)session.getAttribute("id");
//session���尴ü�� ���� id���� �޾� �α��� ���� Ȯ��
if(id==null)
	id="Guest";
%>

	<table>
		<tr height="100">
			<td align="left" colspan="4"><a
				href="RentCarMain.jsp"><img alt=""
					src="images/RENT.jpg" width="200" height="100"></a></td>
					
			<td align="center" width="200" bgcolor="skyblue">
			<font color="white" size="4"><%=id %> �� </font>
			<%
				if(id.equals("Guest")){
					%>
				<button type="button" onclick="location.href='RentCarMain.jsp?Center=MemberLogin.jsp'">�α���</button>
				<%
				}else{
					%>
				<button type="button" onclick="location.href='MemberLogout.jsp">�α׾ƿ�</button>
					<%
				}
			%>
			</td>

		</tr>
		<tr height="50">
			<td width="200" align="center" bgcolor="pink"><a href="RentCarMain.jsp?Center=CarReserve.jsp"><font color="white" size="5">�����ϱ�</font></a></td>
			<td width="200" align="center" bgcolor="pink"><a><font color="white" size="5">����Ȯ��</font></a></td>
			<td width="200" align="center" bgcolor="pink"><a><font color="white" size="5">�����Խ���</font></a></td>
			<td width="200" align="center" bgcolor="pink"><a><font color="white" size="5">�̺�Ʈ</font></a></td>
			<td width="200" align="center" bgcolor="pink"><a><font color="white" size="5">������</font></a></td>
		</tr>
	</table>

</body>
</html>