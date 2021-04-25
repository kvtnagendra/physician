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

import com.Project.PSIC.Model.Admin;

public class TestClass extends PsicApplicationTests{
	
	@Autowired
	private WebApplicationContext webApplicationContext;

	private MockMvc mockMvc;

	@Before
	public void setup() {
		mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
	}
	
	@Test
	public void testAdminlogin() throws Exception {
		Admin a = new Admin();
		mockMvc.perform(get("/adminlogin"))
				.andExpect(model().size(1))
		        .andExpect(model().attribute("obj", a))
		        .andExpect(status().isOk());

	}
	
	@Test
	public void testAdminlogout() throws Exception {
		mockMvc.perform(get("/adminlogout"))
				.andExpect(model().size(1))
		        .andExpect(model().attribute("flag", null))
		        .andExpect(status().isOk());

	}
	
	
}
