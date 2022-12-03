package br.sisacademico.dao;

import br.sisacademico.model.Curso;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

public class CursoDAO {

    private static Statement stm = null;

    public Map<Curso, Integer> getCursosCountaAlunos(Integer... idCurso) throws SQLException {
        
        Map<Curso, Integer> cursos = new LinkedHashMap<>();
        
        String query = "SELECT "
                + " c.idCurso, "
                + " c.curso,"
                + " c.tipo_curso,"
                + " (SELECT COUNT(*)"
                + "    FROM aluno"
                + "    WHERE idCurso = c.idCurso) as qtdAlunos"
                + " FROM curso c";

        if (idCurso.length != 0) {
            query += " WHERE c.idCurso = " + idCurso[0];
        }

        query += " ORDER BY c.curso ";

        stm = ConnectionFactory.getConnection().createStatement(
                ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_READ_ONLY);

        ResultSet resultados = stm.executeQuery(query);

        while (resultados.next()) {
            Curso c = new Curso(
                    resultados.getInt("idCurso"),
                    resultados.getString("curso"),
                    resultados.getString("tipo_curso"));
            
            int qtdAlunos = resultados.getInt("qtdAlunos");
            
            cursos.put(c, qtdAlunos);
        }

        stm.getConnection().close();

        return cursos;
    }
}
