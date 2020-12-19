package com.wf.training.bootapp.model;

import java.time.LocalDate;

public class LoanManagement {
	
	private long transacid;
	private long custid;
	private float LoanAmtGiven;
	private float  interestrate;
	private long collectorid;
	LocalDate locdate = LocalDate.now();
	public long getTransacid() {
		return transacid;
	}
	public void setTransacid(long transacid) {
		this.transacid = transacid;
	}
	public long getCustid() {
		return custid;
	}
	public void setCustid(long custid) {
		this.custid = custid;
	}
	public float getLoanAmtGiven() {
		return LoanAmtGiven;
	}
	public void setLoanAmtGiven(float loanAmtGiven) {
		LoanAmtGiven = loanAmtGiven;
	}
	public float getInterestrate() {
		return interestrate;
	}
	public void setInterestrate(float interestrate) {
		this.interestrate = interestrate;
	}
	public long getCollectorid() {
		return collectorid;
	}
	public void setCollectorid(long collectorid) {
		this.collectorid = collectorid;
	}
	public LocalDate getLocdate() {
		return locdate;
	}
	public void setLocdate(LocalDate locdate) {
		this.locdate = locdate;
	}
	
	

}
