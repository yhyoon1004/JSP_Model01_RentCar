<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%
String id = (String)session.getAttribute("id");
//session내장객체를 통해 id값을 받아 로그인 상태 확인
if(id==null)
	id="Guest";
%>

	<table>
		<tr height="100">
			<td align="left" colspan="4"><a
				href="RentCarMain.jsp"><img alt=""
					src="images/RENT.jpg" width="200" height="100"></a></td>
					
			<td align="center" width="200" bgcolor="skyblue">
			<font color="white" size="4"><%=id %> 님 </font>
			<%
				if(id.equals("Guest")){
					%>
				<button type="button" onclick="location.href='RentCarMain.jsp?Center=MemberLogin.jsp'">로그인</button>
				<%
				}else{
					%>
				<button type="button" onclick="location.href='MemberLogout.jsp">로그아웃</button>
					<%
				}
			%>
			</td>

		</tr>
		<tr height="50">
			<td width="200" align="center" bgcolor="pink"><a href="RentCarMain.jsp?Center=CarReserve.jsp"><font color="white" size="5">예약하기</font></a></td>
			<td width="200" align="center" bgcolor="pink"><a><font color="white" size="5">예약확인</font></a></td>
			<td width="200" align="center" bgcolor="pink"><a><font color="white" size="5">자유게시판</font></a></td>
			<td width="200" align="center" bgcolor="pink"><a><font color="white" size="5">이벤트</font></a></td>
			<td width="200" align="center" bgcolor="pink"><a><font color="white" size="5">고객센터</font></a></td>
		</tr>
	</table>

</body>
</html>