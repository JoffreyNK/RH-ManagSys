package com.rh.managsys.servelets;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rh.managsys.beans.Employer;
import com.rh.managsys.dao.Employes;
@WebServlet( urlPatterns = "/EmployeSrv" )
public class EmployeSrv extends HttpServlet {
	
    // Declaration des objets
    private final Employes meth;
    private Employer emp;
    //private List<Agences> codes = new ArrayList<>();
    private String forward="";
    private String userId;
    private String operation;
    private static final String LIST_EMPL = "listeEmployes.jsp";
    private static final String NOUVEL_PERSO = " ";
    private static final String INSERT_OR_EDIT = " ";
    private static final String MODIFIER_PERSO = " ";
    private static final String LIST_PERSO_SUPPR = " ";
    private static final String MODIFIER_PROFIL = " ";
    
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeSrv() {
        super();
        meth = new Employes();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            
            operation = request.getParameter("operation");
        
            switch (operation){
                case "afficher":
                    forward = LIST_EMPL;
                    request.setAttribute("emps", meth.getAllEmployes());
                    break;
                
                default:
                    forward = LIST_EMPL;
                    request.setAttribute("emps", meth.getAllEmployes());
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
                    emp = new Employer();
                    emp.setNom(request.getParameter("Nom").toUpperCase());
                    emp.setPrenom(request.getParameter("Prenom"));
                    emp.setAdresse(request.getParameter("Adresse"));
                    emp.setTelephone(request.getParameter("Telephone"));
                    emp.setEmail(request.getParameter("Email"));
                    emp.setMatricule(request.getParameter("Matricule"));
                    emp.setPassword(request.getParameter("Motdepasse"));
                    emp.setSexe(request.getParameter("Sexe"));
                    emp.setDateNaissance(Date.valueOf(request.getParameter("dateNaissance")));
                    emp.setMobile(request.getParameter("Mobile"));
                    emp.setNNI(request.getParameter("NNI"));
                    emp.setNSS(request.getParameter("NSS"));
                    emp.setEtatCivil(request.getParameter("EtatCicil"));
                    emp.setEnfants(Integer.parseInt(request.getParameter("Enfants")));
                    emp.setVille(request.getParameter("Ville"));
                    emp.setPays(request.getParameter("Pays"));
                    emp.setPhoto(request.getParameter("Photo"));
                    emp.setBq_nom(request.getParameter("bqNom"));
                    emp.setBq_numero(request.getParameter("bqNumero"));
                    emp.setBq_adresse(request.getParameter("bqAdresse"));
                    emp.setBq_ville(request.getParameter("bqVille"));
                    emp.setPc_nom(request.getParameter("pcNom"));
                    emp.setPc_telephone(request.getParameter("pcTelephone"));
                    
                        meth.ajouterEmploye(emp);
                    break;
                default:
                    response.sendRedirect("tableaudebord.jsp"); // /RH-ManagSys/pages/tableauDeBord/tableaudebord.jsp
                    break;
                    
            } 
            
            RequestDispatcher view = request.getRequestDispatcher(LIST_EMPL);
            request.setAttribute("emps", meth.getAllEmployes());
            view.forward(request, response);
            
        } catch (IOException e) {
            System.out.println("L'erreur est declacher au niveau du doPost du servelet Employer : " + e.getLocalizedMessage());
            e.printStackTrace();
        }
        
		//doGet(request, response);
	}

}
