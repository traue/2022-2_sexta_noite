<%@page import="java.util.Map"%>
<%@page import="br.sisacademico.model.Curso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setContentType("text/html; charset=UTF-8");
    request.setCharacterEncoding("UTF-8");
    Map<Curso, Integer> listaDeCursos = (Map) session.getAttribute("listaDeCursos");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cursos</title>
    </head>
    <body>
        <jsp:include page="../menu.jsp"></jsp:include>
            <script src="../../js/modalExclusao.js"></script>
            <script>
                $(function () {
                    $('[data-toggle="tooltip"]').tooltip();
                });
            </script>
            <div class="container mt-4 pt-4">
                <div class="table-responsive">
                    <table class="table justify-content-center">
                        <thead>
                        <th scope="col">Curso</th>
                        <th scope="col" class="text-center">Tipo de Curso</th>
                        <th scope="col" class="text-center">Qtd. de Alunos</th>
                        <th scope="col" class="text-center">Ver alunos</th>
                        <th scope="col" class="text-center">Editar</th>
                        <th scope="col" class="text-center">Excluir</th>
                        </thead>
                        <tbody>
                        <% for (Map.Entry<Curso, Integer> c : listaDeCursos.entrySet()) {%>
                        <tr>
                            <td><%= c.getKey().getNomeCurso()%></td>
                            <td class="text-center"><%= c.getKey().getTipoCurso()%></td>
                            <td class="text-center"><%= c.getValue()%></td>

                            <% if (c.getValue() == 0) { %>
                            <td class="text-center">
                                <span class="d-inline-block" data-toggle="tooltip" title="Sem alunos">
                                    <button class="btn btn-secondary" disabled 
                                            style="pointer-events: none;" type="button">Alunos Matriculados</button>
                                </span>
                            </td>
                            <% } else {%>
                            <td class="text-center">
                                <a href="./loader.jsp?pagina=aluno&idCurso=<%=c.getKey().getIdCurso()%>" class="btn btn-outline-info">Alunos Matriculados</a>
                            </td>
                            <% }%>

                            <td class="text-center">
                                <a class="btn btn-outline-success" href="../cadastros/curso.jsp?idCurso=<%=c.getKey().getIdCurso()%>">Editar</a>
                            </td>
                            <% if (c.getValue() != 0) { %>
                            <td class="text-center">
                                <span class="d-inline-block" data-toggle="tooltip" title="Sem alunos">
                                    <button class="btn btn-secondary" disabled 
                                            style="pointer-events: none;" type="button">Excluir</button>
                                </span>
                            </td>
                            <% } else {%>
                            <td class="text-center">
                                <a href="../CursoController?acao=exclusao&idCurso=<%=c.getKey().getIdCurso()%>" id="deleteCurso" class="btn btn-outline-danger">Excluir</a>
                            </td>
                            <% } %>
                        </tr>
                        <% }%>
                    </tbody>
                </table>
                <a href="../cadastros/curso.jsp" class="btn btn-success">Novo Curso</a>
            </div>
        </div>

    </body>
</html>
