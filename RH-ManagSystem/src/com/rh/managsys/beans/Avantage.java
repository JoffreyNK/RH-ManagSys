package com.rh.managsys.beans;

public class Avantage {
 
	// DECLARATION DES OBJETS
	
	private int id;
	private String libelle;
	private int critere;
	private int etat;
	
	// CONSTRUCTEUR SANS PARAMETRE
	
	public Avantage() {
		super();
	}
	
	//CONTRUCTEUR AVEC PARAMETRE
	
	public Avantage(int id, String libelle, int critere, int etat) {
		super();
		setId(id);
		setLibelle(libelle);
		setCritere(critere);
		setEtat(etat);
	}

	// LES GETTERS ET SETTERS
	public int getId() {
		return id;
	}

	public void setId(int idAv) {
		this.id = idAv;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String Libelle) {
		this.libelle = Libelle;
	}

	public int getCritere() {
		return critere;
	}

	public void setCritere(int Critere) {
		this.critere = Critere;
	}
	
	public int getEtat() {
		return etat;
	}

	public void setEtat(int Etat) {
		this.etat = Etat;
	}
	
}
