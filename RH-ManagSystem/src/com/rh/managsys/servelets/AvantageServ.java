package com.rh.managsys.servelets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.rh.managsys.beans.Avantage;
import com.rh.managsys.dao.Avantages;
@WebServlet( urlPatterns = "/AvantageServ" )
public class AvantageServ extends HttpServlet {
    
	// Declaration des objets
    private final Avantages meth;
    private Avantage Avant;
    private String avant;
    private int avantId;
    private String forward="";
    private String operation;
    private static final String LISTE_AVANTAGE = "listeAvantages.jsp";
    private static final String MODIFIER_AVANTAGE = "Modifier_Avantage.jsp";
	private static final long serialVersionUID = 1L;
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public AvantageServ() {
        super();
        meth = new Avantages();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            
            operation = request.getParameter("operation");
        
            switch (operation){
                case "afficher":
                    forward = LISTE_AVANTAGE;
                    request.setAttribute("Avants", meth.getAllAvantages());
                    break;
                case "modifier_avantage":
                     forward = MODIFIER_AVANTAGE;
                     avant = request.getParameter("IdAvan");
                     Avant = meth.editAvantage(avant);
                     request.setAttribute("Avant", Avant);
                     break;
                case "suppr_avantage":
                	forward = LISTE_AVANTAGE;
                	avant = request.getParameter("IdAvan");
                    meth.addCorbeilleAvantage(avant);
                    request.setAttribute("Avants", meth.getAllAvantages());
                    break;       
                default:
                    forward = LISTE_AVANTAGE;
                    request.setAttribute("Avants", meth.getAllAvantages());
                    break;
                
            }
              
            RequestDispatcher view = request.getRequestDispatcher(forward);
            view.forward(request, response);
            
        } catch (IOException | ServletException e) {
            System.out.println("L'erreur est declacher au niveau du doGet du servelet Employe : " + e.getLocalizedMessage());
            e.printStackTrace();
        }
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        try {
            operation = request.getParameter("operation");
            
            switch (operation){
                case "enregistrer":
                    Avant = new Avantage();
                    Avant.setCritere(Integer.parseInt(request.getParameter("Critere")));
                    Avant.setLibelle(request.getParameter("Libelle"));
                    meth.StoreAvantage(Avant);
                    break;
                    
                case "update":
                	forward = LISTE_AVANTAGE;
                	Avant = new Avantage();
                	Avant.setCritere(Integer.parseInt(request.getParameter("Critere")));
                    Avant.setLibelle(request.getParameter("Libelle"));
                    Avant.setId(Integer.parseInt(request.getParameter("Idav")));
                    meth.UpdateAvantage(Avant);
                    break;
                default:
                    response.sendRedirect("tableaudebord.jsp"); // /RH-ManagSys/pages/tableauDeBord/tableaudebord.jsp
                    break;
                    
            } 
            
            RequestDispatcher view = request.getRequestDispatcher(LISTE_AVANTAGE);
            request.setAttribute("Avants", meth.getAllAvantages());
            view.forward(request, response);
            
        } catch (IOException e) {
            System.out.println("L'erreur est declacher au niveau du doPost du servelet Avantage : " + e.getLocalizedMessage());
            e.printStackTrace();
        }
        
		//doGet(request, response);
	}


}
