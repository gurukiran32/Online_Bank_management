package com.example.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.repository.UserRepository;
import com.example.demo.service.CheckProfile;
import com.example.demo.service.DepositService;
import com.example.demo.service.RegistrationService;
import com.example.demo.service.ShowService;
import com.example.demo.service.TransferService;
import com.example.demo.service.WithdrawService;

@Controller
public class OtherController {
	@Autowired
	UserRepository userRepository;
	@Autowired
	CheckProfile checkProfile;

	@Autowired
	TransferService transferService;

	@Autowired
	DepositService depositService;

	@Autowired
	WithdrawService withdrawService;

	@Autowired
	RegistrationService registrationService;

	@Autowired
	ShowService showService;

	@GetMapping(path = "/getDetails")
	public String showDetails(@RequestParam String username, ModelMap model) {
		System.out.println("------ ----------------------------" + username + "-------");
		model.put("user", checkProfile.getDetails(username));
		System.out.println(checkProfile.getDetails(username).toString());
		return "showdetails";
	}

	@GetMapping(path = "/transfermoney")
	public String transferMoney() {
		return "transfer";
	}

	@PostMapping(path = "/"
			+ "transfermoney")
	public String transferMoney(@RequestParam String username, @RequestParam int amount, @RequestParam String user,
			ModelMap model, RedirectAttributes redirAttrs) {
		System.out.println("##########" + LoginController.uname + "######");
		int s = transferService.transfer(LoginController.uname, user, amount);
		if (s == 0) {
			redirAttrs.addFlashAttribute("message", "Transaction Unsuccessful");
		} else if (s == 1) {
			redirAttrs.addFlashAttribute("message", "Transaction Successful");
		}
		return "redirect:/transfermoney";
	}

	@GetMapping(path = "/about")
	public String showAbout() {
		return "about";
	}

	@GetMapping(path = "/contact")
	public String showContact() {
		return "contact";
	}

	@GetMapping(path = "/addadmin")
	public String addAdmin() {
		return "adminregister";
	}

	@GetMapping(path = "/addemp")
	public String addEmp() {
		return "empregister";
	}

	@PostMapping(path = "/addadmin")
	public String regAdmin(@RequestParam String name, @RequestParam String username,
			@RequestParam String password,
			@RequestParam String accno, @RequestParam int mobno,
			@RequestParam String address, @RequestParam int ifsc, @RequestParam int balance) {

		int s = registrationService.addAdmin(name, username, accno, mobno, address, ifsc, balance);
		int ss = registrationService.addAdminLogin(username, password, "admin");
		return "adminregister";
	}

	@PostMapping(path = "/addemp")
	public String regEmp(@RequestParam String name, @RequestParam String username,
			@RequestParam String password,
			@RequestParam String accno, @RequestParam int mobno,
			@RequestParam String address, @RequestParam int ifsc, @RequestParam int balance) {

		int s = registrationService.addEmp(name, username, accno, mobno, address, ifsc, balance);
		int ss = registrationService.addEmpLogin(username, password, "emp");
		return "empregister";
	}

	@GetMapping(path = "/addcust")
	public String addCust() {
		return "custregister";
	}

	@PostMapping(path = "/addcust")
	public String regCust(@RequestParam String name, @RequestParam String username,
			@RequestParam String password,
			@RequestParam String accno, @RequestParam int mobno,
			@RequestParam String address, @RequestParam int ifsc, @RequestParam int balance) {

		int s = registrationService.addCust(name, username, accno, mobno, address, ifsc, balance);
		int ss = registrationService.addCustLogin(username, password, "cust");
		return "custregister";
	}

	@GetMapping(path = "/showtransaction")
	public String showTransaction(ModelMap model) {
		model.put("transaction", showService.showTransaction(LoginController.uname));
		return "showtransaction";
	}

	@GetMapping(path = "/logout")
	public String showLogout() {
		System.out.println(LoginController.uname);
		LoginController.uname = "";
		return "redirect:/index";
	}

	@GetMapping("/deposit")
	public String deposit() {
		return "deposit";
	}

	@PostMapping("/deposit")
	public String deposit(@RequestParam String username, @RequestParam int amount, ModelMap model,
			RedirectAttributes redirAttrs) {
		int s = depositService.deposit(LoginController.uname, username, amount);
		if (s == 0) {
			redirAttrs.addFlashAttribute("message", "Deposit Unsuccessful");
		} else if (s == 1) {
			redirAttrs.addFlashAttribute("message", "Deposit Successful");
		}
		return "redirect:/deposit";
	}

	@GetMapping("/withdraw")
	public String withdraw() {
		return "withdraw";
	}

	@PostMapping("/withdraw")
	public String withdraw(@RequestParam String username, @RequestParam int amount, ModelMap model,
			RedirectAttributes redirAttrs) {
		int s = withdrawService.withdraw(LoginController.uname, amount);
		if (s == 0) {
			redirAttrs.addFlashAttribute("message", "Withdraw Unsuccessful");
		} else if (s == 1) {
			redirAttrs.addFlashAttribute("message", "Withdraw Successful");
		}
		return "redirect:/withdraw";
	}

}