package com.rh.managsys.beans;

public class Categorie {
 //DECLARATION DES OBJECTS
	
	private int id;
	private String categorie;
	private String titre;
	private int etat;
	
	//CONSTRUCTEUR SANS PARAMETRE
	
	public Categorie() {
		super();
	}
	
	//CONSTRUCTEUR AVEC PARAMETRE
	
	
	public Categorie(int Id, String Categorie, String Titre, int Etat) {
		super();
		setId(Id);
		setCategorie(Categorie);
		setTitre(Titre);
		setEtat(Etat);
	}
	
	//GETTERS
	public int getId() {
		return id;
	}
	
	public String getCategorie() {
		return categorie;
	}
	
	public String getTitre() {
		return titre;
	}
	
	public int getEtat() {
		return etat;
	}
	//SETTERS
	
	public void setId(int Id) {
		this.id = Id;
	}
	
	public void setCategorie(String Categorie) {
		this.categorie=Categorie;
	}
	
	public void setTitre(String Titre) {
		this.titre=Titre;
	}
	
	public void setEtat(int Etat) {
		this.etat=Etat;
	}
	
}
