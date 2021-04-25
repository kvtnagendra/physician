package com.Project.PSIC.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Project.PSIC.Model.Patient;

public interface PatientRepository extends JpaRepository<Patient,String>{
	public Patient findByEmail(String email); 
	
}
