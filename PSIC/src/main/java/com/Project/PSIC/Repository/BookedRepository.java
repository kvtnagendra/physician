package com.Project.PSIC.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Project.PSIC.Model.Bookphysician;

public interface BookedRepository extends JpaRepository<Bookphysician,String>{
	public Bookphysician findByPemail(String email);

	
}

