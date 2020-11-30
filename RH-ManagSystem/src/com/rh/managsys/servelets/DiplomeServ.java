package com.rh.managsys.servelets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rh.managsys.beans.Diplome;
import com.rh.managsys.dao.Diplomes;
import com.rh.managsys.dao.Categories;

@WebServlet( urlPatterns = "/DiplomeServ" )
public class DiplomeServ extends HttpServlet {
	// Declaration des objets
    private final Diplomes meth;
    private final Categories methC;
    private Diplome Dip;
    private String dip;
    private int dipId;
    private String forward="";
    private String operation;
    private static final String LISTE_DIPLOME = "liste_diplomes.jsp";
    private static final String MODIFIER_DIPLOME = "Modifier_diplome.jsp";
	private static final long serialVersionUID = 1L;
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public DiplomeServ() {
        super();
        meth = new Diplomes();
        methC = new Categories();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            
            operation = request.getParameter("operation");
        
            switch (operation){
                case "afficher":
                    forward = LISTE_DIPLOME;
                    request.setAttribute("Dips", meth.getAllDiplomes());
                    request.setAttribute("Cats", methC.getAllCategories());
                    break;
                case "modifier_dip":
                     forward = MODIFIER_DIPLOME;
                     dip = request.getParameter("IdDip");
                     Dip = meth.editDiplome(dip);
                     request.setAttribute("Dip", Dip);
                     request.setAttribute("Cats", methC.getAllCategories());
                     break;
                case "suppr_dip":
                	forward = LISTE_DIPLOME;
                	dip = request.getParameter("IdDip");
                    meth.addCorbeilleDiplome(dip);
                    request.setAttribute("Dips", meth.getAllDiplomes());
                    request.setAttribute("Cats", methC.getAllCategories());
                    break;       
                default:
                    forward = LISTE_DIPLOME;
                    request.setAttribute("Dips", meth.getAllDiplomes());
                    request.setAttribute("Cats", methC.getAllCategories());
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
                    Dip = new Diplome();
                    Dip.setSalaire(Double.parseDouble(request.getParameter("Salaire")));
                    Dip.setTitrediplome(request.getParameter("Titre"));
                    Dip.setIndice(Double.parseDouble(request.getParameter("Indice")));
                    Dip.setValeurpoint(Double.parseDouble(request.getParameter("Valeur")));
                    Dip.setCategorieid(Integer.parseInt(request.getParameter("Categorie")));
                    meth.StoreDiplome(Dip);
                    break;
                    
                case "update":
                	forward = LISTE_DIPLOME;
                	Dip = new Diplome();
                	Dip.setSalaire(Double.parseDouble(request.getParameter("Salaire")));
                    Dip.setTitrediplome(request.getParameter("Titre"));
                    Dip.setIndice(Double.parseDouble(request.getParameter("Indice")));
                    Dip.setValeurpoint(Double.parseDouble(request.getParameter("Valeur")));
                    Dip.setCategorieid(Integer.parseInt(request.getParameter("Categorie")));
                    Dip.setId(Integer.parseInt(request.getParameter("Id")));
                    meth.UpdateDiplome(Dip);
                    break;
                default:
                    response.sendRedirect("tableaudebord.jsp"); // /RH-ManagSys/pages/tableauDeBord/tableaudebord.jsp
                    break;
                    
            } 
            
            RequestDispatcher view = request.getRequestDispatcher(LISTE_DIPLOME);
            request.setAttribute("Dips", meth.getAllDiplomes());
            request.setAttribute("Cats", methC.getAllCategories());
            view.forward(request, response);
            
        } catch (IOException e) {
            System.out.println("L'erreur est declacher au niveau du doPost du servelet Avantage : " + e.getLocalizedMessage());
            e.printStackTrace();
        }
        
		//doGet(request, response);
	}


}
