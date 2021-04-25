package com.Project.PSIC.Controller;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Project.PSIC.Model.Bookphysician;
import com.Project.PSIC.Model.Physician;
import com.Project.PSIC.Model.TimeTable;
import com.Project.PSIC.Repository.BookedRepository;
import com.Project.PSIC.Repository.PhysicianRepository;
import com.Project.PSIC.Repository.TimetableRepository;


@Controller
public class PhysicianController {
	@Autowired
	PhysicianRepository repo;
	
	@Autowired
	TimetableRepository trepo;
	

	@Autowired
	BookedRepository brepo;

	public String namecopy; 
	public String pid;
	public Physician physician=new Physician();
	@RequestMapping(value="/physicianregister")
	public ModelAndView adminregister(@ModelAttribute("a") Physician a){
		ModelAndView mv=new ModelAndView();
		String id[]=a.getEmail().split("@");
		a.setId(id[0]);
		Physician findByEmail = repo.findByEmail(a.getEmail());
		if(findByEmail == null) {
			Physician save = repo.save(a);
			mv.addObject("msg","Physician Registered Success");
			mv.addObject("flag","true");
		}else {
			mv.addObject("msg","Physician Registration Not Success");
			mv.addObject("flag","false");
		}
		mv.setViewName("index");
		return mv;
	}
	@RequestMapping(value="/physicianlogin",method=RequestMethod.GET)
	public ModelAndView adminlogin(@RequestParam("email") String email,@RequestParam("pswd")String pswd){
		Physician c = repo.findByEmail(email);
		List<TimeTable> findAll = trepo.findAll();
		ModelAndView mv=new ModelAndView();
		if(c !=null) {
			if(email.equals(c.getEmail()) && (pswd.equals(c.getPswd()))) {
				try {
					namecopy=c.getName();
					pid=c.getId();
					physician=c;
					mv.addObject("obj",c);
					mv.addObject("al",findAll);
				}catch(Exception e) {
				}
				mv.setViewName("Physician_after_login");
			}else {
				mv.addObject("msg","Login Failed Invalid credentials");
				mv.addObject("flag", "false");
				mv.setViewName("index");
			}
		}else {
				mv.setViewName("index");
				mv.addObject("msg","Login Failed Admin not Exists have to Register");
				mv.addObject("flag", "false");
			}
		List<Bookphysician> booked = brepo.findAll();
		mv.addObject("allBooked", booked);
		List<Physician> allphysicians = repo.findAll();
		mv.addObject("allphysicians", allphysicians);
		return mv;
	}
	
	@RequestMapping(value="/editPhysicianProfile")
	public ModelAndView editprofile(@RequestParam("id") String id,@RequestParam("name") String name,@RequestParam("phone") String phone,@RequestParam("place") String place,@RequestParam("email") String email,@RequestParam("address") String address) throws IOException {
		ModelAndView mv=new ModelAndView();
		Physician c = repo.findByEmail(email);
		List<TimeTable> findAll = trepo.findAll();
		mv.addObject("al",findAll);
		if(c != null) {
			c.setId(id);
			c.setName(name);
			c.setMobile(phone);
			c.setPlace(place);
			c.setEmail(email);
			c.setAddress(address);
			repo.save(c);
			physician=c;
			pid=c.getId();
			namecopy=c.getName();
			mv.addObject("obj",c);
			List<Bookphysician> booked = brepo.findAll();
			mv.addObject("allBooked", booked);
			List<Physician> allphysicians = repo.findAll();
			mv.addObject("allphysicians", allphysicians);
			mv.setViewName("Physician_after_login");
		}
		return mv;
	}
	
	@RequestMapping("/addTimeTable")
	public ModelAndView add(@RequestParam("date") String date) {
		TimeTable findByDate = trepo.findByDate(date);
		ModelAndView mv=new ModelAndView();
		if(findByDate == null) {
			TimeTable a=new TimeTable();
			a.setId(pid);
			a.setName(namecopy);
			a.setDate(date);
			a.setSlot1("N");
			a.setSlot2("N");
			a.setSlot3("N");
			a.setSlot4("N");
			trepo.save(a);
		}else {
			mv.addObject("flag1", "true");
			mv.addObject("msg", "Date Already Added");
		}
		List<TimeTable> findAll = trepo.findAll();
		mv.addObject("obj",physician);
		mv.addObject("al",findAll);
		List<Bookphysician> booked = brepo.findAll();
		mv.addObject("allBooked", booked);
		List<Physician> allphysicians = repo.findAll();
		mv.addObject("allphysicians", allphysicians);
		mv.setViewName("Physician_after_login");
		return mv;
	}
	
	@RequestMapping(value="/delete")
	public ModelAndView delete(@RequestParam("date") String date,@RequestParam("id") String id) {
		ModelAndView mv = new ModelAndView();
//		trepo.deleteById(id);
		trepo.deleteById(date);
		List<TimeTable> findAll = trepo.findAll();
		String s=id+"@gmail.com";
		Physician findById = repo.findByEmail(s);
		physician =findById;
		mv.addObject("obj",physician);
		mv.addObject("al",findAll);
		List<Bookphysician> booked = brepo.findAll();
		mv.addObject("allBooked", booked);
		List<Physician> allphysicians = repo.findAll();
		mv.addObject("allphysicians", allphysicians);
		mv.setViewName("Physician_after_login");
		return mv;
	}
	
	@RequestMapping(value="/physicianlogout")
	public ModelAndView physicianlogout() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("flag", "false");
		mv.setViewName("index");
		return mv;
	}
	
}
