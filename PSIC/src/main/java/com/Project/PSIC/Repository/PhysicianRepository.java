package com.Project.PSIC.Repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Project.PSIC.Model.Physician;

public interface PhysicianRepository  extends JpaRepository<Physician,String>{
	public Physician findByEmail(String email); 
	
}
