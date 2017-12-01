<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="model.StaffDataBean"%>
<%@ page import="dao.MybatisOnDBBean"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script>	
	function logout(){
		<%
			session.setMaxInactiveInterval(0);
		%>
		 window.location="<%=request.getContextPath()%>/login/loginForm";
	}
	
</script>
<style>
a {
	text-decoration: none;
}
</style>
<%
	String board = "공지사항";
	if(request.getParameter("boardid")!=null)
		session.setAttribute("boardid", request.getParameter("boardid"));
	String boardid = (String)request.getParameter("boardid");
	if(boardid == null) 
		boardid = "1";
	StaffDataBean staff = (StaffDataBean)session.getAttribute("staff");
	
	MybatisOnDBBean dbPro = MybatisOnDBBean.getInstance();
	String depart_name = dbPro.getDepart_name(staff.getDepart_id());

%>


<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body, html {
    height: 100%;
    line-height: 1.8;
}
/* Full height image header */
.w3-bar .w3-button {
    padding: 16px;
}
</style>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card-2" id="myNavbar">
  	
    <a href="#home" class="w3-bar-item w3-button w3-wide">
		<img src="<%=request.getContextPath()%>/images/logo.JPG" width="150">
	</a>
	<br> <%=depart_name%> <%=staff.getUser_name() %>님 안녕하세요. <i class="fa fa-smile-o"></i>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
    	
		<a href="/SY_OCS/board/list?boardid=1" class="w3-bar-item w3-button"><i class="fa fa-list-ul"></i> 공지사항</a>
      <a href="/SY_OCS/on/patient_regForm" class="w3-bar-item w3-button"><i class="fa fa-pencil-square-o"></i> 환자등록</a>
      <a href="/SY_OCS/on/receiveForm" class="w3-bar-item w3-button"><i class="fa fa-user" ></i> 접수</a>
      <a href="/SY_OCS/on/receiptDoForm"  class="w3-bar-item w3-button"><i class="fa fa-krw"></i> 수납</a>
      <button class="w3-bar-item w3-button w3-whtie" type = "button" onclick="logout()">
						<i class="fa fa-sign-out"></i> 로그아웃</button>

    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

</body>
</html>
