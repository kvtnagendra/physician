package com.Project.PSIC.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "timetable")
public class TimeTable {
	
	@Id
	@Column(name = "date")
	private String date;
	@Column(name = "id")
	private String id;
	@Column(name = "name")
	private String name;
	@Column(name = "slot1")
	private String slot1;
	@Column(name = "slot2")
	private String slot2;
	@Column(name = "slot3")
	private String slot3;
	@Column(name = "slot4")
	private String slot4;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getSlot1() {
		return slot1;
	}
	public void setSlot1(String slot1) {
		this.slot1 = slot1;
	}
	public String getSlot2() {
		return slot2;
	}
	public void setSlot2(String slot2) {
		this.slot2 = slot2;
	}
	public String getSlot3() {
		return slot3;
	}
	public void setSlot3(String slot3) {
		this.slot3 = slot3;
	}
	public String getSlot4() {
		return slot4;
	}
	public void setSlot4(String slot4) {
		this.slot4 = slot4;
	}
	@Override
	public String toString() {
		return "TimeTable [id=" + id + ", name=" + name + ", date=" + date + ", slot1=" + slot1 + ", slot2=" + slot2
				+ ", slot3=" + slot3 + ", slot4=" + slot4 + "]";
	}
}
