package com.wf.training.bootapp.controller;

import javax.servlet.http.HttpServletRequest;
//import javax.security.auth.message.callback.PrivateKeyCallback.Request;
//import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//import org.springframework.web.servlet.ModelAndView;

import com.wf.training.bootapp.model.BeneficiaryManagement;
import com.wf.training.bootapp.model.CardsManagement;
import com.wf.training.bootapp.model.PaymentsAndFundTransfer;
import com.wf.training.bootapp.model.User;
import com.wf.training.bootapp.model.UtilityPayment;
import com.wf.training.bootapp.model.AccountManagement;


@Controller
@RequestMapping("/customer")
public class CustomerController 
{
	@RequestMapping("/AccountManagement")
	public String AcountManagement(Model model)
	{
		AccountManagement accountManagement = new AccountManagement();
		model.addAttribute("accountManagement", accountManagement);
		//return "AccountManagement";//~forward
				return "AccountSummary";//~forward
	}



	//@RequestMapping(value= {"/HomePage"})
	@RequestMapping("/HomePage")
	public String HomePage()
	{
		//business logic		
		return "HomePage";
	}	
	
	@RequestMapping("/LoanManagement")
	public String LoanManagement()
	{
		return "LoanManagement";//~forward
	}
	

	
	@RequestMapping("/FundsTransfer")
	public String FundsTransfer()
	{
		return "FundsTransfer";//~forward
	}
		

@RequestMapping("/TransferOutsideBank")
	public String FundsTransferOutsideBank(Model model) 
{
		PaymentsAndFundTransfer paymentsAndFundTransfer = new PaymentsAndFundTransfer();
		model.addAttribute("paymentsAndFundTransfer", paymentsAndFundTransfer);
		return "TransferOutsideBank";// ~forward
	}



	@PostMapping("/transferOutsideIBS")
	public String transferOutsideIBS(PaymentsAndFundTransfer paymentsAndFundTransfer, Model model)
	{

		model.addAttribute("paymentsAndFundTransfer", paymentsAndFundTransfer);
		return "TransferOutsideBankConfirmation";// ~forward

	}





	@RequestMapping("/TransferWithinIBS")

	public String TransferWithinIBS(Model model)

	{

		PaymentsAndFundTransfer paymentsAndFundTransfer = new PaymentsAndFundTransfer();

		model.addAttribute("paymentsAndFundTransfer", paymentsAndFundTransfer);



		return "TransferWithinIBS";//~forward

	}



	@PostMapping("/transferInIBS")

	public String transferWithinIBS(PaymentsAndFundTransfer paymentsAndFundTransfer, Model model) {



		model.addAttribute("paymentsAndFundTransfer", paymentsAndFundTransfer);



		return "TransferWithinBankConfirmation";// ~forward

	}



	@RequestMapping("/Utilities")

	public String Utilities(Model model)

	{

		UtilityPayment utilityPayment = new UtilityPayment();

		model.addAttribute("utilityPayment", utilityPayment);

		return "Utilities";//~forward

	}



	@PostMapping("/utilityPay")

	public String utilityPay(UtilityPayment utilityPayment, Model model) {



		model.addAttribute("utilityPayment", utilityPayment);



		return "UtilityBillPayConfirmation";// ~forward

	}
	

	/*@RequestMapping("/AddBeneficiary")
	public String AddBeneficiary()
	{
		return "AddBeneficiary";//~forward
	}
	*/
	@RequestMapping("/AddBeneficiary")
	public String AddBeneficiary(Model model)
	{
		//send a blank/empty student object to map with form
			/*	Student student = new Student();
				student.setName("Dummy");
				student.setCountry("IN");
				String[] languages = new String[] {"Python","C##"};
				student.setFavoritelanguages(languages);
				model.addAttribute("student",student);
				return "profile-entry";
				*/
		BeneficiaryManagement beneficiary = new BeneficiaryManagement();
		beneficiary.setBenAccountName("Full Name as per Bank Records");
		beneficiary.setBenBranchCity("Hyderabad");
		model.addAttribute("beneficiary",beneficiary);	
		return "AddBeneficiary";//~forward
	}
	
	@PostMapping("/saveBenDetails")
	public String saveBenDetails(@Valid @ModelAttribute("beneficiary") BeneficiaryManagement beneficiary, BindingResult result) 
	{		
		if (result.hasErrors())
		{
			return "AddBeneficiary";
		}
		else
		{
			//data will be shared automatically
			return"BeneficiaryConfirmation";
		}		
	}	
	
	/*
	@PostMapping("/saveBenDetails")
	public String saveBenDetails(BeneficiaryManagement beneficiary, Model model) 
	{		
		model.addAttribute("beneficiary",beneficiary);
		
			//data will be shared automatically
			return"BeneficiaryConfirmation";		
	}
	*/
	
	
	@RequestMapping("/UpdatePassword")
	public String UpdatePassword(Model model )
	{
		User user = new User();
		model.addAttribute("user",user);
		return "UpdatePassword";
		
		
	}	
	
	@PostMapping("/SetNewPassword")	
	 //User user,Model model,String NewPassword, String ReEnterNewPassword
	public String SetNewPassword(User user, Model model, @RequestParam("NewPassword") String newpassword,@RequestParam("ReEnterNewPassword") String reEnterNewPassword)
	{
		if (newpassword.contentEquals(reEnterNewPassword))
		{
			user.setPassword(newpassword);
			System.out.println("New Password is:"+user.getPassword());		
			//place the data in model container
			model.addAttribute("User",user);
			return "UpdatePasswordConfimation";
		}
		else 
		{
			return "UpdatePassword";
		}	
	}
		
	@RequestMapping("/UpdateContactDetails")
	public String UpdateContactDetails(Model model)
	{
		User user = new User();
		model.addAttribute("user",user);		
		return "UpdateContactDetails";//~forward
	}	
	
	@PostMapping("/saveContactDetails")		
	public String saveContactDetails(User user, Model model )
	{
			model.addAttribute("user",user);
			return "UpdateContactsConfimation";		
	}
	
	@RequestMapping(value= {"/DebitCard"})
	public String DebitCard()
	{
		//business logic		
		return "DebitCard";
	}	
	
	@RequestMapping(value= {"/CreditCard"})
	public String CreditCard()
	{
		//business logic		
		return "CreditCard";
	}
	
	@RequestMapping(value= {"/RaiseAProblemTicket"})
	public String RaiseAProblemTicket()
	{
		//business logic		
		return "RaiseAProblemTicket";
	}
	@RequestMapping(value= {"/DebitCardTransactionSummary"})
	public String DebitCardTransactionSummary()
	{
		//business logic		
		return "DebitCardTransactionSummary";
	}
	
	@RequestMapping(value= {"/ChangeDebitCardPin"})
	public String ChangeDebitCardPin()
	{
		//business logic		
		return "ChangeDebitCardPin";
	}
	
	@RequestMapping(value= {"/Cards"})
	public String Cards()
	{
		//business logic		
		return "Cards";
	}
	
	@RequestMapping(value= {"/CreditCardTransactionSummary"})
	public String CreditCardTransactionSummary()
	{
		//business logic		
		return "CreditCardTransactionSummary";
	}
	
	@RequestMapping(value= {"/CreditCardPayment"})
	public String CreditCardPayment()
	{
		//business logic		
		return "CreditCardPayment";
	}
	@RequestMapping(value= {"/BankRepresentative"})
	public String BankRepresentative()
	{
		//business logic		
		return "BankRepresentative";
	}
	
	
	@PostMapping("/DebitCardTransactionSummary")	
	 //User user,Model model,String NewPassword, String ReEnterNewPassword	
	public String displayTransacationDetails(HttpServletRequest request)
	{
		String debitCardNumber = request.getParameter("DebitCardNumber");
	//String Test = "abc";
		System.out.println("from Post:"+debitCardNumber);
	CardsManagement cardsManagement = new CardsManagement();
//	cardsManagement.setDebitCardNumber(Test);
	
	if (debitCardNumber.contentEquals("abc"))
	{
		System.out.println("test");
		cardsManagement.setTransactionAmount("3000");
		System.out.println(cardsManagement.getTransactionAmount());
		cardsManagement.setTransactionDescription("Purchase");
		cardsManagement.setTransactionRefNumber("1234567");
		cardsManagement.setTransactionType("Debit");
		}
	else
		
			
	{
		System.out.println("did't worked");
		return "HomePage";
	}
	return "DebitCardTransactionSummary";
	}

}
