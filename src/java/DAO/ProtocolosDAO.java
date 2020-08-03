

package DAO;
import Classes.Protocolos;
import java.sql.*;

public class ProtocolosDAO {
    
    private final ConnectionDAO con;

    public ProtocolosDAO() {        
        con = new ConnectionDAO();        
    }
    
    public boolean CadastrarProtocolo(Protocolos p) {
        try {
            
            String SQL = "insert into protocolos(numProtocolo, remetente, destinatario, assunto, dataEnvio, dataRecepcao) VALUES(?,?,?,?,?,?)";
            PreparedStatement ps = con.getPreparedStatement(SQL);
            /*
            ps.setString(1, f.getMotorista());
            ps.setString(2, f.getCarga());        
            ps.setFloat(3, f.getPeso());        
            ps.setString(4, f.getOrigem());
            ps.setString(5, f.getDestino());
            ps.setFloat(6, f.getValor());        
            ps.setString(7, f.getData());        
            ps.setString(8, f.getDescricao());
            
            */
            
            ps.setInt(1, p.getNumProtocolo());
            ps.setString(2, p.getRemetente());
            ps.setString(3, p.getDestinatario());
            ps.setString(4, p.getAssunto());
            ps.setString(5, p.getDataEnvio());
            ps.setString(6, p.getDataRecepcao());
            
            int res = con.executeUpdatePSTM(ps);
            con.closeConnections();
            
            return res > 0;
            
        } catch (SQLException ex) {
            con.closeConnections();
            return false;
        }
    }
    
    public boolean AlterarProtocolo(Protocolos p) {
        try {
            
            String SQL = "UPDATE protocolos SET numProtocolo = ? , remetente = ? , destinatario = ? ,assunto = ? , dataEnvio = ? , dataRecepcao = ? WHERE idPro = ?";   
            PreparedStatement ps = con.getPreparedStatement(SQL);
            
           ps.setInt(1, p.getNumProtocolo());
            ps.setString(2, p.getRemetente());
            ps.setString(3, p.getDestinatario());
            ps.setString(4, p.getAssunto());
            ps.setString(5, p.getDataEnvio());
            ps.setString(6, p.getDataRecepcao());
            ps.setInt(9, p.getIdPro());
            
            int res = con.executeUpdatePSTM(ps);
            con.closeConnections();
            
            return res > 0;
            
        } catch (SQLException ex) {
            con.closeConnections();
            return false;
        }
    }
    
    public boolean ExcluirProtocolo(String idPro) {        
            
        String SQL = "DELETE FROM protocolos WHERE idPro = " + idPro;        
            
        int res = con.executeUpdateSTMT(SQL);
        con.closeConnections();
            
        return res > 0;           
        
    }
    
    public Protocolos ConsultarProtocolos(Protocolos p){
        try {
            
            String SQL = "SELECT * FROM protocolos WHERE idPro = " + p.getIdPro();
            
            ResultSet rs = con.executeQuerySTMT(SQL);
            Protocolos protocolo = null;
            
            if (rs.next()){                
                protocolo = new Protocolos(rs.getInt("idPro"),rs.getInt("numProtocolo"), rs.getString("remetente"), rs.getString("destinatario"), rs.getString("assunto"),rs.getString("dataEnvio"),rs.getString("dataRecepcao"));  
            }
            
            con.closeConnections();
            return protocolo;
            
        } catch (SQLException ex) {
            con.closeConnections();
            return null;
        }
    }
    
    public String ConsultarProtocolos(String field, String valor) {
        try {
            
            String campo;
            ResultSet rs;
            
            if (!field.equals("0")) {
                
                switch(field) {
                case "1": 
                    campo = "numProtocolo";
                    break;
                case "2": 
                    campo = "destinatario";
                    break;
                case "3": 
                    campo = "remetente";
                    break;
                case "4": 
                    campo = "assunto";
                    break;
                case "5": 
                    campo = "dataEnvio";
                    break;
                default: 
                    campo = "dataRecepcao";
                    break;
                }
                
                rs = con.executeQuerySTMT("SELECT * FROM protocolos WHERE " + campo + " LIKE '" + valor + "'");
                
            } else {                
                rs = con.executeQuerySTMT("SELECT * FROM protocolos");                
            }
                   
            String res = "<ROOT>";
            
            while (rs.next()) {
                res += "<TESTE>";
                res += "<idPro>" + rs.getString("idPro") + "</idPro>";
                res += "<numProtocolo>" + rs.getInt("numProtocolo") + "</numProtocolo>";
                res += "<remetente>" + rs.getString("remetente") + "</remetente>";
                res += "<destinatario>" + rs.getString("destinatario") + "</destinatario>";
                res += "<assunto>" + rs.getString("assunto") + "</assunto>";
                res += "<dataEnvio>" + rs.getString("dataEnvio") + "</dataEnvio>";
                res += "<dataRecepção>" + rs.getString("dataRecepcao") + "</dataRecepção>";
                res += "</TESTE>";
            }
            
            res += "</ROOT>";
            
            con.closeConnections();
            return res;
            
        } catch (SQLException ex) {
            con.closeConnections();
            return "<ROOT></ROOT>";
        }
    }
    
}
