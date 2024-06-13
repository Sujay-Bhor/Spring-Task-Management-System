package com.tms.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tms.model.User;

public interface UserRepo extends JpaRepository<User, Integer> 
{

}
