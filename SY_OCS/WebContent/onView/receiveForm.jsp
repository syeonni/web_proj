<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="/SY_OCS/ajax/httpRequest.js"></script>
<script type="text/javascript">
   function getText(name, value) {
      //alert(value);
      document.getElementById('suser_name').value = value;
      divid=document.getElementById(name);
      var params="";
      if(name=="si"){
         si=value;
         params="si="+encodeURIComponent(value);
         divid=document.getElementById("gu");
      }else{
         return ;
      }
      //alert(params);
      sendRequest("/SY_OCS/ajax/selector.jsp", params, returnText, "GET");
   }

   function returnText() {
      if (httpRequest.readyState == 4) {
         if (httpRequest.status == 200) {
            //alert("�������� : " + httpRequest.responseText);
            divid.innerHTML=httpRequest.responseText;   
         }
      }
   }
   
</script>

<body>
	<br>
	<br>
	<br>
	<br>
	<h5>
		<i class="fa fa-chevron-right "></i>����ȯ�� �˻�����Ʈ
	</h5>
	<div class="w3-display-container w3-border" style="height: 300px; overflow:scroll; padding:10px;">
		<form method="post" name="searchPro" action="/SY_OCS/on/searchPro">
			<div class="w3-display-topright">
				<input class="w3-radio " type="radio" name="search_condition"
					value="patient_num" checked> 
					<label>ȯ�� ��ȣ</label> 
					<input
					class="w3-radio " type="radio" name="search_condition"
					value="patient_name"> 
					<label>�̸�</label> 
					<input
					class="w3-radio " type="radio" name="search_condition"
					value="patient_jumin"> 
					<label>�������</label> 
					<input
					type="text" name="search_input" style="height: 30px;">
					<button class="w3-button w3-black w3-round-xlarge" type="submit">
					<i class="fa fa-search"></i> �˻�
				</button>
			</div>
		</form>

		<div class="w3-display-middle w3-display-left w3-display-right">
			<table class="w3-table-all w3-centered">
				<tr class="w3-black ">
					<th style="width: 100px;">ȯ��ID</th>
					<th style="width: 200px;">ȯ�ڸ�</th>
					<th style="width: 200px;">�ֹι�ȣ</th>
					<th style="width: 100px;">����</th>
					<th style="width: 100px;">����</th>
					<th style="width: 350px;">�ּ�</th>
					<th style="width: 200px;">�޴�����ȣ</th>
					<th style="width: 200px;">����</th>
				</tr>
				<c:if test="${pCount==0}">

					<table class="table-bordered" width="700">
						<tr class="w3-gray">
							<td align="center">ȯ����ȸ x</td>
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
							<th><button class="w3-button w3-black" name="${status.count}" onclick="location.href='/SY_OCS/on/choice?patient_id=${patient.patient_id}'">
									<i class="fa fa-check "></i> ����
								</button></th>
						</tr>
				</c:forEach>
				</c:if>
			</table>
			
		</div>

	</div>


	<div class="w3-cell-row">

		<div class="w3-container  w3-cell">
			<h5>
				<i class="fa fa-chevron-right "></i>ȯ�� ����
			</h5>
			<form method="post" name="receivForm" action="/SY_OCS/on/recivePro">
				<input type="hidden" id='suser_name'
							name='suser_name'  style="width: 60px" >
			<table class="w3-table-all w3-centered">
				<tr>
					<th class="w3-black " style="height: 20px; width: 100px">ȯ�ڹ�ȣ</th>
					<td class="w3-white "><input class="w3-input" type="text"
						name="patient_id" value=${choicPatient.patient_id }></td>
					<th class="w3-black " style="height: 20px; width: 100px">�̸�</th>
					<td class="w3-white "><input class="w3-input" type="text"
						name="patient_name" value=${choicPatient.patient_name }></td>
				</tr>
				<tr>
					<th class="w3-black ">�ֹι�ȣ</th>
					<td class="w3-white "><input class="w3-input" type="text"
						name="patient_jumin" value=${choicPatient.jumin1 }-${choicPatient.jumin }></td>
				</tr>
				<tr>
					<th class="w3-black ">����</th>
					<td class="w3-white "><input class="w3-input" type="text"
						name="patient_sex" value=${choicPatient.patient_sex }></td>
					<th class="w3-black ">����</th>
					<td class="w3-white "><input class="w3-input" type="text"
						name="patient_age" value=${choicPatient.patient_age }></td>
				</tr>
				<tr>
					<th class="w3-black ">����/����</th>
					<td class="w3-white "><input class="w3-input" type="text"
						name="patient_fr" value=${choicfr}></td>
					<th class="w3-black ">�޴�����ȣ</th>
					<td class="w3-white "><input class="w3-input" type="text"
						name="patient_phone" value=${choicPatient.patient_phone }></td>
				</tr>
				<tr>
					<th class="w3-black " style="height: 200px;">Ư�̻���</th>
					<td colspan="3" class="w3-white "><input type="text"
						name="patient_unusual" style="height: 200px; width: 600px"
						value=${choicPatient.patient_unusual }></td>
				</tr>
			</table>

		</div>

		<div class="w3-container  w3-cell">
			<h5>
				<i class="fa fa-chevron-right "></i>�ǻ� ����
			</h5>
			
				<table class="w3-table-all w3-centered">
					<tr>
						<th class="w3-black " style="height: 20px; width: 100px">����μ�</th>
						<td class="w3-white ">
							<div id="si">
   								<jsp:include page="/ajax/selector.jsp"/>
  							</div>
						</td>
					</tr>
					<tr>
						<th class="w3-black " style="height: 20px; width: 100px">�����ǻ�</th>
						<td class="w3-white ">
							<div id="gu">
   								<select name="guName" >
   								<option value="�����ǻ縦 �����ϼ���">�����ǻ縦 �����ϼ���</option>
   								</select>
  							</div>
						</td>
					</tr>
					<tr>
						<th class="w3-black " style="height: 20px; width: 100px">�����з�</th>
						<td class="w3-white ">
							<input class="w3-radio" type="radio" name="patient_fr" value="f" checked>
							<label>����  </label>
							<input class="w3-radio" type="radio" name="patient_fr" value="r">
							<label>����</label>
						</td>
					</tr>
					<tr>
						<th class="w3-black " style="height: 20px; width: 100px">�������</th>
						<td class="w3-white "><input type="text"
							name="patient_unusual" style="height: 180px; width: 450px">
						</td>
					</tr>
					<tr>
						<td colspan="3" class="w3-white "><input
							class="w3-button w3-black w3-round-xlarge" type="submit" value="�����ϱ�"></td>
					</tr>
				</table>
			</form>
		</div>

	</div>

	</div>
</body>
</html>