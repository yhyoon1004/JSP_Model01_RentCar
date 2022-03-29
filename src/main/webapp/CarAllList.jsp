<%@page import="db.CarListBean"%>
<%@page import="java.util.Vector"%>
<%@page import="db.RentcarDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<center>
<table>
<tr height ="50">
<td align="center" colspan="3">
<font size="6" color ="skyblue">전체 렌트 차량</font></td></tr>
	<%
	RentcarDAO rdao = new RentcarDAO();
	Vector<CarListBean> v = rdao.getAllList();
	//tr을 3개씩 보여주고 다시 tr을 생성
	int j=0;
	for(int i=0; i<v.size(); i++){
		CarListBean bean = v.get(i);
		if(j%3==0){
			//4번째 요소일 경우 tr을 새로 만들어 주는 명령
	%>
			<tr height="220">
	<%
		}//end IF
	%>
			<td align="center" width="330">
			<a href="CarReserveInfo.jsp?no=<%=bean.getNo()%>">
			<img alt="" src="images/<%=bean.getImg()%>" width="300" height="200">
			</a><p><font size="3" color="gray"> <b>차량명 : <%=bean.getName() %></b></font>
			</td>

	<%
	j++;
	}
	%>
	</table>
</center>
</body>
</html>