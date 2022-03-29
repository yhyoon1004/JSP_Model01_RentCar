<%@page import="db.CarListBean"%>
<%@page import="java.util.Vector"%>
<%@page import="db.RentcarDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<!-- 
			화면구성 == 3개씩 뿌려주는데 처음화면은 최신순으로 3개만
			검색기능이 있어서 소형, 중형, 대형 종류 별 검색가능 select박스로
			 -->
	<%
	RentcarDAO rdao = new RentcarDAO();
	Vector<CarListBean> v = rdao.getSelectCar();
	%>
	<center>
		<table>
		<tr height ="50">
<td align="center" colspan="3">
<font size="6" color ="skyblue">최신 렌트 차량</font></td></tr>
			<tr heigth="240">
				<%
				for (int i = 0; i < v.size(); i++) {
					CarListBean bean = v.get(i);
				%>
					<td align="center" width="330">
					<a href="RentCarMain.jsp?Center=CarReserveInfo.jsp?no=<%=bean.getNo()%>">
					<img alt="" src="images/<%=bean.getImg()%>" 
					width="300" height="200">
					</a><p>차량명 : <%=bean.getName() %>
					</td>
				<%
				}
				%>
			</tr>
		</table>
		<hr color="red" size="3">
		<p><font size = "4" color="gray">차량 검색 하기</font><br><br><br>
		<form action="RentCarMain.jsp?Center=CarCategoryList.jsp" method="post">
		<font size = "3">차량 검색 하기</font>&nbsp;&nbsp;
		<select name ="category">
			<option value="1">소형</option>
			<option value="2">중형</option>
			<option value="3">대형</option>
		</select>
		<input type="submit" value="검색">
		</form>
		<button type="button" onclick="location.href='RentCarMain.jsp?Center=CarAllList.jsp'">전체 검색</button>
	</center>
</body>
</html>