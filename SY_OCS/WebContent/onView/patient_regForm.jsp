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
			alert("ȯ�� �̸��� �Է��ϼ���");
			patient_regForm.patient_name.focus();
			return false;
		}
		if(!patient_regForm.patient_jumin.value){
			alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���");
			patient_regForm.patient_jumin.focus();
			return false;
		}
		if(!patient_regForm.patient_jumin1.value){
			alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���");
			patient_regForm.patient_jumin1.focus();
			return false;
		}

		if(!patient_regForm.address2.value){
			alert("�ּҸ� �Է��ϼ���");
			patient_regForm.address2.focus();
			return false;
		}
		
		if(!patient_regForm.patient_phone.value){
			alert("��ȭ��ȣ�� �Է��ϼ���");
			patient_regForm.patient_phone.focus();
			return false;
		}
		
		if(!patient_regForm.patient_btype2.value){
			alert("�������� �����ϼ���");
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
							size="+1"><b>ȯ�� ���</b></font><br><br></td>
					</tr>

					<tr>
						<td width="200"><br>ȯ�� �̸�</td>
						<td width="400"><br><input type="text" name="patient_name" size="15"
							maxlength="10"></td>
					</tr>
					<tr>
						<td width="200">�ֹε�Ϲ�ȣ</td>
						<td width="400"><input type="text" name="jumin1" size="7"
							maxlength="6"> -<input type="text" name="jumin" size="7"
							maxlength="7"></td>
					</tr>
					
					<tr>
						<td width="200">����</td>
						<td width="400">
						<input class="w3-radio" type="radio" name="patient_sex" value="M" checked>
						<label>����  </label>
						<input class="w3-radio" type="radio" name="patient_sex" value="W">
						<label>����</label>
					</td>
					</tr>
					
					<tr>
						<td width="200">����</td>
						<td width="400">
							<input type="text" name="patient_age" size="5" maxlength="10"> ��
						</td>
					</tr>

					<tr>
						<td scope="row" rowspan="3"><label for="zipNo">�ּ�</label></td>
						<td class="bg_none"><input type="text" id='zipNo1'
							name='zipNo1' readonly="readonly" style="width: 60px" />
							-<input type="text" id='zipNo2' name='zipNo2' readonly="readonly"
							style="width: 60px" ></input> <input type="button"
							onclick="openDaumPostcode()" value="�����ȣ ã��"></td>
					</tr>
					<tr>
						<td class="bg_none"><label for="address1" class="tts">�õ�����
								�Է�</label>&nbsp;&nbsp;<input type="text" id="address1" name="address1"
							readonly="readonly" style="width: 340px; margin-right: 5px"
							value="" />(��/��, ��/��/��, ��/��/��)</td>
					</tr>
					<tr>
						<td><label for="address2" class="tts">���ּ�
								�Է�&nbsp;&nbsp;</label><input type="text" id="address2" name="address2"
							style="width: 340px; margin-right: 5px" value="" />(���ּҸ�
							�Է����ּ���.)</td>
					</tr>
					
					<tr>
						<td width="200">��ȭ��ȣ</td>
						<td width="400">
							<input type="text" name="patient_phone" size="20" maxlength="10"> 
						</td>
					</tr>
					
					<tr>
						<td width="200">������</td>
						<td width="400">
							RH
							<input class="w3-radio" type="radio" name="patient_btype1" value="+" checked>
							<label>+  </label>
							<input class="w3-radio" type="radio" name="patient_btype1" value="-">
							<label>- </label>
							
							<select class="w3-select" name="patient_btype2">
							  <option value="" disabled selected>�������� �����ϼ���.</option>
							  <option value="A">A��</option>
							  <option value="B">B��</option>
							  <option value="AB">AB��</option>
							  <option value="O">O��</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td width="200">Ư�̻���</td>
						<td width="400">
							<textarea name = "patient_unusual" rows = "3" cols = "70"></textarea>
						</td>
					</tr>
					
					<tr height = "30">
						<td width="200">���豸��</td>
						<td width="400" >
							<input type="text" name="patient_itype" size="20" maxlength="10"> 
						</td>
					</tr>
					
					<tr>
						
						<td colspan="2" class="w3-center ">
							<br><br>
							<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "submit">���</button>
							<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "reset">�ٽ��Է�</button>
							<button class="w3-button w3-section w3-teal w3-black w3-round-xlarge" type = "button" onclick="javascript:window.location='main.jsp'">���Ծ���</button>
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