<%@page import="db.CarListBean"%>
<%@page import="db.RentcarDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%

	int no = Integer.parseInt(request.getParameter("no"));

	RentcarDAO rdao = new RentcarDAO();
	CarListBean bean = rdao.getOneCar(no);

	int category = bean.getCategory();
	String carSize="";
	if(category==1)carSize="소형";
	else if(category==2)carSize="중형";
	 else if(category==3)carSize="대형";
	%>
	<center>
		<form action="RentCarMain.jsp?Center=CarOptionSelect.jsp"
			method="post">

			<table width="1000">

				<tr height="50">
					<td align="center" colspan="3"><font size="6" color="skyblue">
							<%=bean.getName()%> 차량 선택
					</font></td>
				</tr>
				<tr>
					<td rowspan="6" width="500" align="center">
					<img alt=""	src="images/<%=bean.getImg()%>" width="450"></td>
					<td width="250" align="center">차량이름</td>
					<td width="250" align="center"><%=bean.getName()%></td>
				</tr>
				<tr>
					<td width="250" align="center">차량 수량</td>
					<td width="250" align="center">
					<select name="CarCount">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
					</select>
					</td>
				</tr>

				<tr>
					<td width="250" align="center">차량분류</td>
					<td width="250" align="center"><%=carSize%></td>
				</tr>
				<tr>
					<td width="250" align="center">대여 가격</td>
					<td width="250" align="center"><%=bean.getPrice()%></td>
				</tr>
				<tr>
					<td width="250" align="center">제조회사</td>
					<td width="250" align="center"><%=bean.getCompany() %></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<input type="hidden"name="no" value="<%=bean.getNo() %>">
					<input type="hidden"name="img" value="<%=bean.getImg() %>">
					<input type="submit" value="옵션 선택후 구매">
					</td>
				</tr>
			</table>
			
			<br><br><br>
			<p>
			<%=bean.getInfo() %>
		</form>
	</center>

</body>
</html>