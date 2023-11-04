package monPackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Inscription
 */
@WebServlet("/s'inscrir")
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String unp= request.getParameter("np");
		String unom= request.getParameter("nom");
		String uemail= request.getParameter("email");
		String upasse= request.getParameter("mpasse");
		RequestDispatcher dispatcher = null;    
		Connection con = null;
		
		HttpSession session = request.getSession();
		session.setAttribute("unom", unom);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ikadev?useSSL=false", "Abdoulaye", "Djitteye5");
			PreparedStatement pst = con
					
					.prepareStatement("insert into utilisateurs(nom_prenom,nom_utilisateur,email,mot_de_passe) values(?,?,?,?) ");
			pst.setString(1, unp);
			pst.setString(2, unom);
			pst.setString(3, uemail);
			pst.setString(4, upasse); 
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("connection.jsp");
			if (rowCount > 0) {
				request.setAttribute("status", "success");	 
			}else {
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
		
		}catch (Exception e) {
			e.printStackTrace();
			
		}finally{
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			
		}
	}

}
