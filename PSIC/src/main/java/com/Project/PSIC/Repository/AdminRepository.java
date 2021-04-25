package com.Project.PSIC.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Project.PSIC.Model.Admin;

public interface AdminRepository extends JpaRepository<Admin,String>{
	public Admin findByEmail(String email); 
}
