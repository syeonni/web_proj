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
<script>
	function openDisease(userinput) {
		url = "disease";

		open(url, "confirm",
				"toolbar = no,location=no, status= no, menubar = no,"
						+ "resizable=no, width = 400, height = 600");
	}
	function openMedicine(userinput) {

		url = "medicine";

		open(url, "confirm",
				"toolbar = no,location=no, status= no, menubar = no,"
						+ "resizable=no, width = 400, height = 600");
	}
	function openInjection(userinput) {

		url = "injection";

		open(url, "confirm",
				"toolbar = no,location=no, status= no, menubar = no,"
						+ "resizable=no, width = 400, height = 600");
	}

	function remove_this() {
		//ajax �� �̿��ؼ� DATABASE ���� idx �ش��ϴ� ������ ���쵵�� ��û�Ѵ�.

		if (!confirm("�����Ͻðڽ��ϱ�?"))
			return;

		// �� �κ��� seobangnim.com �� �ҽ��� ���������߽��ϴ�.
		// http://seobangnim.com/zbxe/?document_srl=15893

		var lo_this = window.event.srcElement; // �̺�Ʈ�� �߻��� ��ü���� �� ���⼱ ��ư �̰���?
		var lo_table = lo_this.parentNode.parentNode.parentNode //��ư���� ���� ���� 4��° ��ü�� ���̺����� 
		var li_row_index = lo_this.parentNode.parentNode.rowIndex; // ��ư���� ���� ���� 2��°�ϱ� TR �̰��� �� TR �� INDEX ��
		lo_table.deleteRow(li_row_index); // ������ ã�� �ε����� �ش��ϴ� TR �� �����϶�...
	}

	function openCity(evt, cityName) {
		var i, x, tablinks;
		x = document.getElementsByClassName("city");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablink");
		for (i = 0; i < x.length; i++) {
			tablinks[i].className = tablinks[i].className.replace(
					" w3-border-red", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.firstElementChild.className += " w3-border-red";
	}
</script>
<body>
	<br>
	<br>
	<br>
	<br>
	<div class="w3-cell-row">
		<div class="w3-container  w3-cell w3-border"
			style="height: 300px; overflow: padding: 10px;">
			<h5>
				<i class="fa fa-chevron-right "></i>ȯ�� ����
			</h5>
			<input type="hidden" value="${c_receive_id}">
			<table class="w3-table-all w3-centered ">
				<tr>
					<th class="w3-black" style="width: 50px;">ȯ�ڹ�ȣ</th>
					<td class="w3-white" style="width: 50px;">${choicPatient.patient_id }</td>
					<th class="w3-black" style="width: 50px;">�̸�</th>
					<td class="w3-white" style="width: 50px;">${choicPatient.patient_name }</td>
					<th class="w3-black" style="width: 50px;">�ֹι�ȣ</th>
					<td class="w3-white" style="width: 50px;">${choicPatient.jumin1 }-${choicPatient.jumin }</td>
					<th class="w3-black" style="width: 50px;">����</th>
					<td class="w3-white" style="width: 50px;">${choicPatient.patient_sex }</td>

				</tr>
				<tr>
					<th class="w3-black" style="width: 50px;">������</th>
					<td class="w3-white" style="width: 50px;">${choicPatient.patient_btype }</td>
					<th class="w3-black" style="width: 50px;">�ּ�</th>
					<td colspan="5" class="w3-white" style="width: 50px;">${choicPatient.patient_address }</td>
				</tr>
				<tr>
					<th class="w3-black" style="width: 50px;">Ư�̻���</th>
					<td colspan="7" class="w3-white">${choicPatient.patient_unusual }</td>
				</tr>
			</table>
		</div>

		<div class="w3-container  w3-cell w3-border"
			style="height: 300px; overflow: scroll; padding: 10px;">
			<h5>
				<i class="fa fa-chevron-right "></i>ȯ�� ��� ����Ʈ
			</h5>
			<table class="w3-table-all w3-centered">
				<tr class="w3-black ">
					<th style="width: 50px;">NO</th>
					<th style="width: 50px;">������ȣ</th>
					<th style="width: 70px;">ȯ�ڸ�</th>
					<th style="width: 100px;">������¥</th>
					<th style="width: 50px;">����/����</th>
					<th style="width: 50px;">����</th>
				</tr>

				<c:forEach var="receive" items="${receiveList}" varStatus="status">
					<tr class="w3-white" height="30">
						<td>${status.count}</td>
						<td>${receive.receive_id }</td>
						<td>${receive.patient_id }</td>
						<td>${receive.receive_date }</td>
						<td>${receive.fmyn }</td>
						<td><button class="w3-button w3-black w3-round-xlarge"
								onclick="location.href='/SY_OCS/do/choice?receive_id=${receive.receive_id}'">
								<i class="fa fa-check "></i> ����
							</button></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

	<div class="w3-cell-row">
		<div class="w3-container  w3-cell w3-border">
			<h5>
				<i class="fa fa-chevron-right "></i>���� ���� ����
			</h5>
			<div class="w3-row">
				<a href="javascript:void(0)" onclick="openCity(event, '��');">
					<div
						class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">��</div>
				</a> <a href="javascript:void(0)" onclick="openCity(event, '��');">
					<div
						class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">��</div>
				</a> <a href="javascript:void(0)" onclick="openCity(event, '�˻�');">
					<div
						class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">�˻�</div>
				</a>
			</div>

			<div id="��" class="w3-container city">
				<h2>��</h2>
				<table class="w3-table w3-bordered w3-centered">
					<tr class="w3-black ">
						<th style="width: 100px;">NO</th>
						<th style="width: 100px;">��</th>
						<th style="width: 100px;">R/O</th>
						<th style="width: 100px;">�ڵ�</th>
						<th style="width: 300px;">�̸�</th>
					</tr>
					<c:forEach var="diPrecription" items="${diPrecriptionList}"
						varStatus="status">
						<tr class="w3-white" height="30">
							<td>${status.count}</td>
							<td>${diPrecription.maindisesyn }</td>
							<td>${diPrecription.ro_yn }</td>
							<td>${diPrecription.disease_id }</td>
							<td>${diPrecription.receive_id }</td>
						</tr>
					</c:forEach>
				</table>

			</div>

			<div id="��" class="w3-container city" style="display: none">
				<h2>��</h2>
				<table class="w3-table w3-bordered w3-centered">
					<tr class="w3-black ">
						<th style="width: 100px;">NO</th>
						<th style="width: 150px;">��ǰ�ڵ�</th>
						<th style="width: 300px;">��ǰ��</th>
						<th style="width: 200px;">�� �����ϼ�</th>
						<th style="width: 200px;">1ȸ ������</th>
						<th style="width: 200px;">1�� ������</th>
						<th style="width: 100px;">��¥</th>
					</tr>
					<c:forEach var="drPrecription" items="${drPrecriptionList}"
						varStatus="status">
						<tr class="w3-white" height="30">
							<td>${status.count}</td>
							<td>${drPrecription.drug_id }</td>
							<td>${drPrecription.receive_id }</td>
							<td>${drPrecription.days }</td>
							<td>${drPrecription.one_dosage }</td>
							<td>${drPrecription.day_dosage }</td>
							<td>${drPrecription.prescription_date }</td>
						</tr>
					</c:forEach>
				</table>

			</div>

			<div id="�˻�" class="w3-container city" style="display: none">
				<h2>�˻�</h2>
				<table class="w3-table w3-bordered w3-centered">
					<tr class="w3-black ">
						<th style="width: 50px;">NO</th>
						<th style="width: 50px;">�˻��ڵ�</th>
						<th style="width: 150px;">�˻��̸�</th>
						<th style="width: 100px;">�ǵ����</th>
						<th style="width: 100px;">�̹���</th>
						<th style="width: 150px;">��¥</th>
					</tr>
					<c:forEach var="inPrecription" items="${inPrecriptionList}"
						varStatus="status">
						<tr class="w3-white" height="30">
							<td>${status.count}</td>
							<td>${inPrecription.injec_id }</td>
							<td>${inPrecription.user_id }</td>
							<td>${inPrecription.opinion }</td>
							<td><a
								href="<%=request.getContextPath() %>/fileSave/${inPrecription.image }" target="_blank">${inPrecription.image } </a></td>
							<td>${inPrecription.upload_date }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>

		<form method="post" name="receivForm"
			action="/SY_OCS/do/prescriptionPro?receive_id=${c_receive_id}">
			<div class="w3-container  w3-cell">
				<h5>
					<i class="fa fa-chevron-right "></i>ó�� ���
				</h5>
				<div>

					<button onclick="openDisease(this.form)" name="disease"
						class="w3-button w3-black w3-round-xlarge" type="button">
						<i class="fa  fa-h-square "></i> �� ó��
					</button>


					<button onclick="openMedicine(this.form)" name="medicine"
						class="w3-button w3-black w3-round-xlarge" type="button">
						<i class="fa  fa-medkit  "></i> �� ó��
					</button>

					<button onclick="openInjection(this.form)" name="injection"
						class="w3-button w3-black w3-round-xlarge" type="button">
						<i class="fa  fa-user-md "></i> �˻� ó��
					</button>
					<label> </label> <i class="fa  fa-caret-right fa-2x"></i> <i
						class="fa  fa-caret-right fa-2x"></i> <i
						class="fa  fa-caret-right fa-2x"></i><label> </label>
					<button class="w3-button w3-black w3-round-xlarge" type="submit">ó���ϱ�</button>
				</div>
				<br>

				<div id="preList" style="height: 300px; width: 600px">
					<h6>
						<i class="fa fa-chevron-right "></i>�� ó�� ����
					</h6>
					<table id="diseaseTable"
						class="w3-table w3-bordered-top w3-border-bottom w3-centered">
						<tr class="w3-border-top w3-border-bottom ">
							<th style="width: 100px;">��</th>
							<th style="width: 100px;">R/O</th>
							<th style="width: 100px;">�ڵ�</th>
							<th style="width: 400px;">�̸�</th>
							<th style="width: 100px;">����</th>
						</tr>
					</table>
					<h6>
						<i class="fa fa-chevron-right "></i>�� ó�� ����
					</h6>
					<table id="drugTable"
						class="w3-table w3-bordered-top w3-border-bottom w3-centered">
						<tr class="w3-border-top w3-border-bottom ">
							<th style="width: 200px;">��ǰ�ڵ�</th>
							<th style="width: 400px;">��ǰ��</th>
							<th style="width: 250px;">�� �����ϼ�</th>
							<th style="width: 200px;">1ȸ ������</th>
							<th style="width: 200px;">1�� ������</th>
							<th style="width: 100px;">����</th>
						</tr>
					</table>
					<h6>
						<i class="fa fa-chevron-right "></i>�˻� ó�� ����
					</h6>
					<table id="injecTable"
						class="w3-table w3-bordered-top w3-border-bottom w3-centered">
						<tr class="w3-border-top w3-border-bottom ">
							<th style="width: 100px;">�˻��ڵ�</th>
							<th style="width: 400px;">�̸�</th>
							<th style="width: 100px;">����</th>
						</tr>
					</table>
				</div>

			</div>
		</form>
	</div>


</body>
</html>