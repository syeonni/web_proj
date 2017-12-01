<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<br>
	<br>
	<br>
	<br>
	<div class="w3-cell-row">
		<div class="w3-container  w3-cell w3-border"
			style="height: 300px; overflow: padding: 10px;">
			<h5>
				<i class="fa fa-chevron-right "></i>ȯ�� �˻� ��� ����
			</h5>

			<table class="w3-table-all w3-centered ">
				<tr class="w3-black ">
					<th style="width: 50px;">NO</th>
					<th style="width: 100px;">�˻���ȸ��ȣ</th>
					<th style="width: 150px;">ȯ�ڸ�</th>
					<th style="width: 150px;">�˻��̸�</th>
					<th style="width: 100px;">�̹���</th>
					<th style="width: 150px;">��¥</th>
					<th style="width: 50px;">����</th>
				</tr>
				<c:forEach var="search_test" items="${search_testList}" varStatus="status">
					<tr class="w3-white" height="30">
						<td>${status.count}</td>
						<td>${search_test.search_test_id }</td>
						<td>${search_test.patient_id }</td>
						<td>${search_test.injec_id }</td>
						<td><a href = "<%=request.getContextPath() %>/fileSave/${search_test.image }" target="_blank">${search_test.image }</a></td>
						<td>${search_test.upload_date }</td>
						<td><button class="w3-button w3-black w3-round-xlarge"
								onclick="location.href='/SY_OCS/do/choice_search_test?search_test_id=${search_test.search_test_id}&image=${search_test.image }'">
								<i class="fa fa-check "></i> ����
							</button></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
	</div>
	<form method="post" name="pre_imageSearch_Form"
			action="/SY_OCS/do/pre_imageSearch_FormPro?search_test_id=${search_test_id}">
	<div class="w3-cell-row">
		
		<div class="w3-container  w3-cell w3-border"
			style="height: 300px; width:300px; padding: 10px;">
			<h5>
				<i class="fa fa-chevron-right "></i>�˻� ���� ����
			</h5>
			<c:if test="${image!=null}">
			<img style="height: 300px; width:300px; " src="<%=request.getContextPath() %>/fileSave/${image}">
			</c:if>
		</div>
		<div class="w3-container  w3-cell w3-border"
			style="height: 300px; width:300px; padding: 10px;">
			<h5>
				<i class="fa fa-chevron-right "></i>�˻� ���� ��� �� �� �� �� �� �� �� ���� �� ���� �� ��
				<button class="w3-button w3-black w3-round-xlarge" type="submit">Ȯ��</button>
			</h5>
			
			<textarea name = "search_test_opinion" rows = "17" cols = "70"></textarea>
			
		</div>
	</div>
	</form>
</body>
</html>