<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խ���</title>
<meta name="viewport" content="width = device-width, initial-scale = 1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body>
	<center>
	
	
	<br><br><br><br><h3><b>�۳��� ����</b></h3>
	<div class = "container">
		<table class = "w3-table-all" style = "width:80%">
			<tr height = "30" class="w3-white">
				<td width = "125" align = "center">�۹�ȣ</td>
				<td width = "125" align = "center">${article.num }</td>
				<td width = "125">��ȸ��</td>
				<td width = "125" align = "center">${article.readcount }</td>
			</tr>
			<tr height = "30" class="w3-white">
				<td width = "125">�ۼ���</td>
				<td width = "125" align = "center">${article.writer }</td>
				<td width = "125" align = "center">�ۼ���</td>
				<td width = "125" align = "center">${article.reg_date }</td>
			</tr>
			<tr height = "30" class="w3-white">
				<td align = "center" width = "125">������</td>
				<td align = "center" width = "375" colspan = "3">${article.subject }</td>
			</tr>
			<tr height = "30" class="w3-white">
				<td align = "center" width = "125">�۳���</td>
				<td align = "center" width = "375" colspan = "3">
					<pre>${article.content }</pre>
				</td>
			</tr>
			<tr height = "30" class="w3-white">
				<td colspan = "4" class="w3-center">
					<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "submit" onclick = "document.location.href = 'updateForm?num=${article.num }&pageNum=${pageNum }'">
						�ۼ���</button>
						&nbsp;&nbsp;&nbsp;&nbsp;
					<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "submit" onclick = "document.location.href = 'deleteForm?num=${article.num }&pageNum=${pageNum }'">
						�ۻ���</button>
						&nbsp;&nbsp;&nbsp;&nbsp;
					<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "submit" onclick="document.location.href = 'writeForm?num=${article.num }&ref=${ref }&re_step=${re_step}&re_level=${re_level}&pageNum=${pageNum }'">
						��۾���</button>
						&nbsp;&nbsp;&nbsp;&nbsp;
					<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "submit" onclick = "document.location.href = 'list?pageNum=${pageNum }'">
						�۸��</button>
						&nbsp;&nbsp;&nbsp;&nbsp;
						
				</td>
			</tr>
		</table>

	</div>
	</center>
</body>
</html>