package CRUD;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/wash")
public class wash extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String washandfold= request.getParameter("washandfold");
		 String washandiron= request.getParameter("washandiron");
		 String iron= request.getParameter("iron");
		 String helmet= request.getParameter("helmet");
		 String shoes= request.getParameter("shoes");
		 String dryclean= request.getParameter("dryclean");
		 
		
		 
		HttpSession session=request.getSession();
		session.setAttribute("washandfold",washandfold);
		
		session.setAttribute("washandiron",washandiron);
		session.setAttribute("iron",iron);
		session.setAttribute("helmet",helmet);
		session.setAttribute("shoes",shoes);
		session.setAttribute("dryclean",dryclean);
		response.sendRedirect("clothes.jsp");
	      }
	}


