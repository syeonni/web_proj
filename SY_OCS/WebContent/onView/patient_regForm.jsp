<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
	function checkIt(){
		var patient_regForm = eval("document.patient_regForm");
		
		if(!patient_regForm.patient_name.value){
			alert("환자 이름을 입력하세요");
			patient_regForm.patient_name.focus();
			return false;
		}
		if(!patient_regForm.patient_jumin.value){
			alert("주민등록번호를 입력하세요");
			patient_regForm.patient_jumin.focus();
			return false;
		}
		if(!patient_regForm.patient_jumin1.value){
			alert("주민등록번호를 입력하세요");
			patient_regForm.patient_jumin1.focus();
			return false;
		}

		if(!patient_regForm.address2.value){
			alert("주소를 입력하세요");
			patient_regForm.address2.focus();
			return false;
		}
		
		if(!patient_regForm.patient_phone.value){
			alert("전화번호를 입력하세요");
			patient_regForm.patient_phone.focus();
			return false;
		}
		
		if(!patient_regForm.patient_btype2.value){
			alert("혈액형을 선택하세요");
			patient_regForm.patient_btype2.focus();
			return false;
		}
		  
	}
	
</script>
</head>
<body>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

	
	<div
		class="bgimg w3-display-container w3-animate-opacity w3-text-white">
		
		<div class="w3-display-middle w3-white w3-padding-zero" >
		
			
			<form class="w3-container w3-card-5 w3-border" method = "post" name = "patient_regForm" action="patient_regPro"
				onSubmit="return checkIt()">
				<table>
					
					<tr>
						<td colspan="2" height="39" class="w3-large w3-center"><font
							size="+1"><b>환자 등록</b></font><br><br></td>
					</tr>

					<tr>
						<td width="200"><br>환자 이름</td>
						<td width="400"><br><input type="text" name="patient_name" size="15"
							maxlength="10"></td>
					</tr>
					<tr>
						<td width="200">주민등록번호</td>
						<td width="400"><input type="text" name="jumin1" size="7"
							maxlength="6"> -<input type="text" name="jumin" size="7"
							maxlength="7"></td>
					</tr>
					
					<tr>
						<td width="200">성별</td>
						<td width="400">
						<input class="w3-radio" type="radio" name="patient_sex" value="M" checked>
						<label>남자  </label>
						<input class="w3-radio" type="radio" name="patient_sex" value="W">
						<label>여자</label>
					</td>
					</tr>
					
					<tr>
						<td width="200">나이</td>
						<td width="400">
							<input type="text" name="patient_age" size="5" maxlength="10"> 세
						</td>
					</tr>

					<tr>
						<td scope="row" rowspan="3"><label for="zipNo">주소</label></td>
						<td class="bg_none"><input type="text" id='zipNo1'
							name='zipNo1' readonly="readonly" style="width: 60px" />
							-<input type="text" id='zipNo2' name='zipNo2' readonly="readonly"
							style="width: 60px" ></input> <input type="button"
							onclick="openDaumPostcode()" value="우편번호 찾기"></td>
					</tr>
					<tr>
						<td class="bg_none"><label for="address1" class="tts">시도군구
								입력</label>&nbsp;&nbsp;<input type="text" id="address1" name="address1"
							readonly="readonly" style="width: 340px; margin-right: 5px"
							value="" />(시/도, 구/군/읍, 면/동/리)</td>
					</tr>
					<tr>
						<td><label for="address2" class="tts">상세주소
								입력&nbsp;&nbsp;</label><input type="text" id="address2" name="address2"
							style="width: 340px; margin-right: 5px" value="" />(상세주소를
							입력해주세요.)</td>
					</tr>
					
					<tr>
						<td width="200">전화번호</td>
						<td width="400">
							<input type="text" name="patient_phone" size="20" maxlength="10"> 
						</td>
					</tr>
					
					<tr>
						<td width="200">혈액형</td>
						<td width="400">
							RH
							<input class="w3-radio" type="radio" name="patient_btype1" value="+" checked>
							<label>+  </label>
							<input class="w3-radio" type="radio" name="patient_btype1" value="-">
							<label>- </label>
							
							<select class="w3-select" name="patient_btype2">
							  <option value="" disabled selected>혈액형을 선택하세요.</option>
							  <option value="A">A형</option>
							  <option value="B">B형</option>
							  <option value="AB">AB형</option>
							  <option value="O">O형</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td width="200">특이사항</td>
						<td width="400">
							<textarea name = "patient_unusual" rows = "3" cols = "70"></textarea>
						</td>
					</tr>
					
					<tr height = "30">
						<td width="200">보험구분</td>
						<td width="400" >
							<input type="text" name="patient_itype" size="20" maxlength="10"> 
						</td>
					</tr>
					
					<tr>
						
						<td colspan="2" class="w3-center ">
							<br><br>
							<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "submit">등록</button>
							<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "reset">다시입력</button>
							<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "button" onclick="javascript:window.location='main.jsp'">가입안함</button>
							<br><br>
						</td>
					</tr>

				</table>
			</form>
		</div>
	</div>

</body>
</html>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js">
</script>
<script>
function openDaumPostcode(){
   new daum.Postcode({
      oncomplete: function(data){
         document.getElementById('zipNo1').value=data.postcode1;
         document.getElementById('zipNo2').value=data.postcode2;
         document.getElementById('address1').value=data.address;
         document.getElementById('address2').focus();
      }}).open();
}
</script>