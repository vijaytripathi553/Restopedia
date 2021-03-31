package com.vijay.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "menu")
public class Menu {
	@Id
	@Column(name = "id")
	private int mid;

	@Column(name = "name")
	private String mname;

	@Column(name = "price")
	private double mprice;

	@Column(name = "quantity")
	private int mquantity;

	@Column(name = "unit")
	private String munit;

	@Column(name = "tax")
	private int mtax;

	@Column(name = "total")
	private int mtotal;

	// constructor
	public Menu() {

	}
	

	// Getter and setter method

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public double getMprice() {
		return mprice;
	}

	public void setMprice(double mprice) {
		this.mprice = mprice;
	}

	public int getMquantity() {
		return mquantity;
	}

	public void setMquantity(int mquantity) {
		this.mquantity = mquantity;
	}

	public String getMunit() {
		return munit;
	}

	public void setMunit(String munit) {
		this.munit = munit;
	}

	public int getMtax() {
		return mtax;
	}

	public void setMtax(int mtax) {
		this.mtax = mtax;
	}

	public int getMtotal() {
		return mtotal;
	}

	public void setMtotal(int mtotal) {
		this.mtotal = mtotal;
	}
	
	
	

	@Override
	public String toString() {
		return "Menu [mid=" + mid + ",mname=" + mname + ",mprice=" + mprice + ", mquantity=" + mquantity + ", munit=" + munit + ", mtax=" + mtax + ", mtotal=" + mtotal + "]";
	}

}
