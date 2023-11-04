package monPackage;



/*


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
		RequestDispatcher dispatcher = null;    
		Connection con = null;
        // Récupérer les données actuelles du profil de l'utilisateur depuis la base de données ou ailleurs
		
			 // Utiliser une source de données (DataSource) pour établir une connexion à la base de données
	        try {
	            Context context = new InitialContext();
	            DataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mydb");

	             try (Connection connection = dataSource.getConnection()){
			
			
PreparedStatement pst = con.prepareStatement("SELECT nom_prenom, nom_utilisateur, email FROM utilisateurs ");
PreparedStatement statement = null;
ResultSet resultSet = statement.executeQuery(); {
    if (resultSet.next()) {
        // Récupérer les données du profil depuis le résultat de la requête
    	String unp = resultSet.getString("np");
        String unom = resultSet.getString("nom");
        String uemail = resultSet.getString("email");
        
     // Définir les données du profil dans l'objet request
        request.setAttribute("np", unp);
        request.setAttribute("nom", unom);
        request.setAttribute("email", uemail);

    }
			
		
}
}catch (Exception e) {
    e.printStackTrace();
}

// Rediriger vers la page JSP pour afficher le profil
request.getRequestDispatcher("editProfile.jsp").forward(request, response);

    }
}
        // Vous pouvez utiliser une couche d'accès aux données (DAO) pour cela

        
       

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	  // Récupérer les données du formulaire de modification
    	String unp= request.getParameter("np");
		String unom= request.getParameter("nom");
		String uemail= request.getParameter("email");
		RequestDispatcher dispatcher = null;    
		Connection con = null;
		
		try {
			 Context context = new InitialContext();
	            DataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mydb"); // Remplacez "mydb" par le nom de votre source de données

	            try (Connection connection = dataSource.getConnection()) {
			// Exécuter une requête SQL pour mettre à jour les données du profil de l'utilisateur
			PreparedStatement pst = con.prepareStatement("UPDATE utilisateurs SET (nom_prenom,nom_utilisateur, email) values(?,?,?)");
			pst.setString(1, unp);
			pst.setString(2, unom);
			pst.setString(3, uemail);
			PreparedStatement statement = null;
			statement.executeUpdate();
		  
    
} catch (Exception e) {
    e.printStackTrace();
}

// Rediriger l'utilisateur vers sa page de profil mise à jour
response.sendRedirect("editProfile.jsp");

       
		}
}
    }*/