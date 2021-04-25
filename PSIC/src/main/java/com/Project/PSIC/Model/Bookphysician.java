package com.Project.PSIC.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bookphysician")
public class Bookphysician {

	@Id
	@Column(name = "pid")
	private String pid; //patientid
	@Column(name = "pname")
	private String pname;
	@Column(name = "email")
	private String pemail;
	@Column(name = "physicianid")
	private String physicianid;
	@Column(name = "physicianname")
	private String physicianName;
	@Column(name = "date")
	private String date;
	@Column(name = "slot")
	private String slot;
	@Column(name="problem")
	private String problem;
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPemail() {
		return pemail;
	}
	public void setPemail(String pemail) {
		this.pemail = pemail;
	}
	public String getPhysicianid() {
		return physicianid;
	}
	public void setPhysicianid(String physicianid) {
		this.physicianid = physicianid;
	}
	public String getPhysicianName() {
		return physicianName;
	}
	public void setPhysicianName(String physicianName) {
		this.physicianName = physicianName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getSlot() {
		return slot;
	}
	public void setSlot(String slot) {
		this.slot = slot;
	}
	public String getProblem() {
		return problem;
	}
	public void setProblem(String problem) {
		this.problem = problem;
	}
	@Override
	public String toString() {
		return "Bookphysician [pid=" + pid + ", pname=" + pname + ", pemail=" + pemail + ", physicianid=" + physicianid
				+ ", physicianName=" + physicianName + ", date=" + date + ", slot=" + slot + ", problem=" + problem
				+ "]";
	}

	
	
}
