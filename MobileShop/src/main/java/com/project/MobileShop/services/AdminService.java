package com.project.MobileShop.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.MobileShop.entities.Admin;
import com.project.MobileShop.repositories.AdminRepository;

@Service
public class AdminService {
	
	@Autowired
	AdminRepository adminRepo;
	
	public String validateLogin(String username, String password) {
        Optional<Admin> userOpt = adminRepo.findByUsername(username);

        if (userOpt.isPresent()) {
            Admin user = userOpt.get();
            if (user.getPassword().equals(password)) {
                return "Login success";
            } else {
                return "Invalid password";
            }
        } else {
            return "Username not found";
        }
    }

}
