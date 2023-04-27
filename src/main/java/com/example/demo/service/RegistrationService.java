package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.UserRepository;

@Service
public class RegistrationService {

	@Autowired
	UserRepository userRepository;

	public int addAdmin(String name, String username, String accno,
			int mobno, String address, int ifsc, int balance) {
		return userRepository.addAdmin(name, username, accno, mobno, address, ifsc, balance);
	}

	public int addAdminLogin(String username, String password, String role) {
		return userRepository.addAdminLogin(username, password, role);
	}

	public int addEmp(String name, String username, String accno,
			int mobno, String address, int ifsc, int balance) {
		return userRepository.addEmp(name, username, accno, mobno, address, ifsc, balance);
	}

	public int addEmpLogin(String username, String password, String role) {
		return userRepository.addEmpLogin(username, password, role);
	}

	public int addCust(String name, String username, String accno,
			int mobno, String address, int ifsc, int balance) {
		return userRepository.addCust(name, username, accno, mobno, address, ifsc, balance);
	}

	public int addCustLogin(String username, String password, String role) {
		return userRepository.addCustLogin(username, password, role);
	}
}
