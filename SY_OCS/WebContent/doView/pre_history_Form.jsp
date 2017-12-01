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
	<h5>
		<i class="fa fa-chevron-right "></i>환자 처방 리스트
	</h5>
	<div class="w3-display-container w3-border"
		style="height: 800px; overflow: scroll; padding: 10px;">
		<form method="post" name="searchPro" action="/SY_OCS/do/searchPro">
			<div class="w3-display-topright">

				<label>이름</label> <input type="text" name="search_input"
					style="height: 30px;">
				<button class="w3-button w3-black w3-round-xlarge" type="submit">
					<i class="fa fa-search"></i> 검색
				</button>
			</div>
		</form>

		<div>
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
								href="<%=request.getContextPath() %>/fileSave/${inPrecription.image }" target="_blank">${inPrecription.image }</a></td>
							<td>${inPrecription.upload_date }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>

	</div>

</body>
</html>