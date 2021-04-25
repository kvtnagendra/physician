package com.Project.PSIC;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.Project.PSIC.Model.Physician;

public class PhysicianTestClass extends PsicApplicationTests{
	
	@Autowired
	private WebApplicationContext webApplicationContext;

	private MockMvc mockMvc;
	@Before
	public void setup() {
		mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
	}
	@Test
	public void testPhysicianlogin() throws Exception {
		Physician a = new Physician();
		mockMvc.perform(get("/physicianlogin"))
				.andExpect(model().size(1))
		        .andExpect(model().attribute("obj", a))
		        .andExpect(status().isOk());

	}

	@Test
	public void editPhysicianProfile() throws Exception {
		Physician a = new Physician();
		mockMvc.perform(get("/editPhysicianProfile"))
				.andExpect(model().size(1))
		        .andExpect(model().attribute("obj", a))
		        .andExpect(model().attribute("flag1","true"))
		        .andExpect(status().isOk());

	}
	
	@Test
	public void addTimeTable() throws Exception {
		Physician a = new Physician();
		mockMvc.perform(get("/addTimeTable"))
				.andExpect(model().size(1))
		        .andExpect(model().attribute("obj", a))
		        .andExpect(status().isOk());

	}
	
	@Test
	public void delete() throws Exception {
		Physician a = new Physician();
		mockMvc.perform(get("/delete"))
				.andExpect(model().size(1))
		        .andExpect(model().attribute("obj", a))
		        .andExpect(status().isOk());

	}
	
	@Test
	public void physicianlogout() throws Exception {
		mockMvc.perform(get("/physicianlogout"))
				.andExpect(model().size(1))
		        .andExpect(model().attribute("flag", "false"))
		        .andExpect(status().isOk());

	}

}
