package com.rh.managsys.beans;

public class Diplome {
   // DECLARATION DES OBJECTS
	
	private int id;
	private double salaire;
	private String titrediplome;
	private double indice;
	private double valeurpoint;
	private int categorieid;
	private int etat;
	
	// CONSTRUTEUR SANS PARAMETRE
	public Diplome() {
		super();
	}
	
	//CONSTRUCTEUR AVEC PARAMETRES
	public Diplome(int Id, double Salaire, String Titre, double Indice, double Valeur, int Categorie, int Etat) {
		setId(Id);
		setSalaire(Salaire);
		setTitrediplome(Titre);
		setIndice(Indice);
		setValeurpoint(Valeur);
		setCategorieid(Categorie);
		setEtat(Etat);
	}
	
	//GETTERS
		public int getId() {
			return id;
		}
		
		public double getSalaire() {
			return salaire;
		}
		
		public String getTitrediplome() {
			return titrediplome;
		}
		
		public double getIndice() {
			return indice;
		}
		
		public double getValeurpoint() {
			return valeurpoint;
		}
		
		public int getEtat() {
			return etat;
		}
		
		public int getCategorieid() {
			return categorieid;
		}
		
		
		//SETTERS
		
		public void setId(int Id) {
			this.id = Id;
		}
		
		public void setCategorieid(int Categorie) {
			this.categorieid=Categorie;
		}
		
		public void setTitrediplome(String Titre) {
			this.titrediplome=Titre;
		}
		
		public void setEtat(int Etat) {
			this.etat=Etat;
		}
		
		public void setIndice(double Indice) {
			this.indice=Indice;
		}
		
		public void setSalaire(double Salaire) {
			this.salaire=Salaire;
		}
		
		public void setValeurpoint(double Valeur) {
			this.valeurpoint=Valeur;
		}
	
}
