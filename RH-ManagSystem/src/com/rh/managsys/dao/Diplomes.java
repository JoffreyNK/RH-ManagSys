package com.rh.managsys.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.rh.managsys.beans.Diplome;


public class Diplomes extends dbConnexion{
	// Declaration des objets
    private static PreparedStatement pstm = null;
    private static Connection conn = null;
    private static ResultSet rs = null;
    private static Statement stm = null;
    
        
    // Methode pour ajouter Diplome
    public void StoreDiplome( Diplome Diplome){
            try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
                pstm = conn.prepareStatement("INSERT INTO diplome (`salaire`, `titrediplome`, `indice`, `valeurpoint`, `categorieid`) VALUES (?,?,?,?,?);");
                pstm.setDouble(1, Diplome.getSalaire());
                pstm.setString(2, Diplome.getTitrediplome());
                pstm.setDouble(3, Diplome.getIndice());
                pstm.setDouble(4, Diplome.getValeurpoint());
                pstm.setInt(5, Diplome.getCategorieid());
                pstm.executeUpdate();
                pstm.close();
            } catch (SQLException ex) {
                    System.out.println("Erreur lors d'enregistrement ! " + ex.getLocalizedMessage());
                    ex.printStackTrace();
                    throw new RuntimeException( ex );
            }
    }
    
    // Methode pour afficher les Diplomes
    public List<Diplome> getAllDiplomes() {
    List<Diplome> Dips = new ArrayList<>();
    try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
	        String rqt = "select * from diplome where etat = 0 order by id desc ";
	        rs = conn.createStatement().executeQuery(rqt);
	        while (rs.next()) {
	        	Diplome Dip = new Diplome();
	        	Dip.setId(rs.getInt("id"));
	        	Dip.setSalaire(rs.getInt("salaire"));
	        	Dip.setTitrediplome(rs.getString("titrediplome"));
	        	Dip.setIndice(rs.getDouble("indice"));
	        	Dip.setValeurpoint(rs.getDouble("valeurpoint"));
	        	Dip.setCategorieid(rs.getInt("categorieid"));
	        	Dips.add(Dip);
            	}
        } catch (SQLException e) {
            	e.printStackTrace();
            	throw new RuntimeException( e);
        }

        return Dips;
    }
    
  //Methode pour Affiche le formulaire de modification	
    
    public Diplome editDiplome(String IdDip){
    	Diplome dip = new Diplome();
        try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
        	pstm = conn.prepareStatement("SELECT * FROM diplome WHERE etat=0 AND id=?");
	        pstm.setString(1, IdDip);
	        rs = pstm.executeQuery();
    	        while (rs.next()) {
    	        	dip.setId(rs.getInt("id"));
    	        	dip.setSalaire(rs.getInt("salaire"));
    	        	dip.setTitrediplome(rs.getString("titrediplome"));
    	        	dip.setIndice(rs.getDouble("indice"));
    	        	dip.setValeurpoint(rs.getDouble("valeurpoint"));
    	        	dip.setCategorieid(rs.getInt("categorieid"));
                	}
            } catch (SQLException e) {
                	e.printStackTrace();
                	throw new RuntimeException( e);
            }
            return dip;
    }
    
    
    //Methode pour la modification	
    
    public void UpdateDiplome(Diplome D){
        try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
        	 pstm = conn.prepareStatement(" UPDATE diplome SET salaire=?,titrediplome=?, indice=?, valeurpoint=?, categorieid=? WHERE id=?");
             pstm.setDouble(1, D.getSalaire());
             pstm.setString(2, D.getTitrediplome());
             pstm.setDouble(3, D.getIndice());
             pstm.setDouble(4, D.getValeurpoint());
             pstm.setInt(5, D.getCategorieid());
             pstm.setInt(6, D.getId());
             pstm.executeUpdate();
             pstm.close();
             
            } catch (SQLException e) {
                	e.printStackTrace();
                	throw new RuntimeException( e);
            }
    }
    
    
      //Methode pour la Mise en corbeille	
    
    public void addCorbeilleDiplome(String Id){
        try (Connection conn = DriverManager.getConnection(dbURL, dbLogin, dbPassword)){
        	pstm = conn.prepareStatement("UPDATE diplome SET etat=1 WHERE id=?");
	        pstm.setString(1, Id);
            pstm.executeUpdate();
            pstm.close();
             
            } catch (SQLException e) {
                	e.printStackTrace();
                	throw new RuntimeException( e);
            }
    }
    
  //Methode pour Affiche le formulaire de la Suppression	
    
}
