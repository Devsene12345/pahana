package com.pahana.model;

public class Billing {
	private int billing_id;
    private int customer_id;
    private double units_consumed;
    private double total_amount;
	
    
    
    
	public int getBilling_id() {
		return billing_id;
	}
	public void setBilling_id(int billing_id) {
		this.billing_id = billing_id;
	}
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public double getUnits_consumed() {
		return units_consumed;
	}
	public void setUnits_consumed(double units_consumed) {
		this.units_consumed = units_consumed;
	}
	public double getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(double total_amount) {
		this.total_amount = total_amount;
	}
    
    
    

}
