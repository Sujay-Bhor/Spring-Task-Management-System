package com.tms.repository;

import org.springframework.data.jpa.repository.JpaRepository;


import com.tms.model.AccessControl;

public interface AccessControlRepo extends JpaRepository<AccessControl, Integer>
{
	public AccessControl findByEmail(String email);
	public AccessControl findByName(String name);
}
