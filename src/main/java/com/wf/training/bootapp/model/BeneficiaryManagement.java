package com.wf.training.bootapp.model;

import java.util.LinkedHashMap;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

public class BeneficiaryManagement 
{
	@NotNull(message="Account Number is required!")
	private Integer benAccountNo;
	@NotBlank(message="Account Name is required!")
	private String benAccountName;
	@NotBlank(message="IFSC Code is required!")
	private String benIFSCcode;	
	private String benBankName;	
	private LinkedHashMap<String,String> bankNames;
	private String benBranchName;	
	private LinkedHashMap<String,String> branchNames;
	private String benBranchCity;
	private LinkedHashMap<String,String> branchCities;
	@Email
	private String benEmail;
	@NotBlank(message="Contact Number is required!")
	private String benContact;	
	
	public BeneficiaryManagement() 
	{
		this.bankNames = new LinkedHashMap<String,String>();
		this.bankNames.put("HDFC", "HDFC Bank");
		this.bankNames.put("Axis", "Axis Bank");
		this.bankNames.put("ICICI", "ICICI Bank");
		this.bankNames.put("SBI","State Bank of India");
		this.bankNames.put("AB","Andhra Bank");
		
		this.branchNames = new LinkedHashMap<String,String>();
		this.branchNames.put("HYD", "HYDERABAD");
		this.branchNames.put("BAN", "BANGALORE");
		this.branchNames.put("CHN", "CHENNAI");
		this.branchNames.put("KOL","KOLKATA");
		
		this.branchCities = new LinkedHashMap<String,String>();
		this.branchCities.put("Kondapur", "Kondapur");
		this.branchCities.put("Gachicbowli", "Gachicbowli");
		this.branchCities.put("Madhapur", "Madhapur");
		this.branchCities.put("Ameerpet","Ameerpet");
	
	}
	
	public Integer getBenAccountNo() 
	{
		return benAccountNo;
	}
	public void setBenAccountNo(Integer benAccountNo) {
		this.benAccountNo = benAccountNo;
	}
	public String getBenAccountName() {
		return benAccountName;
	}
	public void setBenAccountName(String benAccountName) {
		this.benAccountName = benAccountName;
	}
	public String getBenIFSCcode() {
		return benIFSCcode;
	}
	public void setBenIFSCcode(String benIFSCcode) {
		this.benIFSCcode = benIFSCcode;
	}
	
	public LinkedHashMap<String, String> getBankNames() 
	{
		return bankNames;
	}
	
	public String getBenBankName() {
		return benBankName;
	}
	
	public void setBenBankName(String benBankName) {
		this.benBankName = benBankName;
	}
	
	public LinkedHashMap<String, String> getBranchNames() {
		return branchNames;
	}
	
	public String getBenBranchName() {
		return benBranchName;
	}	
	
	public void setBenBranchName(String benBranchName) {
		this.benBranchName = benBranchName;
	}
		
	public LinkedHashMap<String, String> getBranchCities() {
		return branchCities;
	}
	
	public String getBenBranchCity() {
		return benBranchCity;
	}
	public void setBenBranchCity(String benBranchCity) {
		this.benBranchCity = benBranchCity;
	}
	
	public String getBenEmail() {
		return benEmail;
	}
	public void setBenEmail(String benEmail) {
		this.benEmail = benEmail;
	}
	public String getBenContact() {
		return benContact;
	}
	public void setBenContact(String benContact) 
	{
		this.benContact = benContact;
	}
}