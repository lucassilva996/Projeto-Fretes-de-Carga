<%-- 

   ADRIANO FONSECA DA COSTA
   RGM.: 1514966-8

   RODRIGO ROCHA CAVALCANTE PEREIRA
   RGM.: 1567611-1

--%>
<%@page import="Classes.Usuario" %>
<%

    Usuario logado = null;
    
    if (session.getAttribute("SESS_USUARIO") == null) {
        
        out.print("<script>alert('Efetue o login para acessar a página.');</script>");
        response.sendRedirect("index.html");
        
    } else {
        logado = (Usuario)session.getAttribute("SESS_USUARIO");
    }

%>