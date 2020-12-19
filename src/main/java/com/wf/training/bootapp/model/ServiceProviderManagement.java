
package com.wf.training.bootapp.model;
public class ServiceProviderManagement {

	/**
	 * Service Provider is going to get paid by his customer using IBS Portal. So It
	 * might use IBS Portal module of class as well.
	 */

	private String customerName;
	private String serviceType;
	private long spiID;
	private long serviceProviderBankAccount;
	private long paymentsAccountNo;
	private long serviceProviderID;

	public ServiceProviderManagement(String customerName, String serviceType, long spiID,
			long serviceProviderBankAccount, long paymentsAccountNo, long serviceProviderID) {
		super();
		this.customerName = customerName;
		this.serviceType = serviceType;
		this.spiID = spiID;
		this.serviceProviderBankAccount = serviceProviderBankAccount;
		this.paymentsAccountNo = paymentsAccountNo;
		this.serviceProviderID = serviceProviderID;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public long getSpiID() {
		return spiID;
	}

	public void setSpiID(long spiID) {
		this.spiID = spiID;
	}

	public long getServiceProviderBankAccount() {
		return serviceProviderBankAccount;
	}

	public void setServiceProviderBankAccount(long serviceProviderBankAccount) {
		this.serviceProviderBankAccount = serviceProviderBankAccount;
	}

	public long getPaymentsAccountNo() {
		return paymentsAccountNo;
	}

	public void setPaymentsAccountNo(long paymentsAccountNo) {
		this.paymentsAccountNo = paymentsAccountNo;
	}

	public long getServiceProviderID() {
		return serviceProviderID;
	}

	public void setServiceProviderID(long serviceProviderID) {
		this.serviceProviderID = serviceProviderID;
	}

}
