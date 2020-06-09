package com.cognizant.MOVIECRUISE.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.cognizant.MOVIECRUISE.model.User;


public interface UserRepository extends JpaRepository<User, Long> {

	User findUserByEmail(String email);

}
