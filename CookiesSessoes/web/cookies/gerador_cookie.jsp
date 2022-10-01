<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookie gerada!</title>
    </head>
    <body>
        <h1>Trabalhando com Cookies</h1>
        <hr>
           
        <%
            request.setCharacterEncoding("UTF-8");
            
            String nome = request.getParameter("nome");
            String idade = request.getParameter("idade");
            
            String nomeCodificado = URLEncoder.encode(nome, "UTF-8");
            String idadeCodificada = URLEncoder.encode(idade, "UTF-8");
            
            Cookie cookieNome = new Cookie("nomeUsuario", nomeCodificado);
            Cookie cookieIdade = new Cookie("idadeUsuario", idadeCodificada);
            
            cookieNome.setMaxAge(120); //em segundos
            //cookieIdade.setMaxAge(120);
            
            response.addCookie(cookieNome);
            response.addCookie(cookieIdade); 
        %>
        <br>
        <h4>Valores guardados!</h4>
        <br>
        <a href="./">Voltar para a página principal do projeto de Cookies</a>
    </body>
</html>
