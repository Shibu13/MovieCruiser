package com.cognizant.MOVIECRUISE.controller;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.MOVIECRUISE.model.Role;
import com.cognizant.MOVIECRUISE.model.User;
import com.cognizant.MOVIECRUISE.repository.UserRepository;
import com.cognizant.MOVIECRUISE.service.SecurityService;
import com.sun.xml.bind.v2.runtime.output.StAXExStreamWriterOutput;

@Controller
public class UserController {
	@Autowired
	private SecurityService securityService;
	
	@Autowired
	private BCryptPasswordEncoder encoder;

	@Autowired
	private UserRepository userRepository;

	@RequestMapping("/showreg")
	public String showRegistration() {
		return "registerUser";
	}

	@RequestMapping(value = "/registeruser", method = RequestMethod.POST)
	public String register(@ModelAttribute("user") User user) {
		user.setPassword(encoder.encode(user.getPassword()));
		userRepository.save(user);
		return "login";
	}
	
	@RequestMapping("/showlogin")
	public String showLoginPage() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("email") String email, @RequestParam("password") String password, ModelMap map) {
		System.out.println("In");
		boolean loginResponse = securityService.login(email, password);
		
		User user=userRepository.findUserByEmail(email);
		if(loginResponse) {
			Set<Role> roles = user.getRoles();
			for(Role role:roles) {
				if(role.getName().equalsIgnoreCase("ADMIN")) {
					return "adminsite";
				}
			}
			return "movie-item-customer";		
		}
		map.addAttribute("msg", "Invalid user or password");
		return "login";
		
	}
	

}
