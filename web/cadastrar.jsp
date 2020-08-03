<%-- 

   ADRIANO FONSECA DA COSTA
   RGM.: 1514966-8

   RODRIGO ROCHA CAVALCANTE PEREIRA
   RGM.: 1567611-1

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FRETES DE CARGA</title>
    </head>
    <body>
        <center>
            <diV style="width: 500px; text-align: left;">
                <form method="post" action="gravar.jsp">
                    Numero do Protocolo: <input type="text" name="numProtocolo" /><br />
                    Remetente: <input type="text" name="remetente" /><br />
                    Destinatario <input type="text" name="destinatario" /><br />
                    Destino: <input type="text" name="destino" /><br />
                    Assunto: <input type="text" name="assunto" /><br />
                    Data de Envio: <input type="text" name="dataEnvio" /><br />
                    Data de Entrega: <input type="text" name="dataRecepcao" /><br />
                    <input type="submit" value="Cadastrar" />
                </form>
            </diV>            
        </center>
    </body>
</html>
