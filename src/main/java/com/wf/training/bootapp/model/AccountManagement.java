package com.wf.training.bootapp.model;

public class AccountManagement 
{

	private int CustomerID; 
	private int AccountNo;
	private String AccountType;
	//Savings,FD,RD
	private Double Balance;
	
	private String Operation;
	//[Withdraw/Transfer/Credit/Utility];

	public AccountManagement()
	{
		
	}
	public String getAccountType() {
		return AccountType;
	}
	public void setAccountType(String accountType) {
		AccountType = accountType;
	}
	
	public int getCustomerID() {
		return CustomerID;
	}
	public void setCustomerID(int customerID) {
		CustomerID = customerID;
	}
	public int getAccountNo() {
		return AccountNo;
	}
	public void setAccountNo(int accountNo) {
		AccountNo = accountNo;
	}
	
	public Double getBalance() {
		return Balance;
	}
	public void setBalance(Double balance) {
		Balance = balance;
	}
	public String getOperation() {
		return Operation;
	}
	public void setOperation(String operation) {
		Operation = operation;
	}
		
}