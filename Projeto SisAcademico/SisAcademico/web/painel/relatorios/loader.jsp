<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carregndo...</title>
    </head>
    <body>
        <jsp:include page="../menu.jsp"></jsp:include>
        <script>
            $(document).ready(function () {
                const urlParams = new URLSearchParams(window.location.search);
                const pagina = urlParams.get('pg');
                
                if(pagina == 'cursos') {
                    var url = '../../CursoController?acao=leitura';
                } else {
                    var url = '../AlunoController?acao=leitura';
                    const idCurso = urlParams.get('idCurso');
                    if(idCurso != null)
                        url += '&idCurso=' + idCurso;
                }
                
                $(location).attr('href', url);
                
            });
        </script>
        <div class="text-center mt-4 pd-4">
            <img src="../../img/loading.gif" alt="Carregando...">
        </div>
    </body>
</html>
