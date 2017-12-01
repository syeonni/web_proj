<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:if test="${check==1}">
	<c:if test="${staff.depart_id==3}">
		<meta http-equiv="Refresh" content="0;url=/SY_OCS/on/receiveForm">
	</c:if>
	<c:if test="${staff.depart_id==4}">
		<meta http-equiv="Refresh" content="0;url=/SY_OCS/do/pre_imageFormUpload_Form">
	</c:if>
	<c:if test="${staff.depart_id!=3}">
		<c:if test="${staff.depart_id!=4}">
			<meta http-equiv="Refresh" content="0;url=/SY_OCS/do/prescriptionForm">
		</c:if>
	</c:if>

</c:if>
<c:if test="${check==0}">
	<script language="JavaScript">
		alert("비밀번호가 맞지 않습니다.");
		history.go(-1);
	</script>
</c:if>
<c:if test="${check==-1}">
	<script language="JavaScript">
		alert("해당 아이디가 존재하지 않습니다.");
		history.go(-1);
	</script>
</c:if>