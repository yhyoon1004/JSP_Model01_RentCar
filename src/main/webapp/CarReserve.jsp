<%@page import="db.CarListBean"%>
<%@page import="java.util.Vector"%>
<%@page import="db.RentcarDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<!-- 
			ȭ�鱸�� == 3���� �ѷ��ִµ� ó��ȭ���� �ֽż����� 3����
			�˻������ �־ ����, ����, ���� ���� �� �˻����� select�ڽ���
			 -->
	<%
	RentcarDAO rdao = new RentcarDAO();
	Vector<CarListBean> v = rdao.getSelectCar();
	%>
	<center>
		<table>
		<tr height ="50">
<td align="center" colspan="3">
<font size="6" color ="skyblue">�ֽ� ��Ʈ ����</font></td></tr>
			<tr heigth="240">
				<%
				for (int i = 0; i < v.size(); i++) {
					CarListBean bean = v.get(i);
				%>
					<td align="center" width="330">
					<a href="RentCarMain.jsp?Center=CarReserveInfo.jsp?no=<%=bean.getNo()%>">
					<img alt="" src="images/<%=bean.getImg()%>" 
					width="300" height="200">
					</a><p>������ : <%=bean.getName() %>
					</td>
				<%
				}
				%>
			</tr>
		</table>
		<hr color="red" size="3">
		<p><font size = "4" color="gray">���� �˻� �ϱ�</font><br><br><br>
		<form action="RentCarMain.jsp?Center=CarCategoryList.jsp" method="post">
		<font size = "3">���� �˻� �ϱ�</font>&nbsp;&nbsp;
		<select name ="category">
			<option value="1">����</option>
			<option value="2">����</option>
			<option value="3">����</option>
		</select>
		<input type="submit" value="�˻�">
		</form>
		<button type="button" onclick="location.href='RentCarMain.jsp?Center=CarAllList.jsp'">��ü �˻�</button>
	</center>
</body>
</html>