package com.rh.managsys.servelets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rh.managsys.beans.Categorie;
import com.rh.managsys.dao.Categories;
@WebServlet( urlPatterns = "/CategorieServ" )
public class CategorieServ extends HttpServlet{
	// Declaration des objets
    private final Categories meth;
    private Categorie Cat;
    private String cat;
    private int catId;
    private String forward="";
    private String operation;
    private static final String LISTE_CATEGORIE = "liste_categories.jsp";
    private static final String MODIFIER_CATEGORIE = "Modifier_categorie.jsp";
	private static final long serialVersionUID = 1L;
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public CategorieServ() {
        super();
        meth = new Categories();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            
            operation = request.getParameter("operation");
        
            switch (operation){
                case "afficher":
                    forward = LISTE_CATEGORIE;
                    request.setAttribute("Cats", meth.getAllCategories());
                    break;
                case "modifier_cat":
                     forward = MODIFIER_CATEGORIE;
                     cat = request.getParameter("IdCat");
                     Cat = meth.editCategorie(cat);
                     request.setAttribute("Cat", Cat);
                     break;
                case "suppr_cat":
                	forward = LISTE_CATEGORIE;
                	cat = request.getParameter("IdCat");
                    meth.addCorbeilleCategorie(cat);
                    request.setAttribute("Cats", meth.getAllCategories());
                    break;       
                default:
                    forward = LISTE_CATEGORIE;
                    request.setAttribute("Avants", meth.getAllCategories());
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
                    Cat = new Categorie();
                    Cat.setCategorie(request.getParameter("Categorie"));
                    Cat.setTitre(request.getParameter("Titre"));
                    meth.StoreCategorie(Cat);
                    break;
                    
                case "update":
                	forward = LISTE_CATEGORIE;
                	Cat = new Categorie();
                	Cat.setCategorie(request.getParameter("Categorie"));
                	Cat.setTitre(request.getParameter("Titre"));
                	Cat.setId(Integer.parseInt(request.getParameter("Idcat")));
                    meth.UpdateCategorie(Cat);
                    break;
                default:
                    response.sendRedirect("tableaudebord.jsp"); // /RH-ManagSys/pages/tableauDeBord/tableaudebord.jsp
                    break;
                    
            } 
            
            RequestDispatcher view = request.getRequestDispatcher(LISTE_CATEGORIE);
            request.setAttribute("Cats", meth.getAllCategories());
            view.forward(request, response);
            
        } catch (IOException e) {
            System.out.println("L'erreur est declacher au niveau du doPost du servelet Avantage : " + e.getLocalizedMessage());
            e.printStackTrace();
        }
        
		//doGet(request, response);
	}


}
