package com.wf.training.bootapp.model;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


public class UtilityPayment {

	private String biller;
	private String billerTypeNickname;
	private String paymentMethod;

	@NotNull(message = "Amount cannot be null. Amount is required!")
	@Min(value = 1, message = "Amount should be greater than 0.")
	private double amount;

	@NotBlank(message = "Remarks is required!")
	@Size(min = 3, max = 50, message = "Remarks should be minimum 3 characters upto 50")
	private String remarks;

	public String getBiller() {
		return biller;
	}

	public void setBiller(String biller) {
		this.biller = biller;
	}

	public String getBillerTypeNickname() {
		return billerTypeNickname;
	}

	public void setBillerTypeNickname(String billerTypeNickname) {
		this.billerTypeNickname = billerTypeNickname;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}



}
