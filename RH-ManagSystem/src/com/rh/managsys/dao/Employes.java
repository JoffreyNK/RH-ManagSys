package com.rh.managsys.dao;

import java.sql.*;

import com.rh.managsys.beans.Employer;
import com.rh.managsys.beans.utilisateurs;
import java.util.ArrayList;
import java.util.List;

public class Employes extends dbConnexion{
	
    // Declaration des objets
    private static PreparedStatement pstm = null;
    private static Connection conn = null;
    private static ResultSet rs = null;
    private static Statement stm = null;
    
    // Methode pour l'authentification
    public static utilisateurs isValidLogin( String login, String password) {
        
        try(Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
            	String strSql = "SELECT * FROM t_users WHERE username=? AND password=? ";
                pstm  = conn.prepareStatement( strSql );
                pstm.setString( 1, login );
                pstm.setString( 2, password );
                
                try ( ResultSet resultSet = pstm.executeQuery() ) {
                    if ( resultSet.next() ) {
                        return new utilisateurs(
                        		resultSet.getInt( "id" ),
                                resultSet.getString( "username" ),
                                resultSet.getString( "password" ),
                                resultSet.getString( "fonction" )
                        );
                    } else {
                        return null;
                    }
                }
        } catch ( SQLException ex ) {
            System.out.println("Les identifiants Error -->" + ex.getMessage());
            throw new RuntimeException( ex );
        }
    }
    
    
    // Methode pour ajouter employe
    public void ajouterEmploye( Employer employer){
            try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
                pstm = conn.prepareStatement("INSERT INTO employe (`nom`, `prenom`, `adresse`, `telephone`, `email`, `matricule`, `password`, `sexe`, `date_naissance`, `mobile`, `NNI`, `NSS`, `statut_matrimonial`, `enfant`, `ville`, `pays`, `photo`, `bq_nom`, `bq_numero`, `bq_adresse`, `bq_ville`, `pc_nom`, `pc_telephone`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
                pstm.setString(1, employer.getNom());
                pstm.setString(2, employer.getPrenom());
                pstm.setString(3, employer.getAdresse());
                pstm.setString(4, employer.getTelephone());
                pstm.setString(5, employer.getEmail());
                pstm.setString(6, employer.getMatricule());
                pstm.setString(7, employer.getPassword());
                pstm.setString(8, employer.getSexe());
                pstm.setDate(9, employer.getDateNaissance());
                pstm.setString(10, employer.getMobile());
                pstm.setString(11, employer.getNNI());
                pstm.setString(12, employer.getNSS());
                pstm.setString(13, employer.getEtatCivil());
                pstm.setInt(14, employer.getEnfants());
                pstm.setString(15, employer.getVille());
                pstm.setString(16, employer.getPays());
                pstm.setString(17, employer.getPhoto());
                pstm.setString(18, employer.getBq_nom());
                pstm.setString(19, employer.getBq_numero());
                pstm.setString(20, employer.getBq_adresse());
                pstm.setString(21, employer.getBq_ville());
                pstm.setString(22, employer.getPc_nom());
                pstm.setString(23, employer.getPc_telephone());
                
                pstm.executeUpdate();
                pstm.close();
            } catch (SQLException ex) {
                    System.out.println("Erreur lors d'enregistrement d'automobile ! " + ex.getLocalizedMessage());
                    ex.printStackTrace();
                    throw new RuntimeException( ex );
            }
    }
    
    // Methode pour afficher les utilisateurs
    public List<Employer> getAllEmployes() {
    List<Employer> emps = new ArrayList<>();
    try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
	        String rqt = "select * from employe where etat = 0 order by id desc ";
	        rs = conn.createStatement().executeQuery(rqt);
	        while (rs.next()) {
	        	Employer emp = new Employer();
	        		emp.setNom(rs.getString("nom"));
	                emp.setPrenom(rs.getString("prenom"));
	                emp.setAdresse(rs.getString("adresse"));
	                emp.setDateNaissance(Date.valueOf(rs.getString("date_naissance")));
	                emp.setTelephone(rs.getString("telephone"));
	                emps.add(emp);
            	}
        } catch (SQLException e) {
            	e.printStackTrace();
            	throw new RuntimeException( e);
        }

        return emps;
    }
    
	
}
