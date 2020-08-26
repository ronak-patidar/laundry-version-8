package CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import common.DB_Connection1;

public class delete_ord {
	
	public void Delete_ord(String id)
	{
		DB_Connection1 obj_DB_Connection1=new DB_Connection1();
		Connection connection=obj_DB_Connection1.get_connection();
		PreparedStatement ps=null;
		
try {
	
		//System.out.println(id);
		
		String query1= "delete from orderclothes1 where OrderNo=?;";
		String query2= "delete from orderothers1 where OrderNo=?;";
		if(query1!=null)
		{
		ps=connection.prepareStatement(query1);
		ps.setString(1, id);
		ps.executeUpdate();
		}
		if(query2!=null)
		{
			ps=connection.prepareStatement(query2);
			ps.setString(1, id);
			ps.executeUpdate();	
		}
			
	} catch (Exception e) {
		 System.err.println(e);
		}
	}

}
