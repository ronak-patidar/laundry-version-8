package CRUD;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/clothes_servlet")
public class clothes_servlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session= request.getSession();
		if(session.getAttribute("washandfold")!=null)
		{
		
		
		 String shirts= request.getParameter("shirts");
		 String tshirts= request.getParameter("tshirts");
		 String jeans= request.getParameter("jeans");
		 String trousers= request.getParameter("trousers");
		 String sarees= request.getParameter("sarees");
		 String totalamount= request.getParameter("amounttobepaid");
		 session.setAttribute("shirts", shirts);
		 session.setAttribute("tshirts", tshirts);
		 session.setAttribute("jeans", jeans);
		 session.setAttribute("trousers", trousers);
		 session.setAttribute("sarees", sarees);
		 session.setAttribute("totalamount", totalamount);
		 response.sendRedirect("book.jsp");
		}
		
		else if(session.getAttribute("washandiron")!=null)
		{
			
			 String shirts= request.getParameter("shirts");
			 String tshirts= request.getParameter("tshirts");
			 String jeans= request.getParameter("jeans");
			 String trousers= request.getParameter("trousers");
			 String sarees= request.getParameter("sarees");
			 String totalamount= request.getParameter("amounttobepaid");
			 session.setAttribute("shirts", shirts);
			 session.setAttribute("tshirts", tshirts);
			 session.setAttribute("jeans", jeans);
			 session.setAttribute("trousers", trousers);
			 session.setAttribute("sarees", sarees);
			 session.setAttribute("totalamount", totalamount);
			 response.sendRedirect("book.jsp");
			
		}
		
		else if(session.getAttribute("dryclean")!=null)
		{
			
			 String shirts= request.getParameter("shirts");
			 String tshirts= request.getParameter("tshirts");
			 String jeans= request.getParameter("jeans");
			 String trousers= request.getParameter("trousers");
			 String sarees= request.getParameter("sarees");
			 String totalamount= request.getParameter("amounttobepaid");
			 session.setAttribute("shirts", shirts);
			 session.setAttribute("tshirts", tshirts);
			 session.setAttribute("jeans", jeans);
			 session.setAttribute("trousers", trousers);
			 session.setAttribute("sarees", sarees);
			 session.setAttribute("totalamount", totalamount);
			 response.sendRedirect("book.jsp");
			
		}
		
		
		else if(session.getAttribute("helmet")!=null)
		{
			String chelmet= request.getParameter("chelmet");
			String totalamount= request.getParameter("amounttobepaid");
			 session.setAttribute("chelmet", chelmet);
			 session.setAttribute("totalamount", totalamount);
			response.sendRedirect("book.jsp");
			
		}
	
		else if(session.getAttribute("shoes")!=null)
		{
			String cshoes= request.getParameter("cshoes");
			String totalamount= request.getParameter("amounttobepaid");
			session.setAttribute("cshoes", cshoes);
			 session.setAttribute("totalamount", totalamount);
			
			response.sendRedirect("book.jsp");
			
		}
		
		else if(session.getAttribute("iron")!=null)
		{
			 String shirts= request.getParameter("shirts");
			 String tshirts= request.getParameter("tshirts");
			 String jeans= request.getParameter("jeans");
			 String trousers= request.getParameter("trousers");
			 String sarees= request.getParameter("sarees");
			 String totalamount= request.getParameter("amounttobepaid");
			 session.setAttribute("shirts", shirts);
			 session.setAttribute("tshirts", tshirts);
			 session.setAttribute("jeans", jeans);
			 session.setAttribute("trousers", trousers);
			 session.setAttribute("sarees", sarees);
			 session.setAttribute("totalamount", totalamount);
			response.sendRedirect("book.jsp");
			
		}
		
	}

}
