
<%@page contentType="text/html" pageEncoding="UTF-8" import="DAO.ProtocolosDAO" %>
<jsp:useBean id="bnProtocolo" class="Classes.Protocolos" />
<%    
    bnProtocolo.setIdPro(Integer.parseInt(request.getParameter("idPro")));
    bnProtocolo = new ProtocolosDAO().ConsultarProtocolos(bnProtocolo);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
    </head>
    <body>
        <form method="post" action="alterar_frete.jsp">
            Nome do Motorista do Veículo: <input type="text" name="numProtocolo" value="<%= bnProtocolo.getNumProtocolo()%>"><br> 
            Tipo de carga: <input type="text" name="remetente" value="<%= bnProtocolo.getRemetente()%>"><br> 
            Peso: <input type="text" name="destinatario" value="<%= bnProtocolo.getDestinatario()%>"><br> 
            Destino:<input type="text" name="assunto" value="<%= bnProtocolo.getAssunto()%>"><br> 
            Origem:<input type="text" name="dataEnvio" value="<%= bnProtocolo.getDataEnvio()%>"><br> 
            Valor:<input type="text" name="dataRecepcao" value="<%= bnProtocolo.getDataRecepcao()%>"><br> 
            <input type="hidden" name="id" value="<%= bnProtocolo.getIdPro()%>" />
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
