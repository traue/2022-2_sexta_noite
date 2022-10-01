<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trabalhando com sessões</title>
    </head>
    <body>
        <h1>Trabalhando com Sessões</h1>
        <hr>
        
        <br><br>
        
        <p><b>Nome guardado na sessão:</b> <%= session.getAttribute("nome") %></p>
        
        <p><b>Idade guardada na sessão</b> <%= session.getAttribute("idade") %></p>
        
        <p><b>Endereço guardado na sessão:</b> <%= session.getAttribute("endereco") %></p>
        
        <br><br>
        
        <a href="./">Voltar para a página inicial da sessão</a>
    </body>
</html>
