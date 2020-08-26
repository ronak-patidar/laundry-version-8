package CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import common.DB_Connection1;

public class updateuser {
	
	public void upuser(String mobno,String status)
	{
		DB_Connection1 obj_DB_Connection1=new DB_Connection1();
		Connection connection=obj_DB_Connection1.get_connection();
		PreparedStatement ps=null;
		
try {
	
		//System.out.println(id);

		String query1= "update register1 set Account_status=? where mobno=?;";
		
		if(query1!=null)
		{
		ps=connection.prepareStatement(query1);
		ps.setString(1, status);
		ps.setString(2, mobno);
		ps.executeUpdate();
		}
		
			
	} catch (Exception e) {
		 System.err.println(e);
		}
	}

}
