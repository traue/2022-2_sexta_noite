<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meu Terreno</title>
        <style>
            .corpo {
                margin-top: 40px;
                margin-left: 20px;
            }

            .corpo p {
                font-family: fantasy;
                font-size: 22px;
            }
            
            ul li {
                font-family: fantasy;
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <h1>Cálculos do Terreno - Resultados</h1>
        <hr>

        <%
            String frente = request.getParameter("frente");
            String comprimento = request.getParameter("comp");
            String area = request.getParameter("area");
            String perimetro = request.getParameter("perimetro");
        %>

        <div class="corpo">
            <p>
                Para um terreno de <%=frente%>m de frente e <%=comprimento%>m
                de comprimento, temos:
            </p>
            <ul>
                <li>Área: <%=area%>m2</li>
                <li>Perímetro: <%=perimetro%>m</li>
            </ul>
        </div>

        <a href="./">Calcular novamente</a>

    </body>
</html>
