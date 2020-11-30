package com.rh.managsys.beans;

public class Retenu {
	
  //DECLARATION DES OBJECTS
	private int id;
	private int etat;
	private String libelle;
	
 //CONSTRUCTEUR SANS PARAMETRE
	
	public Retenu() {
		super();
	}
	
	//CONSTRUCTEUR SANS PARAMETRE
	
	public Retenu(int Id, String Libelle, int Etat) {
		super();
	 	setId(Id);
	 	setLibelle(Libelle);
	 	setEtat(Etat);
	}
	
	//GETTERS
	public int getId() {
		return this.id;
	}
	
	public String getLibelle() {
		return this.libelle;
	}
	
	public int getEtat() {
		return this.etat;
	}
	
	//SETTERS
	
	public void setId(int Id) {
		this.id = Id;
	}
	
	public void setLibelle(String Libelle) {
		this.libelle = Libelle;
	}
	
	public void setEtat(int Etat) {
		this.etat = Etat;
	}
}
