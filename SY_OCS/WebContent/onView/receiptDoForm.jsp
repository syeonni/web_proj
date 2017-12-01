<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<c:set var="examinationM" value="0"  /> 
<c:set var="injectionM" value="0"  /> 
</head>
<body>
<br><br><br><br><br>

	<div class="w3-display-container w3-border" style="height: 300px; overflow:scroll; padding:10px;">
		<form method="post" name="searchPro" action="/SY_OCS/on/searchPro2">
			<div class="w3-display-topright">
				<input class="w3-radio " type="radio" name="search_condition"
					value="patient_num" checked> 
					<label>환자 번호</label> 
					<input
					class="w3-radio " type="radio" name="search_condition"
					value="patient_name"> 
					<label>이름</label> 
					<input
					class="w3-radio " type="radio" name="search_condition"
					value="patient_jumin"> 
					<label>생년월일</label> 
					<input
					type="text" name="search_input" style="height: 30px;">
					<button class="w3-button w3-black w3-round-xlarge" type="submit">
					<i class="fa fa-search"></i> 검색
				</button>
			</div>
		</form>

		<div class="w3-display-middle w3-display-left w3-display-right">
			<table class="w3-table-all w3-centered">
				<tr class="w3-black ">
					<th style="width: 100px;">환자ID</th>
					<th style="width: 200px;">환자명</th>
					<th style="width: 200px;">주민번호</th>
					<th style="width: 100px;">나이</th>
					<th style="width: 100px;">성별</th>
					<th style="width: 350px;">주소</th>
					<th style="width: 200px;">휴대폰번호</th>
					<th style="width: 200px;">선택</th>
				</tr>
				<c:if test="${pCount==0}">

					<table class="table-bordered" width="700">
						<tr class="w3-gray">
							<td align="center">환자조회 x</td>
					</table>
				</c:if>
				<c:if test="${pCount !=0}">
				<c:forEach var="patient" items="${patientList}" varStatus="status">
				   <tr class="w3-white" height="30">

							<td>${patient.patient_id}</td>
							<td>${patient.patient_name }</td>
							<td>${patient.jumin1 }-${patient.jumin}</td>
							<td>${patient.patient_age }</td>
							<td>${patient.patient_sex }</td>
							<td>${patient.patient_address }</td>
							<td>${patient.patient_phone }</td>
							<th><button class="w3-button w3-black" name="${status.count}" onclick="location.href='/SY_OCS/on/choicePatientRe?patient_id=${patient.patient_id}'">
									<i class="fa fa-check "></i> 선택
								</button></th>
						</tr>
						
				</c:forEach>
				</c:if>
			</table>
			
		</div>
		<form method="post" name="receiptForm" action="/SY_OCS/on/receiptPro">
		</form>
	</div>
	<form method="post" name="searchPro" action="/SY_OCS/on/receiptDoFormPro">
	<div class="w3-cell-row">
	
		<div class="w3-container  w3-cell w3-border"
			style="height: 500px; overflow: scroll; padding: 10px;">
			<h5>
				<i class="fa fa-chevron-right "></i>수납 리스트
			</h5>
			<table class="w3-table-all w3-centered">
				<tr class="w3-black ">
					<th style="width: 50px;">NO</th>
					<th style="width: 50px;">수납번호</th>
					<th style="width: 50px;">수가분류</th>
					<th style="width: 70px;">수가코드</th>
					<th style="width: 100px;">수가명</th>
					<th style="width: 50px;">급여</th>
					<th style="width: 50px;">단가</th>
				</tr>

				<c:forEach var="receipt" items="${receiptList}" varStatus="status">
					<tr class="w3-white" height="30">
						<td>${status.count}</td>
						<td>${receipt.receipt_id }<input type="hidden" name = "receipt_id" value="${receipt.receipt_id }"></td>
						<td>${receipt.detail_name }</td>
						<td>${receipt.suga_id }</td>
						<td>${receipt.suga_name_kor }</td>
						<td>${receipt.pay_nonpay }</td>
						<td>${receipt.patients_cost }</td>
					</tr>
					<c:if test="${receipt.detail_name eq '진찰료'}">
						<c:set var= "examinationM" value="${examinationM + receipt.patients_cost}"/>
					</c:if>
					<c:if test="${receipt.detail_name eq '검사료'}">
						<c:set var= "injectionM" value="${injectionM + receipt.patients_cost}"/>
					</c:if>
				</c:forEach>
				
				<c:set var= "sum" value="${examinationM + injectionM}"/>
				<c:set var= "sum" value="${sum * 1.3}"/>
				
				<c:set var= "my" value="${injectionM*0.6}"/>
				<c:set var= "my" value="${my+examinationM}"/>
				<c:set var= "my" value="${my*1.3}"/>
				
				<c:set var= "gong" value="${injectionM*0.4}"/>
				<c:set var= "gong" value="${gong*1.3}"/>
				
				
			</table>
		</div>
		
			<div class="w3-container  w3-cell w3-border">
			
				<h5>
					<i class="fa fa-chevron-right "></i>수납 금액　　　　　<button class="w3-button w3-black w3-round-xlarge" type="submit">수납하기</button>
					<a  href="<%=request.getContextPath() %>/common/receiptForm.jsp?sum=${sum}&patient_id=${patient_id}&examinationM=${examinationM}&injectionM=${injectionM}&my=${my}&gong=${gong}" 
					class="w3-button w3-black w3-round-xlarge" target="_blank">영수증</a>
				</h5>
				
				<table id="diseaseTable"
							class="w3-table w3-bordered-top w3-border-bottom w3-centered">
					<tr class="w3-border-top w3-border-bottom ">
						<th style="width: 70px;">항목</th>
						<th style="width: 100px;">급여</th>
					</tr>
					<tr>
						<th class="w3-border-top w3-border-bottom ">진찰료</th>
						<th><input class="w3-input"type="text" name = "examinationM" value = "${examinationM}"></th>
					</tr>
					<tr>
						<th class="w3-border-top w3-border-bottom ">입원료</th>
						<th><input class="w3-input"type="text" value="0"></th>
					</tr>
					<tr>
						<th class="w3-border-top w3-border-bottom ">식이</th>
						<th><input class="w3-input"type="text"value="0"></th>
					</tr>
					<tr>
						<th class="w3-border-top w3-border-bottom ">주사료</th>
						<th><input class="w3-input"type="text"value="0"></th>
					</tr>
					<tr>
						<th class="w3-border-top w3-border-bottom ">검사료</th>
						<th><input class="w3-input"type="text" name = "injectionM"  value = "${injectionM}"></th>
					</tr>
					<tr>
						<th class="w3-border-top w3-border-bottom "><font color="w3-teal">계</font></th>
						<th><input class="w3-input"type="text" name="sum" value = "${sum }"></th>
					</tr>
					<tr>
						<th class="w3-border-top w3-border-bottom "><font color="w3-teal">본인부담금</font></th>
						<th><input class="w3-input"type="text" name="my" value="${my }"></th>
					</tr>
					<tr>
						<th class="w3-border-top w3-border-bottom "><font color="w3-teal">공단부담금</font></th>
						<th><input class="w3-input"type="text" name = "gong" value="${gong }"></th>
					</tr>
				</table>
				
			</div>
		
	</div>
	</form>
</body>
</html>