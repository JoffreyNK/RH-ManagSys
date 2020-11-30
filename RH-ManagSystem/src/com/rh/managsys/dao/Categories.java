package com.rh.managsys.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.rh.managsys.beans.Categorie;

public class Categories extends dbConnexion {
	// Declaration des objets
    private static PreparedStatement pstm = null;
    private static Connection conn = null;
    private static ResultSet rs = null;
    private static Statement stm = null;
    
    
    // Methode pour ajouter Categorie
    public void StoreCategorie( Categorie Categorie){
            try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
                pstm = conn.prepareStatement("INSERT INTO categorie (`categorie`, `titre`) VALUES (?,?);");
                pstm.setString(1, Categorie.getCategorie());
                pstm.setString(2, Categorie.getTitre());
                pstm.executeUpdate();
                pstm.close();
            } catch (SQLException ex) {
                    System.out.println("Erreur lors d'enregistrement ! " + ex.getLocalizedMessage());
                    ex.printStackTrace();
                    throw new RuntimeException( ex );
            }
    }
    
    // Methode pour afficher les Categories
    public List<Categorie> getAllCategories() {
      List<Categorie> Cats = new ArrayList<>();
    try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
	        String rqt = "select * from categorie where etat = 0 order by id desc ";
	        rs = conn.createStatement().executeQuery(rqt);
	        while (rs.next()) {
	        	Categorie Cat = new Categorie();
	        	Cat.setId(rs.getInt("id"));
	        	Cat.setCategorie(rs.getString("Categorie"));
	        	Cat.setTitre(rs.getString("Titre"));
	        	Cats.add(Cat);
            	}
        } catch (SQLException e) {
            	e.printStackTrace();
            	throw new RuntimeException( e);
        }
        return Cats;
    }
    
  //Methode pour Affiche le formulaire de modification	
    
    public Categorie editCategorie(String IdCat){
    	Categorie Cat = new Categorie();
        try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
        	pstm = conn.prepareStatement("SELECT * FROM categorie WHERE etat=0 AND id=?");
	        pstm.setString(1, IdCat);
	        rs = pstm.executeQuery();
    	        while (rs.next()) {
    	        	Cat.setId(rs.getInt("id"));
    	        	Cat.setCategorie(rs.getString("categorie"));
    	        	Cat.setTitre(rs.getString("titre"));
                	}
            } catch (SQLException e) {
                	e.printStackTrace();
                	throw new RuntimeException( e);
            }
            return Cat;
    }
    
    
    //Methode pour la modification	
    
    public void UpdateCategorie(Categorie C){
        try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
        	 pstm = conn.prepareStatement(" UPDATE categorie SET categorie=?,titre=? WHERE id=?");
             pstm.setString(1, C.getCategorie());
             pstm.setString(2, C.getTitre());
             pstm.setInt(3, C.getId());
             pstm.executeUpdate();
             pstm.close();
             
            } catch (SQLException e) {
                	e.printStackTrace();
                	throw new RuntimeException( e);
            }
    }
    
    
      //Methode pour la Mise en corbeille	
    
    public void addCorbeilleCategorie(String Id){
        try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
        	pstm = conn.prepareStatement("UPDATE categorie SET etat=1 WHERE id=?");
	         pstm.setString(1, Id);
             pstm.executeUpdate();
             pstm.close();
             
            } catch (SQLException e) {
                	e.printStackTrace();
                	throw new RuntimeException( e);
            }
    }
    
  //Methode pour Affiche le formulaire de la Suppression	
    
    public Categorie SuppCategorie(int IdCat){
    	Categorie Cat = new Categorie();
        try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
    	        String rqt = "delete from categorie where id=?";
    	        pstm = conn.prepareStatement(rqt);
    	        pstm.setInt( 1, IdCat);
    	        rs = pstm.executeQuery();
            } catch (SQLException e) {
                	e.printStackTrace();
                	throw new RuntimeException(e);
            }
            return Cat;
    }
}
