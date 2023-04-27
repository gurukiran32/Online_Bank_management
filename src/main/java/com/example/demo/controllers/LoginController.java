package com.example.demo.controllers;

import java.io.IOException;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.service.LoginService;

@Controller
public class LoginController {

	public static String uname;
	@Autowired
	LoginService loginService;

	@RequestMapping("/login")
	public String loginMessage() {
		return "login";
	}

	@RequestMapping("/validatelogin")
	public String dashboard(@RequestParam String username, @RequestParam String password,
			ModelMap model) throws MessagingException, IOException {
		model.put("username", username);
		uname = username;
		if (loginService.isValid(username, password)) {
			return "home";
		}
		return "login";
	}

	@RequestMapping("/adminlogin")
	public String adminlogin() {
		return "adminlogin";
	}

	@RequestMapping("/validateadminlogin")
	public String admindashboard(@RequestParam String username, @RequestParam String password,
			ModelMap model) throws MessagingException, IOException {
		model.put("username", username);
		uname = username;
		if (loginService.isValid(username, password)) {
			return "adminhome";
		}
		return "adminlogin";
	}

	@RequestMapping("/adminhome")
	public String adminhome() {
		return "adminhome";
	}

	@RequestMapping("/emplogin")
	public String emplogin() {
		return "emplogin";
	}

	@RequestMapping("/validateemplogin")
	public String empdashboard(@RequestParam String username, @RequestParam String password,
			ModelMap model) throws MessagingException, IOException {
		model.put("username", username);
		uname = username;
		if (loginService.isValid(username, password)) {
			return "emphome";
		}
		return "emplogin";
	}

	@RequestMapping("/emphome")
	public String emphome() {
		return "emphome";
	}

}
