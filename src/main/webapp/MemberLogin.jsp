<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<form action="MemberLoginProc.jsp" method="post">
		<table width="300" border="1" bodercolor="gray">
				
			<tr height="100">
				<td colspan="2">
				<font size="5" color="gray">�α���</font>
				</td>
			</tr>
			
			<tr height="40">
				<td width="120" align="center">���̵�</td>
				<td width="180" ><input type="text" name="id" size="15"></td>
			</tr>
			
			<tr height="40">
				<td width="120" align="center">�н�����</td>
				<td width="180" ><input type="password" name="pass" size="15"></td>
			</tr>
		
			<tr height="40">
				<td align="center" colspan="2"><input type="submit" value="�α���"></td>
			</tr>
		
		</table>
	</form>
</body>
</html>