<%-- 

   ADRIANO FONSECA DA COSTA
   RGM.: 1514966-8

   RODRIGO ROCHA CAVALCANTE PEREIRA
   RGM.: 1567611-1

--%>
<%@page import="Classes.Usuario, DAO.UsuarioDAO" %>
<%
  
    String usuario = request.getParameter("usuario");
    String senha = request.getParameter("senha");
    
    Usuario logado = new UsuarioDAO().ConsultarUsuario(usuario, senha);
    
    if (logado != null) {
        
        session.setAttribute("SESS_USUARIO", logado);
        response.sendRedirect("index_logado.jsp");
        
    } else {
        
        out.print("<script>alert('Usuário não está cadastrado.');</script>");
        response.sendRedirect("index.html");
        
    }

%>