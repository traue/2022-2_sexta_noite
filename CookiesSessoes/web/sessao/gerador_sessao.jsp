<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <%
            request.setCharacterEncoding("UTF-8");
            
            String nome = request.getParameter("nome");
            
            int idade = Integer.parseInt(request.getParameter("idade"));
            
            String endereco = request.getParameter("endereco");
            
            session.setAttribute("nome", nome);
            session.setAttribute("idade", idade);
            session.setAttribute("endereco", endereco);
        %>
        <h4>Dados guardados na sessão!</h4>
        <br><br>
        <a href="./">Voltar para a página inicial da sessão</a>
    </body>
</html>
