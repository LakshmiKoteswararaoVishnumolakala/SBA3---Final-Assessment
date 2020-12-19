package com.wf.training.bootapp.model;
import java.security.SecureRandom;
import java.util.LinkedHashMap;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

public class User 
{
	

	private String BankRelationship;	
	private LinkedHashMap<String,String> BankRelationships;
	@NotBlank(message="Gender is required!")
	private String Gender;
	private LinkedHashMap<String,String> Genders;
	private String FirstName;
	private String LastName;
	private String MiddleName;
	private String DateOfBirth;
	@NotNull(message="Mobile Number is required!")
	private String MobileNo;
	private String AlternateMobileNo;
	private String EmailID;
	private String Address;
	private String AptName;
	private String FlatNo;
	private String PlotNo;
	private String StreetNo;
	private String Colony;
	private String LandMark;
	private String City;
	private LinkedHashMap<String,String> Cities;
	private String State;
	private LinkedHashMap<String,String> States;
	private String Country;
	private LinkedHashMap<String,String> Countries;
	private String PinCode;
	private String PAN;
	private String AADHAR;
	private String CustomerID;
	private String Password;
	private String OTP;
	private String	NewPassword;
	public String getNewPassword() {
		return NewPassword;
	}

	public void setNewPassword(String newPassword) {
		NewPassword = newPassword;
	}

	public String getReEnterNewPassword() {
		return ReEnterNewPassword;
	}

	public void setReEnterNewPassword(String reEnterNewPassword) {
		ReEnterNewPassword = reEnterNewPassword;
	}

	private String ReEnterNewPassword;
	

	public String getOTP() 
	{
		return OTP;
	}

	public void setOTP(String oTP) {		
		if (oTP.contentEquals(""))
		{
			OTP = generateOTP(5);
		}
		else
		{
			OTP = oTP;
		}
	}

	public User()
	{
		this.BankRelationships = new LinkedHashMap<String,String>();
		this.BankRelationships.put("Customer", "Customer");
		this.BankRelationships.put("Accounts Executive", "Accounts Executive");
		this.BankRelationships.put("Bank Representative", "Bank Representative");
		
		this.Genders = new LinkedHashMap<String,String>();
		this.Genders.put("M", "Male");
		this.Genders.put("F", "Female");
		
		this.Cities = new LinkedHashMap<String,String>();
		this.Cities.put("HYD", "Hyderabad");
		this.Cities.put("VJA", "Vijayawada");
		this.Cities.put("BAN", "Bangalore");
		
		
		this.States = new LinkedHashMap<String,String>();
		this.States.put("AP", "Andhra Pradesh");
		this.States.put("TS", "Telangana");
		this.States.put("KA", "Karnataka");	
		
		this.Countries = new LinkedHashMap<String,String>();
		this.Countries.put("IND", "INDIA");
		this.Countries.put("OTH", "OTHER");		
		
	}
	
	public LinkedHashMap<String, String> getGenders() {
		return Genders;
	}

	public LinkedHashMap<String, String> getCities() {
		return Cities;
	}

	public LinkedHashMap<String, String> getStates() {
		return States;
	}

	public LinkedHashMap<String, String> getCountries() {
		return Countries;
	}
	
	public String getCustomerID() {
		return CustomerID;
	}
	public void setCustomerID(String customerID) 
	{
		CustomerID = customerID;		
	}
	public String getPassword() 
	{		
			return Password;		
	}
	public void setPassword(String password) 
	{
		if (password.contentEquals(""))
		{
			Password = generateRandomPassword(16);
		}
		else
		{
			Password = password;
		}		
	}
	
	public LinkedHashMap<String, String> getBankRelationships() {
		return BankRelationships;
	}
	
	public String getBankRelationship() {
		return BankRelationship;
	}
	
	
	
	public void setBankRelationship(String bankRelationship) {
		this.BankRelationship = bankRelationship;
	}
	
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getMiddleName() {
		return MiddleName;
	}
	public void setMiddleName(String middleName) {
		MiddleName = middleName;
	}
	public String getDateOfBirth() {
		return DateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}
	public String getMobileNo() {
		return MobileNo;
	}
	public void setMobileNo(String mobileNo) {
		MobileNo = mobileNo;
	}
	public String getAlternateMobileNo() {
		return AlternateMobileNo;
	}
	public void setAlternateMobileNo(String alternateMobileNo) {
		AlternateMobileNo = alternateMobileNo;
	}
	public String getEmailID() {
		return EmailID;
	}
	public void setEmailID(String emailID) {
		EmailID = emailID;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getAptName() {
		return AptName;
	}
	public void setAptName(String aptName) {
		AptName = aptName;
	}
	public String getFlatNo() {
		return FlatNo;
	}
	public void setFlatNo(String flatNo) {
		FlatNo = flatNo;
	}
	public String getPlotNo() {
		return PlotNo;
	}
	public void setPlotNo(String plotNo) {
		PlotNo = plotNo;
	}
	public String getStreetNo() {
		return StreetNo;
	}
	public void setStreetNo(String streetNo) {
		StreetNo = streetNo;
	}
	public String getColony() {
		return Colony;
	}
	public void setColony(String colony) {
		Colony = colony;
	}
	public String getLandMark() {
		return LandMark;
	}
	public void setLandMark(String landMark) {
		LandMark = landMark;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getPinCode() {
		return PinCode;
	}
	public void setPinCode(String pinCode) {
		PinCode = pinCode;
	}
	public String getPAN() {
		return PAN;
	}
	public void setPAN(String pAN) {
		PAN = pAN;
	}
	public String getAADHAR() {
		return AADHAR;
	}
	public void setAADHAR(String aADHAR) {
		AADHAR = aADHAR;
	}
	// Function to generate random alpha-numeric password of specific length
		public static String generateRandomPassword(int len)
		{
		    // ASCII range - alphanumeric (0-9, a-z, A-Z)
		    final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	
		    SecureRandom random = new SecureRandom();
		    StringBuilder sb = new StringBuilder();
	
		    // each iteration of loop choose a character randomly from the given ASCII range
		    // and append it to StringBuilder instance
	
		    for (int i = 0; i < len; i++) {
		        int randomIndex = random.nextInt(chars.length());
		        sb.append(chars.charAt(randomIndex));
		    }
	
		    return sb.toString();
		}
		
		// Function to generate random alpha-numeric password of specific length
				public static String generateOTP(int len)
				{
				    // ASCII range - alphanumeric (0-9, a-z, A-Z)
				    final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
			
				    SecureRandom random = new SecureRandom();
				    StringBuilder sb = new StringBuilder();
			
				    // each iteration of loop choose a character randomly from the given ASCII range
				    // and append it to StringBuilder instance
			
				    for (int i = 0; i < len; i++) {
				        int randomIndex = random.nextInt(chars.length());
				        sb.append(chars.charAt(randomIndex));
				    }
			
				    return sb.toString();
				}
		
		public static void main(String[] args) 
		{
		    int len = 16;
		    System.out.println(generateRandomPassword(len));
		}

}
