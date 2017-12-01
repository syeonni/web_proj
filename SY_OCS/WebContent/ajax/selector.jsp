<%@ page import="select.Selector" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    request.setCharacterEncoding("euc-kr");
    String si = null;
    String gu = null;
    String name = "si";
    String nameset = "진료부서를 선택하세요";
    int index = 0;
    if(request.getParameter("si") != null){
    	name="guName";
    	nameset="진료의사를 선택하세요";
    	si= request.getParameter("si");
    }
    
    Selector sel = new Selector();
    
    List li = sel.selectO(si);
    
    %>
    <select name="<%= name %>" onchange="getText('<%= name%>',this.value);" >
    <option value="<%= nameset%>"><%= nameset%> </option> 
    <%
    for (int i = 0; i<li.size(); i++) {
       out.print("<option value ='"+ li.get(i)+"'>" + li.get(i)+"</option>");
     }
    %></select>