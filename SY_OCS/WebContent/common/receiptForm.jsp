<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	body {
		background-color : rgb(252,252,252);
		font-size : 10pt;
		text-align: center;
	}	
	
	p {		
		
	}
	
	#header {
		width:1350px;
		height:150px;
		margin: 0 auto;
		background-color:rgb(100,100,100);
	}
	
	#content {
		overflow-y: scroll;
		margin: 2px auto;
		width:1400px;
		height:400px;
		border:1px solid rgb(222,222,222);
	}
</style>
</head>
<body>
<div style="width:1350px; height:1000px; margin:0 auto; border:3px solid rgb(0,0,0);">
		<!-- 환자 정보 및 구분 -->
		<div style="width:1350px; height:112px; border-bottom:3px solid rgb(0,0,0);">
			<div style="width:1350px; height:25px; line-height:25px; border-bottom:1px solid #008299; color:#008299; font-weight:bold; text-align:center; background-color:rgb(247,242,242);">
				<div style="width:160px; height:25px; border-right:1px solid #008299; float:left;">환자등록번호</div>
				<div style="width:160px; height:25px; border-right:1px solid #008299; float:left;">환&nbsp;자&nbsp;성&nbsp;명&nbsp;</div>
				<div style="width:850px; height:25px; border-right:1px solid #008299; float:left;">진&nbsp;&nbsp;&nbsp;&nbsp;료&nbsp;&nbsp;&nbsp;&nbsp;기&nbsp;&nbsp;&nbsp;&nbsp;간&nbsp;&nbsp;(&nbsp;진&nbsp;료&nbsp;일&nbsp;자&nbsp;)</div>
				<div style="width:175px; height:25px; float:left;">야간(공휴일) 진료</div>
			</div>
			<div style="width:1350px; height:30px; line-height:30px; border-bottom:1px solid #008299; font-weight:bold;">
				<div style="width:160px; height:30px; line-height:30px; border-right:1px solid #008299; text-align:center; float:left;"><%=request.getParameter("patient_id") %></div>
				<div style="width:160px; height:30px; line-height:30px; border-right:1px solid #008299; text-align:center; float:left;"></div>
				<div style="width:850px; height:30px; border-right:1px solid #008299; text-align:left; float:left;"></div>
				<div style="width:175px; height:30px; text-align:center; float:left; color:#008299; font-weight:bold;">□ 야간&nbsp;&nbsp;□ 공휴일</div>
			</div>
			<div style="width:1350px; height:25px; line-height:25px; border-bottom:1px solid #008299; color:#008299; font-weight:bold; text-align:center; background-color:rgb(247,242,242);">
				<div style="width:322px; height:25px; border-right:1px solid #008299; float:left;">진&nbsp;&nbsp;료&nbsp;&nbsp;과&nbsp;&nbsp;목</div>
				<div style="width:160px; height:25px; border-right:1px solid #008299; float:left;">질병군(DRG)번호</div>
				<div style="width:142px; height:25px; border-right:1px solid #008299; float:left;">병&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;실</div>
				<div style="width:318px; height:25px; border-right:1px solid #008299; float:left;">환자&nbsp;&nbsp;&nbsp;구분</div>
				<div style="width:400px; height:25px; float:left;">영수증번호(&nbsp;연월-일련번호&nbsp;)</div>
			</div>
			<div style="width:1350px; height:30px; line-height:30px; font-weight:bold;">
				<div style="width:322px; height:30px; text-align:center; border-right:1px solid #008299; float:left;"></div>
				<div style="width:160px; height:30px; border-right:1px solid #008299; float:left;"></div>
				<div style="width:142px; height:30px; border-right:1px solid #008299; float:left;"></div>
				<div style="width:318px; height:30px; text-align:center; border-right:1px solid #008299; float:left;">외래</div>
				<div style="width:400px; height:30px; text-align:center; float:left;"></div>
			</div>
		</div>
		<!-- 금액 -->
		<div style="width:1350px; height:697px; border-bottom:3px solid rgb(0,0,0);">
			<div style="width:1350px; height:676px; border-bottom:3px solid rgb(0,0,0);">
				<div style="width:944px; height:676px; border-right:3px solid rgb(0,0,0); float:left;">
					<div style="width:944px; height:400px; border-bottom:2px solid #008299;">
						<div style="width:180px; height:400px; float:left; text-align:center; border-right:2px solid #008299; color:#008299; font-weight:bold; background-color:rgb(247,242,242);">
							<div style="width:180px; height:62px; line-height:62px; border-bottom:1px solid #008299;" >항목</div>
							<div style="width:25px; height:344px; line-height:20px; float:left; border-right:1px solid #008299; float:left; padding-top:120px;">필수항목</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">진&nbsp;&nbsp;찰&nbsp;&nbsp;료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">입&nbsp;&nbsp;원&nbsp;&nbsp;료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대</div>
							<div style="width:65px; height:42px; line-height:20px; border-bottom:1px solid #008299; border-right:1px solid #008299; float: left;">투약및<br>조제료</div>
							<div style="width:87px; height:21px; line-height:20px; border-bottom:1px solid #008299; float: left;">행위료</div>
							<div style="width:87px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">약품비</div>
							<div style="width:65px; height:41px; line-height:40px; border-bottom:1px solid #008299; border-right:1px solid #008299; float: left;">주사료</div>
							<div style="width:87px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">행위료</div>
							<div style="width:87px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">약품비</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">마취료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">처치및수술료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">검사료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">영상진단</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">방사선치료료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">치료재료대</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">재활및물리치료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">정신요법료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float:left;">전혈및혈액성분제제료</div>
						</div>
						<div style="width:762px; height:400px; float:left;">
							<div style="width:762px; height:21px; float:left; text-align:center; line-height:20px; color:#008299; font-weight:bold; background-color:rgb(247,242,242);">
								<div style="width:445px; height:20px; border-bottom:1px solid #008299; border-right:1px solid #008299; float:left;">급&nbsp;&nbsp;여</div>
								<div style="width:315px; height:20px; border-bottom:1px solid #008299; float:left;">비&nbsp;급&nbsp;여</div>
							</div>
							<div style="width:300px; height:41px; line-height:20px; border-bottom:1px solid #008299; text-align:center; border-right:1px solid #008299; float:left; color:#008299; font-weight:bold; background-color:rgb(247,242,242);">
								<div style="width:300px; height:20px; border-bottom:1px solid #008299;">일부 본인부담</div>
								<div style="width:149px; height:20px; border-bottom:1px solid #008299; border-right:1px solid #008299; float:left;">본인부담금</div>
								<div style="width:149px; height:20px; border-bottom:1px solid #008299; float:left;">공단부담금</div>
							</div>
							<div style="width:144px; height:41px; border-bottom:1px solid #008299; line-height:41px; text-align:center; border-right:1px solid #008299; float:left; color:#008299; font-weight:bold; background-color:rgb(247,242,242);">전액본인부담</div>
							<div style="width:157px; height:41px; border-bottom:1px solid #008299; line-height:41px; text-align:center; border-right:1px solid #008299; float:left; color:#008299; font-weight:bold; background-color:rgb(247,242,242);">선택진료료</div>
							<div style="width:157px; height:41px; border-bottom:1px solid #008299; line-height:41px; text-align:center; float:left; color:#008299; font-weight:bold; background-color:rgb(247,242,242);">선택진료료 이외</div>
							<div style="width:762px; height:20px; float:left;  line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"><%=(Integer.parseInt(request.getParameter("examinationM"))*1.3) %></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;">0</div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:21px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:21px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:21px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:21px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"><%=(Integer.parseInt(request.getParameter("injectionM"))*0.6)*1.3 %></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"><%=(Integer.parseInt(request.getParameter("injectionM"))*0.4)*1.3 %></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
						</div>						
					</div>
					
					<div style="width:944px; height:275px;">
						<div style="width:180px; height:275px; float:left; border-right:2px solid #008299; text-align:center; color:#008299; font-weight:bold;">
							<div style="width:25px; height:150px; float:left; border-right:1px solid #008299; border-bottom:1px solid #008299; float:left; padding-top:60px;">선택항목</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">CT진단료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">MRI진단료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">PET진단료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">초음파 진단료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">보철 · 교정료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">응급관리료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">제증명</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">기타</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">전화통화료</div>
							<div style="width:153px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;"></div>
							<div style="width:180px; height:20px; line-height:20px; border-bottom:1px solid #008299; float: left;">65세이상등정액</div>
							<div style="width:180px; height:20px; line-height:20px; border-bottom:2px solid #008299; float: left;">포괄수가진료비</div>
							<div style="width:180px; height:20px; line-height:20px; float: left;">합&nbsp;&nbsp;&nbsp;&nbsp;계</div>
						</div>
						<div style="width:762px; height:275px; float:left;">
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; border-bottom:1px solid #008299; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
							<div style="width:762px; height:20px; float:left; line-height:20px; text-align:right;">
								<div style="width:149px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"><%=request.getParameter("my") %></div>
								<div style="width:150px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"><%=request.getParameter("gong") %></div>
								<div style="width:144px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; border-right:1px solid #008299; text-align:right;"></div>
								<div style="width:157px; height:20px; float:left; text-align:right;"></div>
							</div>
						</div>
					</div>
				</div>
				<div style="width:403px; height:666px; float:left;">
					<div style="width:403px; height:125px; border-bottom:2px solid #008299;">
						<div style="width:403px; height:20px; line-height:20px; border-bottom:1px solid #008299; background-color:rgb(247,242,242); text-align:center; color:#008299; font-weight:bold;"> 금액 산정 내역 </div>
						<div style="width:403px; height:20px; line-height:20px; border-bottom:1px solid #008299;">
							<div style="width:233px; height:20px; line-height:20px; text-align:left; border-right:1px solid #008299; color:#008299; font-weight:bold; float:left;">&nbsp;⑦&nbsp;진료비총액(①+②+③+④+⑤)</div>
							<div style="width:168px; height:20px; text-align:right; line-height:20px; float:left;"><%=request.getParameter("sum") %></div>
						</div>
						<div style="width:403px; height:20px; line-height:20px; border-bottom:1px solid #008299;">
							<div style="width:233px; height:20px; line-height:20px; text-align:left; border-right:1px solid #008299; color:#008299; font-weight:bold; float:left;">&nbsp;⑧&nbsp;환자부담총액(①-⑥)+③+④+⑤</div>
							<div style="width:168px; height:20px; text-align:right; line-height:20px; float:left;"><%=request.getParameter("my") %></div>
						</div>
						<div style="width:403px; height:20px; line-height:20px; border-bottom:1px solid #008299;">
							<div style="width:233px; height:20px; line-height:20px; text-align:left; border-right:1px solid #008299; color:#008299; font-weight:bold; float:left;">&nbsp;⑨&nbsp;이&nbsp;&nbsp;&nbsp;미&nbsp;&nbsp;&nbsp;납&nbsp;&nbsp;&nbsp;부&nbsp;&nbsp;&nbsp;한&nbsp;&nbsp;&nbsp;금&nbsp;&nbsp;&nbsp;액</div>
							<div style="width:168px; height:20px; text-align:right; line-height:20px; float:left;">0</div>
						</div>
						<div style="width:403px; height:20px; line-height:20px; border-bottom:1px solid #008299;">
							<div style="width:233px; height:20px; line-height:20px; text-align:left; border-right:1px solid #008299; color:#008299; font-weight:bold; float:left;">&nbsp;⑩&nbsp;납&nbsp;&nbsp;부&nbsp;&nbsp;할&nbsp;&nbsp;금&nbsp;&nbsp;액&nbsp;&nbsp;(&nbsp;⑧-⑨&nbsp;)</div>
							<div style="width:168px; height:20px; text-align:right; line-height:20px; float:left;"><%=request.getParameter("my") %></div>
						</div>
						<div style="width:403px; height:20px; line-height:20px;">
							<div style="width:233px; height:20px; border-right:1px solid #008299; text-align:center; color:#008299; font-weight:bold; float:left;">부&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;치&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;세</div>
							<div style="width:168px; height:20px; float:left;"></div>
						</div>
					</div>
					<div style="width:403px; height:83px; border-bottom:2px solid #008299;">
						<div style="width:100px; height:83px; border-right:1px solid #008299; line-height:40px; text-align:center; float:left; color:#008299; font-weight:bold;">⑪&nbsp;&nbsp;&nbsp;&nbsp;납&nbsp;&nbsp;&nbsp;&nbsp;부한&nbsp;&nbsp;&nbsp;&nbsp;금&nbsp;&nbsp;&nbsp;&nbsp;액</div>
						<div style="width:132px; height:83px; border-right:1px solid #008299;  text-align:center; float:left; color:#008299; font-weight:bold;">
							<div style="width:132px; height:20px;line-height:20px; border-bottom:1px solid #008299;">카&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;드</div>
							<div style="width:132px; height:20px;line-height:20px; border-bottom:1px solid #008299;">현&nbsp;&nbsp;금&nbsp;&nbsp;영&nbsp;&nbsp;수&nbsp;&nbsp;증</div>
							<div style="width:132px; height:20px;line-height:20px; border-bottom:1px solid #008299;">현&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;금</div>
							<div style="width:132px; height:20px;line-height:20px;">합&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;계</div>
						</div>
						<div style="width:168px; height:83px; float:left;">
							<div style="width:168px; height:20px;line-height:20px; text-align:right; border-bottom:1px solid #008299;"></div>
							<div style="width:168px; height:20px;line-height:20px; text-align:right;border-bottom:1px solid #008299;">0</div>
							<div style="width:168px; height:20px;line-height:20px; text-align:right;border-bottom:1px solid #008299;">0</div>
							<div style="width:168px; height:20px;line-height:20px; text-align:right;"></div>
						</div>
					</div>
					<div style="width:403px; height:209px; border-bottom:2px solid #008299;">
						<div style="width:100px; height:209px; text-align:center; line-height:60px; color:#008299; font-weight:bold; border-right:1px solid #008299; float:left;">납&nbsp;부&nbsp;하&nbsp;지<br>않&nbsp;은&nbsp;금&nbsp;액<br>(&nbsp;⑩&nbsp;-&nbsp;⑪&nbsp;)</div>
						<div style="width:132px; height:209px; border-right:1px solid #008299; float:left;">
							<div style="width:132px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:132px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:132px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:132px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:132px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:132px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:132px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:132px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:132px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:132px; height:20px;line-height:20px;"></div>
						</div>
						<div style="width:168px; height:209px; float:left;">
							<div style="width:168px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:168px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:168px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:168px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:168px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:168px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:168px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:168px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:168px; height:20px;line-height:20px; border-bottom:1px solid #008299;"></div>
							<div style="width:168px; height:20px;line-height:20px;"></div>
						</div>
					</div>
					<div style="width:395px; height:200px; padding-left:5px;">
						<p style="width:100%; text-align:left;">요양급여적용기준에 의거 상기 납부하신 금액은 진료 및 검사<br> 시행일자 기준으로 금액이 변동될 수 있음을 알려드립니다.<br> 빠른 쾌유를 바랍니다.</p>
					</div>
				</div>
			</div>
			<div style="width:1350px; line-height:20px; height:20px;">
				<div style="width:180px; height:20px; border-right:2px solid #008299; float:left; color:#008299; font-weight:bold;">상한액초과금</div>
				<div style="width:149px; height:20px; border-right:1px solid #008299; float:left;"><div style="width:10px; float:left; height:19px; color:#008299; font-weight:bold;">&nbsp;⑥</div></div>
				<div style="width:613px; height:20px; border-right:2px solid #008299; float:left; border-right:3px solid rgb(0,0,0);"></div>
				<div style="width:400px; height:20px; float:left;"></div>
			</div>
		</div>
		<div>
		</div>
	</div>
</body>
</html>