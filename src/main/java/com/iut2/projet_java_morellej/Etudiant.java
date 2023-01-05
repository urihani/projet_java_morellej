package com.iut2.projet_java_morellej;

public class Etudiant {
	
	private Integer id;
	private String prenom;
	private String nom;
	private String groupe;
	private Integer moyenne;
	
	public Etudiant() {
		super();
	}
	
	public Etudiant(Integer id, String prenom, String nom, String groupe, Integer moyenne) {
		super();
		this.id = id;
		this.prenom = prenom;
		this.nom = nom;
		this.groupe = groupe;
		this.moyenne = moyenne;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getGroupe() {
		return groupe;
	}

	public void setGroupe(String groupe) {
		this.groupe = groupe;
	}

	public Integer getMoyenne() {
		return moyenne;
	}

	public void setMoyenne(Integer moyenne) {
		this.moyenne = moyenne;
	}
}
