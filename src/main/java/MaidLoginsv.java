

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import maids.Dbconnection;

/**
 * Servlet implementation class MaidLoginsv
 */
@WebServlet("/MaidLoginsv")
public class MaidLoginsv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MaidLoginsv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usename = request.getParameter("username");
		  String password = request.getParameter("password");
		  Dbconnection dbcon=new Dbconnection();
		  if(dbcon.CheckCredentialsMaid(usename,password)) {
			  
			  HttpSession session = request.getSession();
			  session.setAttribute("username", password);

			  
			  response.sendRedirect("MaidHomepage.jsp");
		  }
		  else {
			  response.sendRedirect("MaidLoginForm.jsp");
		  }
		}
	}
