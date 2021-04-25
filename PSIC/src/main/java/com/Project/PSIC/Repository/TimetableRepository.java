package com.Project.PSIC.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Project.PSIC.Model.TimeTable;

public interface TimetableRepository extends JpaRepository<TimeTable,String>{
	public TimeTable findByDate(String date);

	public List<TimeTable> findAllById(String id);
}
