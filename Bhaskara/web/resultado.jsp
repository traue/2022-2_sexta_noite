<%@page import="br.uninove.matematica.Bhaskara"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Bhaskara bhaskara = new Bhaskara();

    String a, b, c;

    a = request.getParameter("valorA");
    b = request.getParameter("valorB");
    c = request.getParameter("valorC");

    bhaskara.setvA(Double.parseDouble(a));
    bhaskara.setvB(Double.parseDouble(b));
    bhaskara.setvC(Double.parseDouble(c));

    bhaskara.calculaBhaskara();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora de Bhakara</title>
    </head>
    <body>
        <h1>Calculadora Bhaskara</h1>
        <hr>
        <div style="margin-top: 30px;">
            <p style="font-size: 24px;">
                Dada a equação <strong><%= a %>x² + <%= b %>x + <%= c %> = 0</strong>, 
                temos:
            </p>
            <div style="font-size: 20px; margin-left: 20px;">

                <p><strong>Delta = </strong><%= bhaskara.getDelta() %></p>
                <% if (bhaskara.getDelta() > 0) { %>
                    <p><strong>X' = </strong> <%= bhaskara.getX1() %></p>
                    <p><strong>X" = </strong> <%= bhaskara.getX2() %></p>
                <% } else { %>
                    <p>
                        <strong>
                            Não existem raízes reais pois delta 
                            é menor que zero!
                        </strong>
                    </p>
                <% }%>
            </div>
        </div>
        <a href="./">Calcular novamente</a>
    </body>
</html>
