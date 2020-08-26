package CRUD;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TT")
public class TT extends HttpServlet {
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	// String pickupdate = (String) request.getAttribute("pickupdate");
  		//System.out.println(pickupdate);
  		String shirts = (String) request.getAttribute("shirts");
		System.out.println(shirts);
	}

}
