package br.sisacademico.dao;

import br.sisacademico.model.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {

    public Usuario autentica(String userName, String passoword) {
        Usuario user = new Usuario();
        
        String query = "SELECT "
                + "	idUsuario, usuario"
                + " FROM usuario"
                + " WHERE"
                + "  usuario = ? AND"
                + "  senha = ?";
        
        try {
            
            PreparedStatement stm = ConnectionFactory.getConnection()
                    .prepareStatement(query);
            
            stm.setString(1, userName);
            stm.setString(2, passoword);
            
            ResultSet resultado = stm.executeQuery();
           
            while(resultado.next()) {
                user.setIdUsuario(resultado.getInt("idUsuario"));
                user.setUsername(userName);
                user.setAutenticado(true);
            }
            
            return user;
            
        } catch (SQLException ex) {
            
            return null;
        }
    }
}
