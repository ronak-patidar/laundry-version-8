package CRUD;
import java.sql.Connection;
import common.DB_Connection1;
import java.sql.PreparedStatement;
public class Regitster_insert {
	
	public void insert_value(String name,String email,String mobno,String psw,String repeat_psw,String city,String address,String account_status) {
		DB_Connection1 obj_DB_Connection1=new DB_Connection1();
		Connection connection=obj_DB_Connection1.get_connection();
		PreparedStatement ps=null;
		try {
			String usertype="user";
			String query="insert into register1 values('"+name+"','"+email+"','"+mobno+"','"+psw+"','"+repeat_psw+"','"+city+"','"+address+"','"+usertype+"','"+account_status+"');";
			 ps=connection.prepareStatement(query);
			 ps.executeUpdate();
	} catch (Exception e) {
		 System.err.println(e);
		}

}
}
