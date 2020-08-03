
<%@page contentType="text/html" pageEncoding="UTF-8" import="DAO.ProtocolosDAO"%>
<jsp:useBean id="bnProtocolo" class="Classes.Protocolos">
    <jsp:setProperty name="bnProtocolo" property="*" />
</jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">               
    </head>
    <body>        
        
        <%
            if (new ProtocolosDAO().ExcluirProtocolo(bnProtocolo.getIdPro()+"")){
                out.print("Dados excluídos.");
                response.sendRedirect("pesquisar.jsp");
            } else out.print("Erro ao excluir.");
        %>
    </body>
</html>
