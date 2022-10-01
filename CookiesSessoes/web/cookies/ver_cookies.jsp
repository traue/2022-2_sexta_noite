<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trabalhando com Cookies</title>
    </head>
    <body>
        <h1>Trabalhando com Cookies</h1>
        <hr>
        <h4>Valores guardados nas coocies...</h4>

        <%
            request.setCharacterEncoding("UTF-8");
            String nomeCookieIdade = "idadeUsuario";
            String nomeCookieNome = "nomeUsuario";

            Cookie cookies[] = request.getCookies();
            Cookie nomeCookie = null;
            Cookie idadeCookie = null;

            if (cookies != null) {
                for (int i = 0; i < cookies.length; i++) {
                    if (cookies[i].getName().equals(nomeCookieIdade)) {
                        idadeCookie = cookies[i];
                    }

                    if (cookies[i].getName().equals(nomeCookieNome)) {
                        nomeCookie = cookies[i];
                    }
                }
            }
        %>

        <%
            if (nomeCookie == null) {
                out.print("Não foi encontrada a cookie que contém o nome!");
            } else {
                out.print("Valor guardado na cookie do nome: " + 
                   URLDecoder.decode(nomeCookie.getValue(), "UTF-8"));
            }
            
            out.print("<br><br>");
            
            if (idadeCookie == null) {
                out.print("Não foi encontrada a cookie que contém a idade!");
            } else {
                out.print("Valor guardado na cookie da idade " + 
                     URLDecoder.decode(idadeCookie.getValue(), "UTF-8"));
            }
        %>

        <br><br>

        <a href="./">Voltar para a página inicial dos cookies</a>

    </body>
</html>
