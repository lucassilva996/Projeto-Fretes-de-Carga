<%@page contentType="text/html" pageEncoding="UTF-8" import="DAO.ProtocolosDAO" %>
<jsp:useBean id="bnProtocolo" class="Classes.Protocolos">
    <jsp:setProperty name="bnProtocolo" property="*" />
</jsp:useBean>
<%
    
    if (new ProtocolosDAO().AlterarProtocolo(bnProtocolo)){
        out.print("<script>alert('Dados alterados.');</script>");
        response.sendRedirect("pesquisar.jsp");
    } else {
        out.print("Erro ao alterar.");
    }
    
%>
    