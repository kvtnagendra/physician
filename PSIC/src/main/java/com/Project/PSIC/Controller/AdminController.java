package com.Project.PSIC.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Project.PSIC.Model.Admin;
import com.Project.PSIC.Model.Bookphysician;
import com.Project.PSIC.Model.Cancelled;
import com.Project.PSIC.Model.Patient;
import com.Project.PSIC.Model.Physician;
import com.Project.PSIC.Model.TimeTable;
import com.Project.PSIC.Repository.AdminRepository;
import com.Project.PSIC.Repository.BookedRepository;
import com.Project.PSIC.Repository.CancelledRepository;
import com.Project.PSIC.Repository.PatientRepository;
import com.Project.PSIC.Repository.PhysicianRepository;
import com.Project.PSIC.Repository.TimetableRepository;

@Controller
public class AdminController {
	
	@Autowired
	AdminRepository adminrepo;
	
	@Autowired
	PatientRepository prepo;
	
	@Autowired
	TimetableRepository trepo;
	
	@Autowired
	PhysicianRepository repo;
	
	@Autowired
	BookedRepository brepo;
	
	@Autowired
	CancelledRepository crepo;

	
	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView mv=new ModelAndView();         
		mv.setViewName("index");
//		mv.addObject("flag","");
		return mv;
	}
	
	@RequestMapping(value="/adminregister")
	public ModelAndView adminregister(@ModelAttribute("a") Admin a){
		ModelAndView mv=new ModelAndView();
		String id[]=a.getEmail().split("@");
		a.setId(id[0]);
		Admin findByEmail = adminrepo.findByEmail(a.getEmail());
		if(findByEmail == null) {
			Admin save = adminrepo.save(a);
			mv.addObject("msg","Admin Registered Success");
			mv.addObject("flag","true");
		}else {
			mv.addObject("msg","Admin Registration Not Success");
			mv.addObject("flag","false");
		}
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value="/adminlogin",method=RequestMethod.GET)
	public ModelAndView adminlogin(@RequestParam("email") String email,@RequestParam("pswd")String pswd){
		Admin c = adminrepo.findByEmail(email);
		ModelAndView mv=new ModelAndView();
		if(c !=null) {
			if(email.equals(c.getEmail()) && (pswd.equals(c.getPswd()))) {
				try {
					mv.addObject("obj",c);
				}catch(Exception e) {
				}
				mv.setViewName("admin_after_login");
			}else {
				mv.setViewName("index");
				mv.addObject("msg","Login Failed Invalid credentials");
				mv.addObject("flag", "false");
			}
		}else {
				mv.setViewName("index");
				mv.addObject("msg","Login Failed Admin not Exists have to Register");
				mv.addObject("flag", "false");
			}
		List<Physician> physicians = repo.findAll();
		mv.addObject("physicians", physicians);
		List<Patient> patients = prepo.findAll();
		mv.addObject("patients", patients);
		List<Bookphysician> book = brepo.findAll();
		mv.addObject("book", book);
		List<TimeTable> table = trepo.findAll();
		mv.addObject("table", table);
		List<Cancelled> cancelled = crepo.findAll();
		mv.addObject("cancelled",cancelled);
		
		return mv;
	}
	
	@RequestMapping(value="/adminlogout",method=RequestMethod.GET)
	public ModelAndView adminlogout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("flag", null);
		return mv;
	}

}
