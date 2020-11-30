package com.rh.managsys.beans;

import java.sql.Time;
import java.time.DayOfWeek;

public class Presence {
	
	private DayOfWeek jour;
	private Time heureDebit;
	private Time heureFin;
	
	public Presence() {
		super();
	}

	public Presence(DayOfWeek jour, Time heureDebit, Time heureFin) {
		super();
		setJour(jour);
		setHeureDebit(heureDebit);
		setHeureFin(heureFin);
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
