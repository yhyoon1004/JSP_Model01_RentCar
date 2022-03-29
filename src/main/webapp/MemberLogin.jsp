<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<form action="MemberLoginProc.jsp" method="post">
		<table width="300" border="1" bodercolor="gray">
				
			<tr height="100">
				<td colspan="2">
				<font size="5" color="gray">로그인</font>
				</td>
			</tr>
			
			<tr height="40">
				<td width="120" align="center">아이디</td>
				<td width="180" ><input type="text" name="id" size="15"></td>
			</tr>
			
			<tr height="40">
				<td width="120" align="center">패스워드</td>
				<td width="180" ><input type="password" name="pass" size="15"></td>
			</tr>
		
			<tr height="40">
				<td align="center" colspan="2"><input type="submit" value="로그인"></td>
			</tr>
		
		</table>
	</form>
</body>
</html>