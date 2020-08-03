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
        <title>PESQUISA DE PROTOCOLOS</title>
    </head>
    <script src="Scripts/jquery-3.1.1.min.js" type="text/javascript"></script>
        <script>
            
            function listar(){
            
                var endereco="", saida="";            
                            
                endereco = "busca_dados.jsp?opc=" + $("input[type=radio]:checked").val() + "&value=" + $("#txtField").val();
            
                $.ajax({ 
                    url : endereco,
                    success : function(xml) {
                    
                        saida += "<table border='1'>";
                        
                        saida += "<tr>";
                        saida += "<th>Numero do Protocolo</th>";
                        saida += "<th>Remetente</th>";
                        saida += "<th>Destinatario</th>";
                        saida += "<th>Assunto</th>";
                        saida += "<th>Data de Envio</th>";
                        saida += "<th>Data de Recepção</th>";
                        saida += "<th colspan='2'></th>";                        
                        saida += "</tr>";
                    
                        $(xml).find("TESTE").each(function() {                                 
                            saida += "<tr>";
                            saida += "<td>" + $(this).find("numProtocolo").text() + "</td>";
                            saida += "<td>" + $(this).find("remetente").text() + "</td>";
                            saida += "<td>" + $(this).find("destinatario").text() + "</td>";
                            saida += "<td>" + $(this).find("assunto").text() + "</td>"; 
                            saida += "<td>" + $(this).find("dataEnvio").text() + "</td>";
                            saida += "<td>" + $(this).find("dataRecepcao").text() + "</td>";
                            
                            saida += "<td><a href='alterar.jsp?id=" + $(this).find("idPro").text() + "'>Alterar</a></td>";
                            saida += "<td><a href='excluir.jsp?id=" + $(this).find("idPro").text() + "'>X</a></td>";
                            saida += "</tr>";
                        });
                            
                        saida += "</table>";
                    
                        $("#tblFretes").html(saida);
                    
                    },
                    error: function() { alert("Erro no Método Ajax."); }
                });
            }
            
            $(function(){ 
                
                $("#btnPesquisar").click(function (){
                    listar();                    
                });
        
            });
        
        </script>
    <body>
        <center>
            <div>
                <h3>Consulta de Multas</h3>
            </div>
            <br /><br />
            <input type="radio" value="0" name="opc" checked="checked"/>Todos
            <input type="radio" value="1" name="opc" />Numero do Protocolo
            <input type="radio" value="2" name="opc" />Destinatario
            <input type="radio" value="3" name="opc" />Remetente
            <input type="radio" value="4" name="opc" />Assunto
            <input type="radio" value="5" name="opc" />Data de Envio
            <input type="radio" value="6" name="opc" />Data de Recebimento
            <br />
            <input id="txtField" type="text" /><input id="btnPesquisar" type="button" value="Pesquisar" />
            <br /><br />
            <div id="tblFretes"></div>
        </center>        
    </body>
</html>
