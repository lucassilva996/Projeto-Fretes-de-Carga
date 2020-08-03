
/*
 * ADRIANO FONSECA DA COSTA
 * RGM.: 1514966-8
 *
 * RODRIGO ROCHA CAVALCANTE PEREIRA
 * RGM.: 1567611-1
 */

package Classes;

public class Usuario {
    
    private int id;
    private String nome;
    private String usuario;
    private String email;
    private String senha;

    public Usuario() { }    
    
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    
    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public String getUsuario() { return usuario; }
    public void setUsuario(String usuario) { this.usuario = usuario; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getSenha() { return senha; }
    public void setSenha(String senha) { this.senha = senha; }
    
}
