<%@page import="db.CarListBean"%>
<%@page import="java.util.Vector"%>
<%@page import="db.RentcarDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%
	int category = Integer.parseInt(request.getParameter("category"));
	RentcarDAO rdao = new RentcarDAO();
	Vector<CarListBean> v = rdao.getCategoryCar(category);
String carSize="�ֽ�";
if(category==1)carSize="����";
else if(category==2)carSize="����";
else if(category==3)carSize="����";
%>
<center>
<table width="1000" border="1">
<tr height ="50">
<td align="center" colspan="3">
<font size="6" color ="skyblue"><%=carSize%> ��Ʈ ����</font></td></tr>
	<%
	//tr�� 3���� �����ְ� �ٽ� tr�� ����
	int j=0;
	for(int i=0; i<v.size(); i++){
		CarListBean bean = v.get(i);
		if(j%3==0){
			//4��° ����� ��� tr�� ���� ����� �ִ� ���
	%>
			<tr height="220">
	<%
		}//end IF
	%>
			<td align="center" width="330">
			<a href="RentCarMain.jsp?Center=CarReserveInfo.jsp?no=<%=bean.getNo()%>">
			<img alt="" src="images/<%=bean.getImg()%>" width="300" height="200">
			</a><p><font size="3" color="gray"> <b>������ : <%=bean.getName() %></b></font>
			</td>

	<%
	j++;
	}
	%>
	</table>
</center>
</body>
</html>