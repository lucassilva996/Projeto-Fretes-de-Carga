
/*
 * ADRIANO FONSECA DA COSTA
 * RGM.: 1514966-8
 *
 * RODRIGO ROCHA CAVALCANTE PEREIRA
 * RGM.: 1567611-1
 */

package Classes;

public class Protocolos {
    
    private int idPro;
    private int numProtocolo;
    private String remetente;
    private String destinatario;
    private String assunto;
    private String dataEnvio;
    private String dataRecepcao;

    public Protocolos() {
    }

    public Protocolos(int idPro, int numProtocolo, String remetente, String destinatario, String assunto, String dataEnvio, String dataRecepcao) {
        this.idPro = idPro;
        this.numProtocolo = numProtocolo;
        this.remetente = remetente;
        this.destinatario = destinatario;
        this.assunto = assunto;
        this.dataEnvio = dataEnvio;
        this.dataRecepcao = dataRecepcao;
    }
    
    public int getIdPro() {
        return idPro;
    }

    public void setIdPro(int idPro) {this.idPro = idPro;}

    public int getNumProtocolo() { return numProtocolo;  }

    public void setNumProtocolo(int numProtocolo) {this.numProtocolo = numProtocolo;}

    public String getRemetente() {return remetente;}

    public void setRemetente(String remetente) { this.remetente = remetente; }

    public String getDestinatario() {  return destinatario; }

    public void setDestinatario(String destinatario) { this.destinatario = destinatario; }

    public String getAssunto() {return assunto;}

    public void setAssunto(String assunto) {this.assunto = assunto;  }

    public String getDataEnvio() {return dataEnvio;}

    public void setDataEnvio(String dataEnvio) {this.dataEnvio = dataEnvio; }

    public String getDataRecepcao() { return dataRecepcao;}

    public void setDataRecepcao(String dataRecepcao) {this.dataRecepcao = dataRecepcao;}
    
    
    
    
    
}
