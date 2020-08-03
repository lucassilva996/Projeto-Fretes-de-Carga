<%@page import="Classes.Protocolos, DAO.ProtocolosDAO" %>
<jsp:useBean id="bnProtocolo" class="Classes.Protocolos">
    <jsp:setProperty name="bnProtocolo" property="*" />
</jsp:useBean>
<%
  
    if (new ProtocolosDAO().CadastrarProtocolo(bnProtocolo)) {
        out.print("<script>alert('Protocolo cadastrado com sucesso.');</script>");
        response.sendRedirect("index_logado.jsp");
    } else {
        out.print("<script>alert('Erro interno da ferramenta.');</script>");
    }

%>