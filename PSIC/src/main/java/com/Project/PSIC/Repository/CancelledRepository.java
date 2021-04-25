package com.Project.PSIC.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Project.PSIC.Model.Cancelled;

public interface CancelledRepository extends JpaRepository<Cancelled,String>{
	public Cancelled findByPemail(String email); 
}
