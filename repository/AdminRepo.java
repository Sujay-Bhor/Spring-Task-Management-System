package com.tms.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tms.model.Admin;

public interface AdminRepo  extends JpaRepository<Admin, Integer>
{

}
