
<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<%@page import="DAO.ProtocolosDAO, java.sql.*" %>
<%
    
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Pragma", "no-cache");
    
    if (request.getParameter("opc") != null) {
        
        String result = new ProtocolosDAO().ConsultarProtocolos(request.getParameter("opc"), request.getParameter("value"));
        out.print(result);  
        
    }

%>
