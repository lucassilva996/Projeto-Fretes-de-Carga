<%-- 

   ADRIANO FONSECA DA COSTA
   RGM.: 1514966-8

   RODRIGO ROCHA CAVALCANTE PEREIRA
   RGM.: 1567611-1

--%>
<%@page import="Classes.Usuario, DAO.UsuarioDAO" %>
<jsp:useBean id="bnUsuario" class="Classes.Usuario">
    <jsp:setProperty name="bnUsuario" property="*" />
</jsp:useBean>
<%

    if (request.getParameter("id") == null) {
        
        if (new UsuarioDAO().CadastrarUsuario(bnUsuario)) {
            out.print("<script>alert('Usuário Cadastrado com Sucesso.');</script>");
            response.sendRedirect("index.html");
        } else {
            out.print("<script>alert('Erro interno da ferramenta.');</script>");
            response.sendRedirect("cadastro_usuario.jsp");
        }
        
    } else {
        
        if (new UsuarioDAO().AlterarUsuario(bnUsuario)) {
            out.print("<script>alert('Usuário Alterado com Sucesso. Refaça o Login.');</script>");
            response.sendRedirect("sair.jsp");
        } else {
            out.print("<script>alert('Erro interno da ferramenta.');</script>");
            response.sendRedirect("altera_usuario.jsp");
        }
        
    }

%>