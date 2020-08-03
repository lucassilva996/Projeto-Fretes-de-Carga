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
        <title>FRETES DE CARGA</title>
    </head>
    <body>
        <center>
            <form method="post" action="gravar_usuario.jsp">
                Nome Completo: <input type="text" name="nome" value="<%=logado.getNome() %>" /><br />
                Usuário: <input type="text" name="usuario" value="<%=logado.getUsuario()%>" /><br />
                Email: <input type="email" name="email" value="<%=logado.getEmail()%>" /><br />
                Senha: <input type="password" name="senha" value="<%=logado.getSenha()%>" /><br />
                <input type="hidden" name="id" value="<%=logado.getId()%>" />
                <input type="submit" value="Alterar" />
            </form>
        </center>
    </body>
</html>
