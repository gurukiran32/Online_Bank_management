package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.UserRepository;

@Service
public class WithdrawService {

    @Autowired
    UserRepository userRepository;

    public int withdraw(String source, int amount) {
        String timestamp = userRepository.getDate();
        return userRepository.withdraw(source, timestamp, amount);
    }

}
