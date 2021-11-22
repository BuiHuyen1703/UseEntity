package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the xeoto database table.
 * 
 */
@Entity
@NamedQuery(name="Xeoto.findAll", query="SELECT x FROM Xeoto x")
public class Xeoto implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_oto")
	private int idOto;

	private float gia;

	@Column(name="name_oto")
	private String nameOto;

	public Xeoto() {
	}

	public int getIdOto() {
		return this.idOto;
	}

	public void setIdOto(int idOto) {
		this.idOto = idOto;
	}

	public float getGia() {
		return this.gia;
	}

	public void setGia(float gia) {
		this.gia = gia;
	}

	public String getNameOto() {
		return this.nameOto;
	}

	public void setNameOto(String nameOto) {
		this.nameOto = nameOto;
	}

}