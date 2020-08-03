
/*
 * ADRIANO FONSECA DA COSTA
 * RGM.: 1514966-8
 *
 * RODRIGO ROCHA CAVALCANTE PEREIRA
 * RGM.: 1567611-1
 */

package DAO;
import Classes.Usuario;
import java.sql.*;

public class UsuarioDAO {
    
    private final ConnectionDAO con;

    public UsuarioDAO() {        
        con = new ConnectionDAO();        
    }    
    
    public boolean CadastrarUsuario(Usuario u) {
        try {
            
            String SQL = "INSERT INTO usuario (usuario, nome, senha, email) VALUES (?,?,?,?)";        
            PreparedStatement ps = con.getPreparedStatement(SQL);
            
            ps.setString(1, u.getUsuario());
            ps.setString(2, u.getNome());        
            ps.setString(3, u.getSenha());        
            ps.setString(4, u.getEmail());
            
            int res = con.executeUpdatePSTM(ps);
            con.closeConnections();
            
            return res > 0;
            
        } catch (SQLException ex) {
            con.closeConnections();
            return false;
        }
    }
    
    public boolean AlterarUsuario(Usuario u) {
        try {
            
            String SQL = "UPDATE usuario SET usuario = ?, nome = ?, senha = ?, email = ? WHERE id = ?";        
            PreparedStatement ps = con.getPreparedStatement(SQL);
            
            ps.setString(1, u.getUsuario());
            ps.setString(2, u.getNome());        
            ps.setString(3, u.getSenha());        
            ps.setString(4, u.getEmail());
            ps.setInt(5, u.getId());
            
            int res = con.executeUpdatePSTM(ps);
            con.closeConnections();
            
            return res > 0;
            
        } catch (SQLException ex) {
            con.closeConnections();
            return false;
        }
    }
    
    public Usuario ConsultarUsuario(String usuario, String senha) {        
        try {
            
            Usuario u = null;            
            ResultSet rs = con.executeQuerySTMT("SELECT * FROM usuario WHERE usuario = '" + usuario + "' AND senha = '" + senha + "'");
            
            if (rs.next()) {
                u = new Usuario();
                u.setId(rs.getInt("id"));
                u.setNome(rs.getString("nome"));
                u.setUsuario(rs.getString("usuario"));
                u.setEmail(rs.getString("email"));
                u.setSenha(rs.getString("senha"));
            }
            
            con.closeConnections();
            return u;
            
        } catch (SQLException ex) {
            con.closeConnections();
            return null;
        }        
    }
    
}
