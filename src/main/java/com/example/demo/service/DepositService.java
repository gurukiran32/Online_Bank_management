package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.UserRepository;

@Service
public class DepositService {

    @Autowired
    UserRepository userRepository;

    public int deposit(String source, String username, int amount) {
        String timestamp = userRepository.getDate();
        return userRepository.deposit(source, timestamp, amount);
    }

}
