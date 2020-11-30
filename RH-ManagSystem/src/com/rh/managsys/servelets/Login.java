package com.rh.managsys.servelets;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rh.managsys.beans.utilisateurs;
import com.rh.managsys.dao.Employes;
import com.rh.managsys.dao.dbConnexion;

/**
 * Servlet implementation class Login
 */
@WebServlet(urlPatterns="/login", loadOnStartup = 1)
public class Login extends HttpServlet {
	
    // Declaration des objets
    Connection conn = null; 
    PreparedStatement ptm;
    ResultSet rs;
    private String login;
    private String password;
    private utilisateurs connectedUser;
    private HttpSession session;
    private String roles;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
    }
    
    @Override
    public void init() throws ServletException {
    		dbConnexion.init(this.getServletContext());
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute( "login", "" );
        request.setAttribute( "password", "" );
        request.setAttribute( "errorMessage", "" );
		request.getRequestDispatcher("/login.jsp").forward(request, response);
		//response.getWriter().append("Text simple ici : ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        login = request.getParameter( "username" );
        password = request.getParameter( "password" );
        
        request.setAttribute( "login", login );
        request.setAttribute( "password", password );
        
        connectedUser = Employes.isValidLogin( login, password );
        if ( connectedUser != null ) {
            
                session = request.getSession( true );
                
                session.setAttribute( "role", connectedUser.getFonction() );
                //session.setAttribute( "photoProfils", connectedUser.getLienPhotos() );
                roles = (String) session.getAttribute("role");
                
                switch (roles){
                    case "Administrateur":
                        session.setAttribute( "id", connectedUser.getIdUser() );
                        session.setAttribute( "username", connectedUser.getUsername() );
                        response.sendRedirect("tableaudebord.jsp");
                        break;
                    default:
                    	response.sendRedirect("/login.jsp");
                        break;
                }
                
        } else {
        
        	request.setAttribute( "errorMessage", "Identifiant ou Mot de passe incorrect" );
        	request.getRequestDispatcher("/login.jsp").forward(request, response);
            
        }
		//doGet(request, response);
		
	}

}
