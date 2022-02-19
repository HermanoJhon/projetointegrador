package classes;
import java.sql.*;

public class Vagas {
	private int IdUsuario;
	private String nome;
	private String email;
	private String senha;
	
	public void Incluir() 
	{
		try {
			//conecta com BD
			ConectaBD cbd = new ConectaBD();
			Connection conn = cbd.Conectar();
			// inclusão modo objeto PreparedStatement
			String Sql = "insert into "
					+ "vagas(nome,email,senha)"
					+ "values(?,?,?)";
			PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);
			// inclusão modo objeto PreparedStatement - continuação
			comando.setString(1, nome);
			comando.setString(2, email);
			comando.setString(3, senha);
			comando.execute();
			comando.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public void Alterar() 
	{
		try{
			// conecta com BD
			ConectaBD cbd = new ConectaBD();
			Connection conn = cbd.Conectar();
			String Sql = "update vagas set nome = ?," + "email = ?," + "senha = ?,"	+ "where IdUsuario = ?";
			PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);
			comando.setString(1, nome);
			comando.setString(2, email);
			comando.setString(3, senha);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public void Excluir()
	{
		try {
			// conecta com BD
			ConectaBD cbd = new ConectaBD();
			Connection conn = cbd.Conectar();
			String Sql = "delete from vagas where idvaga = " + IdUsuario;
			PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);
			comando.execute();
			comando.close();
			conn.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public int getIdusuario() {
		return IdUsuario;
	}

	public void setIdusuario(int idusuario) {
		this.IdUsuario = idusuario;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

}
