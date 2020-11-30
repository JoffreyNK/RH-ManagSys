package com.rh.managsys.beans;

public class utilisateurs {
	
		private int idUser;
		private String username;
		private String password;
		private String fonction;
		
		public utilisateurs() {
			super();
		}
		
		public utilisateurs(int idUser, String username, String password, String fonction) {
			super();
			setIdUser(idUser);
			setUsername(username);
			setPassword(password);
			setFonction(fonction);
		}

		
		public int getIdUser() {
			return idUser;
		}

		public void setIdUser(int idUser) {
			this.idUser = idUser;
		}

		public String getUsername() {
			return username;
		}


		public void setUsername(String username) {
			this.username = username;
		}


		public String getPassword() {
			return password;
		}


		public void setPassword(String password) {
			this.password = password;
		}

		public String getFonction() {
			return fonction;
		}

		public void setFonction(String fonction) {
			this.fonction = fonction;
		}
		
		
		

}
