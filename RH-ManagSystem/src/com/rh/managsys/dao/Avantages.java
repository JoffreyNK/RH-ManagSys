package com.rh.managsys.dao;

import java.sql.*;

import com.rh.managsys.beans.Avantage;
import com.rh.managsys.beans.utilisateurs;
import java.util.ArrayList;
import java.util.List;

public class Avantages extends dbConnexion{
	
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
    
    
    // Methode pour ajouter Avantage
    public void StoreAvantage( Avantage Avantage){
            try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
                pstm = conn.prepareStatement("INSERT INTO avantages (`critere`, `libelle`) VALUES (?,?);");
                pstm.setInt(1, Avantage.getCritere());
                pstm.setString(2, Avantage.getLibelle());
                pstm.executeUpdate();
                pstm.close();
            } catch (SQLException ex) {
                    System.out.println("Erreur lors d'enregistrement d'automobile ! " + ex.getLocalizedMessage());
                    ex.printStackTrace();
                    throw new RuntimeException( ex );
            }
    }
    
    // Methode pour afficher les Avantages
    public List<Avantage> getAllAvantages() {
    List<Avantage> Avants = new ArrayList<>();
    try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
	        String rqt = "select * from avantages where etat = 0 order by id desc ";
	        rs = conn.createStatement().executeQuery(rqt);
	        while (rs.next()) {
	        	Avantage Avant = new Avantage();
	        	Avant.setId(rs.getInt("id"));
	        	Avant.setCritere(rs.getInt("critere"));
	        	Avant.setLibelle(rs.getString("libelle"));
	            Avants.add(Avant);
            	}
        } catch (SQLException e) {
            	e.printStackTrace();
            	throw new RuntimeException( e);
        }

        return Avants;
    }
    
  //Methode pour Affiche le formulaire de modification	
    
    public Avantage editAvantage(String IdAv){
    	Avantage avant = new Avantage();
        try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
        	pstm = conn.prepareStatement("SELECT * FROM avantages WHERE etat=0 AND id=?");
	        pstm.setString(1, IdAv);
	        rs = pstm.executeQuery();
    	        while (rs.next()) {
    	        	avant.setId(rs.getInt("id"));
    	        	avant.setCritere(rs.getInt("critere"));
    	        	avant.setLibelle(rs.getString("libelle"));
                	}
            } catch (SQLException e) {
                	e.printStackTrace();
                	throw new RuntimeException( e);
            }
            return avant;
    }
    
    
    //Methode pour la modification	
    
    public void UpdateAvantage(Avantage A){
        try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
        	 pstm = conn.prepareStatement(" UPDATE avantages SET critere=?,libelle=? WHERE id=?");
             pstm.setInt(1, A.getCritere());
             pstm.setString(2, A.getLibelle());
             pstm.setInt(3, A.getId());
             pstm.executeUpdate();
             pstm.close();
             
            } catch (SQLException e) {
                	e.printStackTrace();
                	throw new RuntimeException( e);
            }
    }
    
    
      //Methode pour la Mise en corbeille	
    
    public void addCorbeilleAvantage(String Id){
        try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
        	pstm = conn.prepareStatement("UPDATE avantages SET etat=1 WHERE id=?");
	        pstm.setString(1, Id);
             pstm.executeUpdate();
             pstm.close();
             
            } catch (SQLException e) {
                	e.printStackTrace();
                	throw new RuntimeException( e);
            }
    }
    
  //Methode pour Affiche le formulaire de la Suppression	
    
    public Avantage SuppAvantage(int IdAv){
    	Avantage avant = new Avantage();
        try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
    	        String rqt = "delete from avantages where id=?";
    	        pstm = conn.prepareStatement(rqt);
    	        pstm.setInt( 1, IdAv );
    	        rs = pstm.executeQuery();
            } catch (SQLException e) {
                	e.printStackTrace();
                	throw new RuntimeException(e);
            }

            return avant;
    }
}
