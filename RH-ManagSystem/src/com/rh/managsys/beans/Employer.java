package com.rh.managsys.beans;

import java.sql.Date;

public class Employer {
	
	// DECLARATION DES OBJETS
		private int idEmp;
		private String nom;
		private String prenom;
		private String adresse;
		private String telephone;
		private String email;
		private String matricule;
		private String password;
		private String sexe;
		private Date dateNaissance;
		private String mobile;
		private String NNI;
		private String NSS;
		private String etatCivil;
		private int enfants;
		private String ville;
		private String pays;
		private String photo;
		private String bq_nom;
		private String bq_numero;
		private String bq_adresse;
		private String bq_ville;
		private String pc_nom;
		private String pc_telephone;
		
		// CONSTRUCTEUR SANS PARAMETRE
		public Employer() {
			super();
		}


		// CONSTRUCTEUR AVEC PARAMETRE
		public Employer(int idEmp, String nom, String prenom, String adresse, String telephone, String email,String matricule, String password, String sexe, Date dateNaissance, String mobile, String nNI, 
											String nSS, String etatCivil, int enfants, String ville, String pays, String photo, String bq_nom, String bq_numero, String bq_adresse, String bq_ville, String pc_nom, String pc_telephone) {
			super();
			setIdEmp(idEmp);
			setNom(nom);
			setPrenom(prenom);
			setAdresse(adresse);
			setTelephone(telephone);
			setEmail(email);
			setMatricule(matricule);
			setPassword(password);
			setSexe(sexe);
			setDateNaissance(dateNaissance);
			setMobile(mobile);
			setNNI(nNI);
			setNSS(nSS);
			setEtatCivil(etatCivil);
			setEnfants(enfants);
			setVille(ville);
			setPays(pays);
			setPhoto(photo);
			setBq_nom(bq_nom);
			setBq_numero(bq_numero);
			setBq_adresse(bq_adresse);
			setBq_ville(bq_ville);
			setPc_nom(pc_nom);
			setPc_telephone(pc_telephone);
		}

		// GETTERS ET SETTERS
		public int getIdEmp() {
			return idEmp;
		}
		
		public void setIdEmp(int idEmp) {
			this.idEmp = idEmp;
		}

		public String getNom() {
			return nom;
		}

		public void setNom(String nom) {
			this.nom = nom;
		}

		public String getPrenom() {
			return prenom;
		}

		public void setPrenom(String prenom) {
			this.prenom = prenom;
		}

		public String getAdresse() {
			return adresse;
		}

		public void setAdresse(String adresse) {
			this.adresse = adresse;
		}

		public String getTelephone() {
			return telephone;
		}

		public void setTelephone(String telephone) {
			this.telephone = telephone;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getMatricule() {
			return matricule;
		}

		public void setMatricule(String matricule) {
			this.matricule = matricule;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getSexe() {
			return sexe;
		}

		public void setSexe(String sexe) {
			this.sexe = sexe;
		}

		public Date getDateNaissance() {
			return dateNaissance;
		}

		public void setDateNaissance(Date dateNaissance) {
			this.dateNaissance = dateNaissance;
		}

		public String getMobile() {
			return mobile;
		}

		public void setMobile(String mobile) {
			this.mobile = mobile;
		}

		public String getNNI() {
			return NNI;
		}

		public void setNNI(String nNI) {
			NNI = nNI;
		}

		public String getNSS() {
			return NSS;
		}

		public void setNSS(String nSS) {
			NSS = nSS;
		}

		public String getEtatCivil() {
			return etatCivil;
		}

		public void setEtatCivil(String etatCivil) {
			this.etatCivil = etatCivil;
		}

		public int getEnfants() {
			return enfants;
		}

		public void setEnfants(int enfants) {
			this.enfants = enfants;
		}

		public String getVille() {
			return ville;
		}

		public void setVille(String ville) {
			this.ville = ville;
		}

		public String getPays() {
			return pays;
		}

		public void setPays(String pays) {
			this.pays = pays;
		}

		public String getPhoto() {
			return photo;
		}

		public void setPhoto(String photo) {
			this.photo = photo;
		}

		public String getBq_nom() {
			return bq_nom;
		}

		public void setBq_nom(String bq_nom) {
			this.bq_nom = bq_nom;
		}

		public String getBq_numero() {
			return bq_numero;
		}

		public void setBq_numero(String bq_numero) {
			this.bq_numero = bq_numero;
		}

		public String getBq_adresse() {
			return bq_adresse;
		}

		public void setBq_adresse(String bq_adresse) {
			this.bq_adresse = bq_adresse;
		}

		public String getBq_ville() {
			return bq_ville;
		}

		public void setBq_ville(String bq_ville) {
			this.bq_ville = bq_ville;
		}

		public String getPc_nom() {
			return pc_nom;
		}

		public void setPc_nom(String pc_nom) {
			this.pc_nom = pc_nom;
		}

		public String getPc_telephone() {
			return pc_telephone;
		}

		public void setPc_telephone(String pc_telephone) {
			this.pc_telephone = pc_telephone;
		}
		

		
		
		
		
	
}
