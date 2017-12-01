<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name = "viewport" content = "width = device-width, initial-scale = 1">
<link rel = "stylesheet" href = "https://www.w3schools.com/w3css/4/w3.css"></head>
<title>Insert title here</title>
<body>
<br><br><br><br><br>
<div class = "w3-container"><center><b>글쓰기</b><br>
<form method = "post" name = "writeform" action="writePro">

<input type = "hidden" name = "num" value = "${num }">
<input type = "hidden" name = "pageNum" value = "${pageNum }">
<input type = "hidden" name = "ref" value = "${ref }">
<input type = "hidden" name = "re_step" value = "${re_step }">
<input type = "hidden" name = "re_level" value = "${re_level }">

<table class = "w3-table-all" style="width:70%;">
	<tr class="w3-white">
		<td align="right" colspan="2" >
			<a href = "list">  글목록 </a> 
		</td>
	</tr>
	<tr class="w3-white">
		<td width = "70" align = "center">이름</td>
		<td width = "330"><input type = "text" size="10" maxlength = "10" name = "writer" value = ${staff.user_name } readonly></td>
	</tr>
	<tr class="w3-white">
		<td width="70" align = "center"> 제목 </td>
		<td width = "330"> 
		
		<c:if test="${num==0}">
		<input type= "text" size="40" maxlength = "50" name = "subject">
		</c:if>
		<c:if test="${num!=0}">
		<input type= "text" size="40" maxlength = "50" name = "subject" value = "[답변]">
		</c:if>
		
		</td>
	</tr>
	<tr class="w3-white">
		<td width = "70" align = "center">Email</td>
		<td width = "330"><input type = "text" size = "40" maxlength = "30" name = "email"></td>
	</tr>
	<tr class="w3-white">
		<td width = "70" align = "center">내용</td>
		<td width = "330"><textarea name = "content" rows = "13" cols = "40"></textarea></td>
	</tr>
	<tr class="w3-white"  >
		<td>
		</td>
		<td colspan = 2 align = "center" >
			<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "submit">
						글쓰기</button>
			<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "reset">
						다시작성</button>
			<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "button" OnClick = "window.location='list'">
						목록보기</button>
						
		</td>
	</tr>
	</table>
</form>
</center>
</div>
</body>
</html>