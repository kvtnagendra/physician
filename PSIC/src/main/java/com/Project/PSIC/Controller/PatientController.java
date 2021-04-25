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
import com.Project.PSIC.Model.Cancelled;
import com.Project.PSIC.Model.Patient;
import com.Project.PSIC.Model.Physician;
import com.Project.PSIC.Model.TimeTable;
import com.Project.PSIC.Repository.BookedRepository;
import com.Project.PSIC.Repository.CancelledRepository;
import com.Project.PSIC.Repository.PatientRepository;
import com.Project.PSIC.Repository.PhysicianRepository;
import com.Project.PSIC.Repository.TimetableRepository;

@Controller
public class PatientController {
	
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
	
	public String namecopy; 
	public String patid;
	public Patient patient=new Patient();
	
	@RequestMapping(value="/patientregister")
	public ModelAndView patientregister(@ModelAttribute("a") Patient a){
		ModelAndView mv=new ModelAndView();
		String id[]=a.getEmail().split("@");
		a.setId(id[0]);
		Patient findByEmail = prepo.findByEmail(a.getEmail());
		if(findByEmail == null) {
			Patient save = prepo.save(a);
			mv.addObject("msg","Patient Registered Success");
			mv.addObject("flag","true");
		}else {
			mv.addObject("msg","Patient Registration Not Success");
			mv.addObject("flag","false");
		}
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value="/patientlogin",method=RequestMethod.GET)
	public ModelAndView adminlogin(@RequestParam("email") String email,@RequestParam("pswd")String pswd){
		Patient c = prepo.findByEmail(email);
		List<TimeTable> findAll = trepo.findAll();
		ModelAndView mv=new ModelAndView();
		if(c !=null) {
			if(email.equals(c.getEmail()) && (pswd.equals(c.getPswd()))) {
				try {
					namecopy=c.getName();
					patid=c.getId();
					patient=c;
					List<Bookphysician> booked = brepo.findAll();
					mv.addObject("allBooked", booked);
					mv.addObject("obj",c);
					mv.addObject("al",findAll);
					List<Physician> physicians = repo.findAll();
					mv.addObject("physicians",physicians);
					mv.addObject("booked","");
				}catch(Exception e) {
				}
				mv.setViewName("Patient_after_login");
			}else {
				mv.setViewName("index");
				mv.addObject("msg","Login Failed Invalid credentials");
				mv.addObject("flag", "false");
			}
		}else {
				mv.setViewName("index");
				mv.addObject("msg","Login Failed Patient not Exists have to Register");
				mv.addObject("flag", "false");
			}
		List<TimeTable> table = trepo.findAll();
		mv.addObject("table", table);
		return mv;
	}
	
	@RequestMapping(value="/editPatientProfile")
	public ModelAndView editprofile(@RequestParam("id") String id,@RequestParam("name") String name,@RequestParam("phone") String phone,@RequestParam("place") String place,@RequestParam("email") String email,@RequestParam("address") String address) throws IOException {
		ModelAndView mv=new ModelAndView();
		Patient c = prepo.findByEmail(email);
		
		if(c != null) {
			c.setId(id);
			c.setName(name);
			c.setMobile(phone);
			c.setPlace(place);
			c.setEmail(email);
			c.setAddress(address);
			prepo.save(c);
			patient=c;
			patid=c.getId();
			namecopy=c.getName();
			mv.addObject("obj",c);
			List<Physician> physicians = repo.findAll();
			List<Bookphysician> booked = brepo.findAll();
			mv.addObject("allBooked", booked);
			mv.addObject("physicians",physicians);
			mv.addObject("booked","");
			List<TimeTable> findAll = trepo.findAll();
			mv.addObject("al",findAll);
			List<TimeTable> table = trepo.findAll();
			mv.addObject("table", table);
			mv.setViewName("Patient_after_login");
		}
		return mv;
	}
	
	@RequestMapping(value="/save")
	public ModelAndView bookPhysician(@RequestParam(value ="id") String pid,@RequestParam(value ="pname") String pname,@RequestParam(value ="pemail") String pemail,@RequestParam(value ="date") String date,@RequestParam(value ="physician") String physician,@RequestParam(value ="slot") String slot,@RequestParam(value ="problem") String problem) {
		ModelAndView mv = new ModelAndView();
		Physician physician2 = repo.findByEmail(physician);
		Optional<TimeTable> findById2 = trepo.findById(date);
//		System.out.println(findById2.isPresent());
//		System.out.println(findById2.get());
		if(findById2.isPresent()) {
			TimeTable t =findById2.get();
//			System.out.println(t);
			if(t.getDate().equalsIgnoreCase(date)) {
				Bookphysician b = new Bookphysician();
				b.setPid(pid);
				b.setPname(pname);
				b.setPemail(pemail);
				b.setPhysicianid(physician2.getId());
				b.setPhysicianName(physician2.getName());
				b.setDate(date);
				b.setProblem(problem);
						switch(slot) {
								case "1":
									System.out.println("1");
									if(t.getSlot1().equalsIgnoreCase("Booked")){
												mv.addObject("booked", "Slot1 on this "+t.getDate()+" already booked");
										   }else {
											   t.setSlot1("Booked");
											   b.setSlot("slot1");
											   trepo.save(t);
											   brepo.save(b);
											   mv.addObject("booked","Slot1 Booking Appointment Success on "+t.getDate());
										   }
									break;
								case "2":
									System.out.println("2");
									if(t.getSlot2().equalsIgnoreCase("Booked")){
												mv.addObject("booked", "Slot2 on this "+t.getDate()+" already booked");
										   }else {
											   t.setSlot2("Booked");
											   b.setSlot("slot2");
											   trepo.save(t);
											   brepo.save(b);
											   mv.addObject("booked","Slot2 Booking Appointment Success on "+t.getDate());
										   }
									break;
								case "3":
									System.out.println("3");
									if(t.getSlot3().equalsIgnoreCase("Booked")){
												mv.addObject("booked", "Slot3 on this "+t.getDate()+" already booked");
										   }else {
											   t.setSlot3("Booked");
											   b.setSlot("slot3");
											   trepo.save(t);
											   brepo.save(b);
											   mv.addObject("booked","Slot3 Booking Appointment Success on "+t.getDate());
										   }
									break;
								case "4":
									System.out.println("4");
									if(t.getSlot4().equalsIgnoreCase("Booked")){
												mv.addObject("booked", "Slot4 on this "+t.getDate()+" already booked");
										   }else {
											   t.setSlot4("Booked");
											   b.setSlot("slot4");
											   trepo.save(t);
											   brepo.save(b);
											   mv.addObject("booked","Slot4 Booking Appointment Success on "+t.getDate());
										   }
									break;
						}
				
			}
		}
		List<Bookphysician> booked = brepo.findAll();
		mv.addObject("allBooked", booked);
		Patient patient = prepo.findByEmail(pemail);
		mv.addObject("pat",patient);
		mv.addObject("physician2",physician2);
		mv.addObject("date",date);
		mv.addObject("slot",slot);
		mv.addObject("problem",problem);
		mv.addObject("obj",patient);
		List<Physician> physicians = repo.findAll();
		mv.addObject("physicians",physicians);
		List<TimeTable> findAll = trepo.findAll();
		mv.addObject("al",findAll);
		mv.addObject("table", findAll);
		mv.setViewName("Patient_after_login");
		return mv;
	}
	
	@RequestMapping(value="/deletebooked")
	public ModelAndView deletebooked(@RequestParam(value ="pid") String pid,@RequestParam(value ="pemail") String pemail) {
		ModelAndView mv = new ModelAndView();
		Bookphysician cancelled = brepo.findByPemail(pemail);
		if(cancelled!=null) {
			Cancelled c = new Cancelled();
			c.setPid(pid);
			c.setPname(cancelled.getPname());
			c.setPemail(pemail);
			c.setPhysicianid(cancelled.getPhysicianid());
			c.setPhysicianName(cancelled.getPhysicianName());
			c.setDate(cancelled.getDate());
			c.setSlot(cancelled.getSlot());
			c.setProblem(cancelled.getProblem());
			Optional<TimeTable> findByIdtimetable = trepo.findById(cancelled.getDate());
			if(findByIdtimetable.isPresent()) {
				findByIdtimetable.get().setDate(cancelled.getDate());
				if(cancelled.getSlot().equalsIgnoreCase("slot1")) {
					findByIdtimetable.get().setSlot1("N");
				}else if(cancelled.getSlot().equalsIgnoreCase("slot2")) {
					findByIdtimetable.get().setSlot2("N");
				}else if(cancelled.getSlot().equalsIgnoreCase("slot3")) {
					findByIdtimetable.get().setSlot3("N");
				}else if(cancelled.getSlot().equalsIgnoreCase("slot4")) {
					findByIdtimetable.get().setSlot4("N");
				}
				trepo.save(findByIdtimetable.get());
			}
			crepo.save(c);
			brepo.deleteById(pid);
			String s=pid+"@gmail.com";
			Patient patient2 = prepo.findByEmail(s);
			mv.addObject("pat",patient2);
			mv.addObject("obj",patient2);
			List<Bookphysician> booked = brepo.findAll();
			mv.addObject("allBooked", booked);
			List<TimeTable> findAll = trepo.findAll();
			mv.addObject("obj",patient);
			mv.addObject("al",findAll);
			List<Physician> physicians = repo.findAll();
			mv.addObject("physicians",physicians);
			mv.addObject("booked","");
			Physician physician2 = repo.findByEmail(pemail);
			mv.addObject("physician2",physician2);
			mv.addObject("date",cancelled.getDate());
			mv.addObject("slot",cancelled.getSlot());
			mv.addObject("problem",cancelled.getProblem());
			mv.addObject("table", findAll);
		}
		
		mv.setViewName("Patient_after_login");
		return mv;
	}


	@RequestMapping(value="/patientlogout")
	public ModelAndView physicianlogout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("flag", "");
		return mv;
	}

}
