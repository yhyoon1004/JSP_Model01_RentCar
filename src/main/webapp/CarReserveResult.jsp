<%@page import="db.CarListBean"%>
<%@page import="db.CarReserveBean" %>
<%@page import="db.RentcarDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="rbean" class="db.CarReserveBean">
		<jsp:setProperty name="rbean" property="*" />
	</jsp:useBean>

	<%
	String id = (String) session.getAttribute("id");

	if (id == null) {
	%>
	<script>
		alert("로그인 후 예약가능합니다.");
		location.href = 'RentCarMain.jsp?Center=MemberLogin.jsp';
	</script>
	<%
	}

	//닐짜 비교 
	Date d1 = new Date();
	Date d2 = new Date();

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	d1 = sdf.parse(rbean.getRday());
	d2 = sdf.parse(sdf.format(d2));

	int compare = d1.compareTo(d2);
	//예약하려는 날짜보다 현재 날짜가 크다면 -1
	//예약하려는 날짜보다 현재 날짜가 같다면 0
	//예약하려는 날짜가  더 크다면 1

	if (compare < 0) {
	%>
	<script>
		alert("현재 날짜보다 이전 날짜는 선택하실 수 없습니다.");
		history.go(-1);
	</script>
	<%
	}

	//앞선 로그인, 옵션 선택에 문제가 없다면
	String id1 = (String) session.getAttribute("id");
	rbean.setId(id1);

	//데이터베이스에 빈클래스를 저장
	RentcarDAO rdao = new RentcarDAO();
	//로그인Proc코드수정하고 다시 코딩
	rdao.setReserveCar(rbean);
	
	//차량정보 얻어오기
	CarListBean cbean = rdao.getOneCar(rbean.getNo());
	
	//차량 총금액
	int totalcar = cbean.getPrice()*rbean.getCarCount()*rbean.getDday();
	
	int usein =0;
	int usewifi =0;
	int usehead =0;
	int usebaby =0;
	
	if(rbean.getUsein()==1) usein=10000;
	if(rbean.getUsewifi()==1) usewifi=10000;
	if(rbean.getUsehead()==1) usehead=10000;
	if(rbean.getUsebaby()==1) usebaby=10000;
	
	int totaloption = (rbean.getCarCount()*rbean.getDday())*(usein+usewifi+usehead+usebaby);
	
	%>


	<center>
		<table width="1000">
			<tr height="100">
				<td align="center" ><font size="6" color="gray">
						차량 예약 완료 </font></td>
			</tr>
			<tr >
				<td align="center">
				<img alt="" src="images/<%=cbean.getImg()%>" width="470">
				</td>
			</tr>

			<tr height="100">
				<td align="center" ><font size="6" color="gray">
						차량 총예약 금액 <%=totalcar %> 원 </font></td>
			</tr>
			
			<tr height="100">
				<td align="center" ><font size="6" color="gray">
						차량 총옵션 금액 <%=totaloption %> 원 </font></td>
			</tr>
			
			<tr height="100">
				<td align="center"><font size="6" color="gray">
						총 랜트 금액 <%=totalcar+totaloption %> 원 </font></td>
			</tr>
			
		</table>
	</center>




</body>
</html>