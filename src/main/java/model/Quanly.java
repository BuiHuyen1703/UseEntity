package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the quanly database table.
 * 
 */
@Entity
@NamedQuery(name="Quanly.findAll", query="SELECT q FROM Quanly q")
public class Quanly implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String email;

	private String name;

	private String pass;

	public Quanly() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}