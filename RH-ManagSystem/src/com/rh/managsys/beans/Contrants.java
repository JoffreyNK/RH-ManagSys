package com.rh.managsys.beans;

public class Contrants{
	
	private String reference;
	private String typeContrat;
	
	public Contrants() {
		super();
	}

	public Contrants(String reference, String typeContrat) {
		super();
		setReference(reference);
		setTypeContrat(typeContrat);
	}



	public String getReference() {
		return reference;
	}

	public void setReference(String reference) {
		this.reference = reference;
	}

	public String getTypeContrat() {
		return typeContrat;
	}

	public void setTypeContrat(String typeContrat) {
		this.typeContrat = typeContrat;
	}
	
	
	
		
}
