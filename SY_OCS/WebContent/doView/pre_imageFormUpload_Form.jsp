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
	<h5>
		
	</h5>
	<div class="w3-cell-row">
	<div class="w3-container  w3-cell w3-border"
			style="height: 600px; overflow: scroll; padding: 10px;">
			<h5>
				<i class="fa fa-chevron-right "></i>ȯ�� �˻� ����Ʈ
			</h5>
			<table class="w3-table-all w3-centered">
				<tr class="w3-black ">
					<th style="width: 50px;">NO</th>
					<th style="width: 50px;">ó���ȣ</th>
					<th style="width: 50px;">ȯ�ڹ�ȣ</th>
					<th style="width: 100px;">�̸�</th>
					<th style="width: 50px;">����</th>
					<th style="width: 150px;">�ֹι�ȣ</th>
					<th style="width: 50px;">������</th>
					<th style="width: 50px;">����</th>
				</tr>

				<c:forEach var="injection_prescription" items="${injection_prescriptionList}" varStatus="status">
					<tr class="w3-white" height="30">
						<td>${status.count}</td>
						<td>${injection_prescription.patient_age }</td>
						<td>${injection_prescription.patient_id }</td>
						<td>${injection_prescription.patient_name }</td>
						<td>${injection_prescription.patient_sex }</td>
						<td>${injection_prescription.jumin1 }-${injection_prescription.jumin}</td>
						<td>${injection_prescription.patient_btype }</td>
						<td><button class="w3-button w3-black w3-round-xlarge"
								onclick="location.href='/SY_OCS/do/injec_choice?prescription_id=${injection_prescription.patient_age}&patient_id=${injection_prescription.patient_id }&receive_id=${injection_prescription.patient_address}'">
								<i class="fa fa-check "></i> ����
							</button></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<form method = "post" name = "pre_imageFormUpload_Form" 
		action="pre_imageFormUpload_FormPro?patient_id=${patient_id}&receive_id=${receive_id}&prescription_id=${prescription_id}&injec_id=${choice_injec.injec_id }" 
		enctype = "multipart/form-data">
			<div class="w3-container  w3-cell w3-border"
				style="height: 600px; overflow: scroll; padding: 10px;">
				<h5>
					<i class="fa fa-chevron-right "></i> ȯ�� ��ȣ : ${patient_id} ���� �˻� ���
				</h5>
				
				
				
				<table class="w3-table-all w3-centered">
					<tr class="w3-black ">

						<th style="width: 100px;">�˻��ڵ�</th>
						<th style="width: 150px;">�˻��̸�</th>
						<th style="width: 100px;">���ε�</th>
					</tr>


					<tr class="w3-white" height="30">
						<td>${choice_injec.injec_id }</td>
						<td>${choice_injec.injec_name_kor }</td>
						<td><input type="file" size="40" maxlength="30"
							name="uploadfile"></td>
					</tr>
				</table>
				<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "submit">
						����ϱ�</button>
			</div>
			
		</form>
	</div>
		
</body>
</html>