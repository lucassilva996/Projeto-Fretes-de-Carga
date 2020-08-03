<%-- 

   ADRIANO FONSECA DA COSTA
   RGM.: 1514966-8

   RODRIGO ROCHA CAVALCANTE PEREIRA
   RGM.: 1567611-1

--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="validar_sessao.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROTOCOLOS DE DOCUMENTOS</title>
    </head>
    <body>
        <p><b>Nome do Usuário:&nbsp;</b><%= logado != null ? logado.getNome() : "" %>&nbsp;-&nbsp;<b><a href="sair.jsp">Sair</a></b></p>
        <center>
            <h4>                
                <a href="cadastrar.jsp">Cadastrar Protocolos</a><br />
                <a href="pesquisar.jsp">Consultar Protocolos</a><br />
                <a href="altera_usuario.jsp">Alterar Dados Pessoais</a><br />
            </h4>
        </center>
    </body>
</html>
