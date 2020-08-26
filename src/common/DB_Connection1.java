package common;
import java.sql.Connection;
import java.sql.DriverManager;
public class DB_Connection1 {
	public static void main(String[] args) {
		DB_Connection1 obj_DB_Connection1=new DB_Connection1();
		System.out.println(obj_DB_Connection1.get_connection());
	}
	public Connection get_connection(){
		Connection connection=null;
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root", "Root@123");
		} catch (Exception e) {
			System.out.println(e);
		}
			return connection;
		}
}
