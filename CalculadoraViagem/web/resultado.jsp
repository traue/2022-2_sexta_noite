<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean scope="page" id="viagem" class="br.uninove.Viagem"></jsp:useBean>

<jsp:setProperty 
    name="viagem" 
    property="distancia" 
value='<%= Integer.parseInt(request.getParameter("distancia"))%>'></jsp:setProperty>

<jsp:setProperty 
    name="viagem" 
    property="consumo" 
value='<%= Float.parseFloat(request.getParameter("consumo"))%>'></jsp:setProperty>

<jsp:setProperty 
    name="viagem" 
    property="vCombustivel" 
value='<%= Float.parseFloat(request.getParameter("combustivel"))%>'></jsp:setProperty>

<jsp:setProperty 
    name="viagem" 
    property="vPedagio" 
value='<%= Float.parseFloat(request.getParameter("pedagio"))%>'></jsp:setProperty>

    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Calculadora da Vigem</title>
            <link rel="stylesheet" href="estilo.css"/>
        </head>
        <body>
            <h1>Calculadora da Viagem</h1>
            <hr>

            <div class="boxPrincipal">
                <h3>Resultados</h3>
                <h4>Dados informados</h4>
                <ul>
                    <li>Consumo: <b><%= viagem.getConsumo()%></b>Km/L</li>
                <li>Distância: <b><%= viagem.getDistancia()%></b>Km</li>
                <li>Valor médio do combustível: R$ <b><%= viagem.getvCombustivel()%></b></li>
                <li>Valor gasto com pedágios: R$ <b><%= viagem.getvPedagio()%></b></li>
            </ul>
            <hr>
            <h4>Resultados</h4>
            <ul>
                <li> Qtd. de litros usados: <b> <%= viagem.getQtdLitros()%> </b>L</li>
                <li> Valor gasto apenas com combustível: R$<b> <%= viagem.getvTotalCombustivel()%> </b></li>
            </ul>
            <hr>
            <div>
                <h3>Total da Viagem</h3>
                <h2> R$ <%= viagem.getvTotalViagem()%> </h2>
            </div>
        </div>

        <div class="linkVoltar">
            <a href="./">Calcular novamente</a>
        </div>

    </body>
</html>
