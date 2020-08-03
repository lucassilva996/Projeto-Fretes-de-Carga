
/*
 * ADRIANO FONSECA DA COSTA
 * RGM.: 1514966-8
 */

package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionDAO {
    
    // -------- [INI] ---------------- [Propriedades] -------------->
    private Connection con;
    private Statement stmt;
    private PreparedStatement pstm;
    private ResultSet rs;
    
    private String serverName;
    private String dataBase;
    
    private String userName;
    private String password;    
    // -------- [FIM] ---------------- [Propriedades] -------------->

    // -------- [INI] ---------------- [Construtores Públicos] ----->
    public ConnectionDAO() {
        
        this.Default();        
        this.Initialization();
        
    }    
    public ConnectionDAO(String serverName, String dataBase) {
        
        this.Default();
        
        // --- Banco de Dados
        this.serverName = serverName;
        this.dataBase = dataBase;
        
        this.Initialization();
        
    }    
    public ConnectionDAO(String serverName, String dataBase, String userName, String password) {
        
        this.Default();
        
        // --- Banco de Dados
        this.serverName = serverName;
        this.dataBase = dataBase;
        
        // --- Login e Senha do Banco
        this.userName = userName;
        this.password = password;
        
        this.Initialization();
        
    }
    // -------- [FIM] ---------------- [Construtores Públicos] ----->
    
    // -------- [INI] ---------------- [Métodos Privados] ---------->
    private void Default() {
        
        // --- Propriedades de Conexão
        this.con = null;
        this.stmt = null;
        this.pstm = null;
        this.rs = null;
        
        // --- Banco de Dados
        this.serverName = "localhost";
        this.dataBase = "projeto";
        
        // --- Login e Senha do Banco
        this.userName = "root";
        this.password = "root";
        
    }    
    private void Initialization() {
        
        try {

            // --- Carregando o JDBC Driver
            final String driverName = "com.mysql.jdbc.Driver";
            Class.forName(driverName);

            // --- Criando a Conexão com o Banco de Dados
            final String url = "jdbc:mysql://" + getServerName() + "/" + getDataBase();
            con = DriverManager.getConnection(url, getUserName(), getPassword());
            
        } catch (ClassNotFoundException e){
            System.err.println("Método: Initialization() - Driver não encontrado: " + e.toString());            
        } catch (SQLException e) {
            System.err.println("Método: Initialization() - Erro ao executar SQL: " + e.toString());            
        }
        
    }
    // -------- [FIM] ---------------- [Métodos Privados] ---------->

    // -------- [INI] ---------------- [Métodos Públicos] ---------->
    public Connection getConnection() { return con; }
    
    public Statement getStatement() { 
        
        try {            
            this.stmt = getConnection().createStatement();            
        } catch (SQLException e) {
           System.err.println("Método: getStatement() - " + e.toString());
        }
        
        return stmt;
        
    }
    public PreparedStatement getPreparedStatement(String SQL) {
        
        try {            
            this.pstm = getConnection().prepareStatement(SQL);  
        } catch (SQLException e) {
            System.err.println("Método: getPreparedStatement() - " + e.toString());
        }
        
        return pstm;
        
    }
    
    public ResultSet executeQuerySTMT(String SQL) {
        
        try {
            this.rs = getStatement().executeQuery(SQL);
        } catch (SQLException e) {
            System.err.println("Método: executeQuerySTMT() - " + e.toString());            
        }
        
        return rs;
        
    }
    public ResultSet executeQueryPSTM(PreparedStatement pstm) {
        
        try {
            this.rs = pstm.executeQuery();
        } catch (SQLException e) {
            System.err.println("Método: executeQueryPSTM() - " + e.toString());            
        }
        
        return rs;
        
    }
    
    public int executeUpdateSTMT(String SQL) {
        
        int res = -1;
        
        try {
            res = getStatement().executeUpdate(SQL);
        } catch (SQLException e) {
            System.err.println("Método: executeUpdateSTMT() - " + e.toString());
        }
        
        return res;
        
    }
    public int executeUpdatePSTM(PreparedStatement pstm) {
        
        int res = -1;
        
        try {
            res = pstm.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Método: executeUpdatePSTM() - " + e.toString());
        }
        
        return res;
        
    }
    
    public boolean closeConnections() {
        
        try {
            
            if (pstm != null) { pstm.close(); }
            if (stmt != null) { stmt.close(); }
            if (rs != null) { rs.close(); }
            if (con != null) { con.close(); }
            
            return true;
            
        } catch (SQLException e) {
            System.err.println("Método: closeConnections() - " + e.toString());
            return false;
        }        
        
    }

    public String getServerName() { return serverName; }
    public String getDataBase() { return dataBase; }
    public String getUserName() { return userName; }
    public String getPassword() { return password; }
    // -------- [FIM] ---------------- [Métodos Públicos] ---------->
    
}
