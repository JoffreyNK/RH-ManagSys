package com.rh.managsys.beans;

import java.sql.Time;
import java.time.DayOfWeek;

public class HoraireGarde {
	
	private String service;
	private DayOfWeek jour;
	private Time heureDebit;
	private Time heureFin;
	
	public HoraireGarde() {
		super();
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	public DayOfWeek getJour() {
		return jour;
	}

	public void setJour(DayOfWeek jour) {
		this.jour = jour;
	}

	public Time getHeureDebit() {
		return heureDebit;
	}

	public void setHeureDebit(Time heureDebit) {
		this.heureDebit = heureDebit;
	}

	public Time getHeureFin() {
		return heureFin;
	}

	public void setHeureFin(Time heureFin) {
		this.heureFin = heureFin;
	}
	
	
	

}
