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
		//ajax 를 이용해서 DATABASE 에서 idx 해당하는 내용을 지우도록 요청한다.

		if (!confirm("삭제하시겠습니까?"))
			return;

		// 이 부분은 seobangnim.com 의 소스를 완전참조했습니다.
		// http://seobangnim.com/zbxe/?document_srl=15893

		var lo_this = window.event.srcElement; // 이벤트가 발생한 객체가져 옴 여기선 버튼 이겠지?
		var lo_table = lo_this.parentNode.parentNode.parentNode //버튼으로 부터 위로 4번째 객체는 테이블이지 
		var li_row_index = lo_this.parentNode.parentNode.rowIndex; // 버튼으로 부터 위로 2번째니깐 TR 이겠지 그 TR 의 INDEX 값
		lo_table.deleteRow(li_row_index); // 위에서 찾은 인덱스에 해당하는 TR 을 삭제하라...
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
				<i class="fa fa-chevron-right "></i>환자 정보
			</h5>
			<input type="hidden" value="${c_receive_id}">
			<table class="w3-table-all w3-centered ">
				<tr>
					<th class="w3-black" style="width: 50px;">환자번호</th>
					<td class="w3-white" style="width: 50px;">${choicPatient.patient_id }</td>
					<th class="w3-black" style="width: 50px;">이름</th>
					<td class="w3-white" style="width: 50px;">${choicPatient.patient_name }</td>
					<th class="w3-black" style="width: 50px;">주민번호</th>
					<td class="w3-white" style="width: 50px;">${choicPatient.jumin1 }-${choicPatient.jumin }</td>
					<th class="w3-black" style="width: 50px;">성별</th>
					<td class="w3-white" style="width: 50px;">${choicPatient.patient_sex }</td>

				</tr>
				<tr>
					<th class="w3-black" style="width: 50px;">혈액형</th>
					<td class="w3-white" style="width: 50px;">${choicPatient.patient_btype }</td>
					<th class="w3-black" style="width: 50px;">주소</th>
					<td colspan="5" class="w3-white" style="width: 50px;">${choicPatient.patient_address }</td>
				</tr>
				<tr>
					<th class="w3-black" style="width: 50px;">특이사항</th>
					<td colspan="7" class="w3-white">${choicPatient.patient_unusual }</td>
				</tr>
			</table>
		</div>

		<div class="w3-container  w3-cell w3-border"
			style="height: 300px; overflow: scroll; padding: 10px;">
			<h5>
				<i class="fa fa-chevron-right "></i>환자 대기 리스트
			</h5>
			<table class="w3-table-all w3-centered">
				<tr class="w3-black ">
					<th style="width: 50px;">NO</th>
					<th style="width: 50px;">접수번호</th>
					<th style="width: 70px;">환자명</th>
					<th style="width: 100px;">접수날짜</th>
					<th style="width: 50px;">초진/재진</th>
					<th style="width: 50px;">선택</th>
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
								<i class="fa fa-check "></i> 선택
							</button></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

	<div class="w3-cell-row">
		<div class="w3-container  w3-cell w3-border">
			<h5>
				<i class="fa fa-chevron-right "></i>과거 진료 내역
			</h5>
			<div class="w3-row">
				<a href="javascript:void(0)" onclick="openCity(event, '상병');">
					<div
						class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">상병</div>
				</a> <a href="javascript:void(0)" onclick="openCity(event, '약');">
					<div
						class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">약</div>
				</a> <a href="javascript:void(0)" onclick="openCity(event, '검사');">
					<div
						class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">검사</div>
				</a>
			</div>

			<div id="상병" class="w3-container city">
				<h2>상병</h2>
				<table class="w3-table w3-bordered w3-centered">
					<tr class="w3-black ">
						<th style="width: 100px;">NO</th>
						<th style="width: 100px;">주</th>
						<th style="width: 100px;">R/O</th>
						<th style="width: 100px;">코드</th>
						<th style="width: 300px;">이름</th>
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

			<div id="약" class="w3-container city" style="display: none">
				<h2>약</h2>
				<table class="w3-table w3-bordered w3-centered">
					<tr class="w3-black ">
						<th style="width: 100px;">NO</th>
						<th style="width: 150px;">약품코드</th>
						<th style="width: 300px;">약품명</th>
						<th style="width: 200px;">총 투약일수</th>
						<th style="width: 200px;">1회 투여량</th>
						<th style="width: 200px;">1일 투여량</th>
						<th style="width: 100px;">날짜</th>
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

			<div id="검사" class="w3-container city" style="display: none">
				<h2>검사</h2>
				<table class="w3-table w3-bordered w3-centered">
					<tr class="w3-black ">
						<th style="width: 50px;">NO</th>
						<th style="width: 50px;">검사코드</th>
						<th style="width: 150px;">검사이름</th>
						<th style="width: 100px;">판독결과</th>
						<th style="width: 100px;">이미지</th>
						<th style="width: 150px;">날짜</th>
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
					<i class="fa fa-chevron-right "></i>처방 목록
				</h5>
				<div>

					<button onclick="openDisease(this.form)" name="disease"
						class="w3-button w3-black w3-round-xlarge" type="button">
						<i class="fa  fa-h-square "></i> 상병 처방
					</button>


					<button onclick="openMedicine(this.form)" name="medicine"
						class="w3-button w3-black w3-round-xlarge" type="button">
						<i class="fa  fa-medkit  "></i> 약 처방
					</button>

					<button onclick="openInjection(this.form)" name="injection"
						class="w3-button w3-black w3-round-xlarge" type="button">
						<i class="fa  fa-user-md "></i> 검사 처방
					</button>
					<label> </label> <i class="fa  fa-caret-right fa-2x"></i> <i
						class="fa  fa-caret-right fa-2x"></i> <i
						class="fa  fa-caret-right fa-2x"></i><label> </label>
					<button class="w3-button w3-black w3-round-xlarge" type="submit">처방하기</button>
				</div>
				<br>

				<div id="preList" style="height: 300px; width: 600px">
					<h6>
						<i class="fa fa-chevron-right "></i>상병 처방 정보
					</h6>
					<table id="diseaseTable"
						class="w3-table w3-bordered-top w3-border-bottom w3-centered">
						<tr class="w3-border-top w3-border-bottom ">
							<th style="width: 100px;">주</th>
							<th style="width: 100px;">R/O</th>
							<th style="width: 100px;">코드</th>
							<th style="width: 400px;">이름</th>
							<th style="width: 100px;">삭제</th>
						</tr>
					</table>
					<h6>
						<i class="fa fa-chevron-right "></i>약 처방 정보
					</h6>
					<table id="drugTable"
						class="w3-table w3-bordered-top w3-border-bottom w3-centered">
						<tr class="w3-border-top w3-border-bottom ">
							<th style="width: 200px;">약품코드</th>
							<th style="width: 400px;">약품명</th>
							<th style="width: 250px;">총 투약일수</th>
							<th style="width: 200px;">1회 투여량</th>
							<th style="width: 200px;">1일 투여량</th>
							<th style="width: 100px;">삭제</th>
						</tr>
					</table>
					<h6>
						<i class="fa fa-chevron-right "></i>검사 처방 정보
					</h6>
					<table id="injecTable"
						class="w3-table w3-bordered-top w3-border-bottom w3-centered">
						<tr class="w3-border-top w3-border-bottom ">
							<th style="width: 100px;">검사코드</th>
							<th style="width: 400px;">이름</th>
							<th style="width: 100px;">삭제</th>
						</tr>
					</table>
				</div>

			</div>
		</form>
	</div>


</body>
</html>