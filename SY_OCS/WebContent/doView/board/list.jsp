<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<style>
a {
	text-decoration: none;
}
</style>
<p class="w3-left" style="padding-left: 30px;">
</p>

<div class="w3-container  w3-display-middle" style="width:80% ">

	<p class="w3-right w3-padding-right-large">
		<a href="writeForm">�۾��� <i class="fa fa-pencil"></i></a>
	</p>


	<c:if test="${count==0}">

		<table class="table-bordered" width="700">
			<tr class="w3-gray">
				<td align="center">�Խ��ǿ� ����� ���� �����ϴ�.</td>
		</table>
	</c:if>
	<c:if test="${count !=0}">

		<table class="w3-table-all " >
			<tr class="w3-black">
				<td align="center" width="50">��ȣ</td>
				<td align="center" width="250">����</td>
				<td align="center" width="100">�ۼ���</td>
				<td align="center" width="150">�ۼ���</td>
				<td align="center" width="50">��ȸ</td>
				<td align="center" width="100">IP</td>
			</tr>

			<c:forEach var="article" items="${articleList}">

				<tr class="w3-white" height="30">
					<td align="center" width="50">${number}<c:set var="number"
							value="${number-1 }" />
					</td>
					<td width="250"><c:if test="${article.re_level >0 }">

							<img src="<%=request.getContextPath() %>/images/level.gif"
								width="${article.re_level*5} height="16">

							<i class="fa  fa-angle-double-right w3-pink"></i>
						</c:if> <c:if test="${article.re_level ==0 }">

							<img src="<%=request.getContextPath() %>/images/level.gif" height="16">

						</c:if> <a
						href="content?num=${article.num}&pageNum=${currentPage}">
							${article.subject}</a>
							
						<c:if test="${article.readcount >= 3 }">
						 <i class="fa  fa-thumbs-up w3-pink"></i>
						 </c:if>
						</td>
					<td align="center" width="100">${article.writer }</td>
					<td align="center" width="150">${article.reg_date }</td>
					<td align="center" width="50">${article.readcount }</td>
					<td align="center" width="100">${article.ip }</td>
				</tr>
			</c:forEach>
		</table>
		</c:if>

		<div class="w3-center">
		
		<c:if test="${count > 0 }">
			<c:if test =  "${startPage > bottomLine }">
				 <a
					href="list?pageNum=${startPage -bottomLine }">[����]</a>
			</c:if>
			
			<c:forEach var="i" begin = "${startPage }" end="${endPage }">
				<a href="list?pageNum=${i }">
					<c:if test="${i!=currentPage }"> [${i }]</c:if>
					<c:if test = "${i == currentPage }"> <font color='red'> [${i }]</font></c:if>
				</a>
			</c:forEach>
			
			<c:if test = "${endPage<pageCount }">
				<a href = "list?pageNum=${startPage+bottomLine }">[����]</a>
			</c:if>

		</c:if>
		</div>
</div>

</body>
</html>