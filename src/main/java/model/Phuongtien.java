package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the phuongtien database table.
 * 
 */
@Entity
@NamedQuery(name="Phuongtien.findAll", query="SELECT p FROM Phuongtien p")
public class Phuongtien implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String anh;

	private float dongia;

	private String mota;

	private int soluong;

	private String ten;

	public Phuongtien() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAnh() {
		return this.anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public float getDongia() {
		return this.dongia;
	}

	public void setDongia(float dongia) {
		this.dongia = dongia;
	}

	public String getMota() {
		return this.mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public int getSoluong() {
		return this.soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public String getTen() {
		return this.ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

}