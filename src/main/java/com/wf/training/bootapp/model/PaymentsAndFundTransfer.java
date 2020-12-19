package com.wf.training.bootapp.model;

import java.util.Random;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


public class PaymentsAndFundTransfer {

	//@NotNull(message = "Account number Cannot be blank")
	private String accountNumber;

	private String payee;
	private String paymentType;

	@NotNull(message = "Amount cannot be null. Amount is required!")
	@Min(value = 1, message = "Amount should be greater than 0.")
	private double amount;

	@NotBlank(message = "Remarks is required!")
	@Size(min = 3, max = 50, message = "Remarks should be minimum 3 characters upto 50")
	private String remarks;

	private String transferType;
	private double transactionId;


	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getPayee() {
		return payee;
	}

	public void setPayee(String payee) {
		this.payee = payee;
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

	public String getTransferType() {
		return transferType;
	}

	public void setTransferType(String transferType) {
		this.transferType = transferType;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public double getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(double transactionId) {

		transactionId = getRndNumber();

	}

	public static int getRndNumber() {
		Random random = new Random();
		int randomNumber = 0;
		boolean loop = true;
		while (loop) {
			randomNumber = random.nextInt();
			if (Integer.toString(randomNumber).length() == 10 && !Integer.toString(randomNumber).startsWith("-")) {
				loop = false;
			}
		}
		return randomNumber;
	}

}
