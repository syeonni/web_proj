<%@page import="model.DiseaseDataBean"%>
<%@ page import="select.Selector" %>
<%@ page contentType="text/plain; charset=utf-8"%>
<%@ page import="java.util.List"%>
<%
	request.setCharacterEncoding("utf-8");
	String keyword = request.getParameter("keyword");
	if(keyword!=null && !keyword.equals("")){
		Selector sel = new Selector();
		List keywordList = sel.selectDiseaseDb(keyword);
		out.print(keywordList.size());
		out.print("|");
		for(int i=0; i<keywordList.size(); i++){
			DiseaseDataBean disease = (DiseaseDataBean)keywordList.get(i);
			out.print(disease);
			if(i<keywordList.size() - 1 ){
				out.print("=");
			}
		}
	}
%>