package classes;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConectaBD {
	public String usuario="root";
	public String senha="123456";
	
	public Connection Conectar() throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/databasepi";
		java.sql.Connection conn = DriverManager.getConnection(url, usuario, senha);
		return conn;
	}
}
