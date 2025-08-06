package com.kkuk.dto;

public class ProductDto {

	
	private String product;
	private String color;
	private int quantity;
	public ProductDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductDto(String product, String color, int quantity) {
		super();
		this.product = product;
		this.color = color;
		this.quantity = quantity;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
