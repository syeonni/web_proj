<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width = device-width, initial-scale = 1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
</head>

<body>
	<br><br><br><br><br>
	<p class="w3-left" style="padding-left: 30px;"></p>
	<div class="w3-container">
		<center>
			<b>글삭제</b><br>
			<form method="POST" name="delForm"
				action="deletePro?pageNum=${pageNum }"
				onsubmit="return deleteSave()">
				<table class = "w3-table-all " style = "width:20%;">
					<tr height="30" class=w3-white>
						<td align="center"><b>비밀번호를 입력해 주세요.</b></td>
					</tr>
					<tr height="30" class=w3-white>
						<td align="center">비밀번호: <input type="password" name="passwd"
							size="8" maxlength="12"> <input type="hidden" name="num"
							value="${num }">
						</td>
					</tr>
					<tr height="30" class=w3-white>
						<td align="center">
							<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "submit">
						글삭제</button>
							<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "button"
							onclick="document.location.href = 'list?pageNum=${pageNum}'">
						글목록</button>
						</td>
					</tr>
				</table>
			</form>
		</center>
	</div>
</body>
</html>

