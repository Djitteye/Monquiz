package monPackage;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Connection
 */
@WebServlet("/connecter")
public class Connection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String unom= request.getParameter("nom");
		String upasse= request.getParameter("mpasse");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		try { 
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ikadev?useSSL=false", "Abdoulaye", "Djitteye5");
			PreparedStatement pst = ((java.sql.Connection) con).prepareStatement("SELECT * FROM utilisateurs WHERE nom_utilisateur=? AND mot_de_passe=? ");
			pst.setString(1, unom);
			pst.setString(2, upasse);
			
			ResultSet rs=pst.executeQuery();
			if (rs.next()) {
				session.setAttribute("unom", rs.getString("nom_utilisateur"));
				dispatcher = request.getRequestDispatcher("accueil.jsp");
			} else {
				request.setAttribute("status", "failed");
				dispatcher= request.getRequestDispatcher("connection.jsp");
			}
			dispatcher.forward(request, response);
	} catch  (Exception e) {
		e.printStackTrace();
		}
	}

}
