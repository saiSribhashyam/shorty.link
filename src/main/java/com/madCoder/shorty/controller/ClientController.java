package com.madCoder.shorty.controller;


import java.util.Date;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.madCoder.shorty.model.Link;
import com.madCoder.shorty.model.User;
import com.madCoder.shorty.service.LinkService;
import com.madCoder.shorty.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private LinkService linksv;
	
	static int uid; 
	
	@GetMapping("/")
	public String main() {
		return "index";
	}
	
	@GetMapping("/login")
	public ModelAndView renderlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		
		return mv;
	}
	
	@GetMapping("/home")
	public ModelAndView renderHome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		
		return mv;
	}
	
	@GetMapping("/test")
	public ModelAndView renderTest() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("test1");
		
		return mv;
	}
	
	@PostMapping("insert")
	public ModelAndView insert(HttpServletRequest request)
	{
		String feedback=null;
		ModelAndView mv=new ModelAndView();
		try {
			String name=request.getParameter("name");
			System.out.println(name);
			String dob=request.getParameter("dob");
			String email=request.getParameter("email");
			String pass=request.getParameter("password");
			System.out.println(pass.equals(null)? "hello":"nope");
			String mobile=request.getParameter("mobileno");
			String check="";
			String check2=" ";
			if(name.equals(check2)||name.equals(check)||dob.equals(check2)||dob.equals(check)||email.equals(check2)||email.equals(check)||pass.equals(check2)||pass.equals(check)||mobile.equals(check2)||mobile.equals(check))
				throw new Exception("you found it mail me : nulluserklu@gmail.com");
			
			User u = new User();
			
			u.setName(name);
			u.setDob(dob);
			u.setEmail(email);
			u.setPassword(pass);
			u.setActive(true);
			u.setMobileno(mobile);
			
			feedback=userService.addUser(u);
			mv.setViewName("success");
			mv.addObject("message",feedback);
		}catch (Exception e) 
		{
			feedback = e.getMessage();
			
			mv.setViewName("success");
			mv.addObject("message",feedback);
		}
		
		return mv;
		
	}
	
	@PostMapping("loginUser")
	public ModelAndView loginUser(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		User u=userService.checkUserlogin(email, pass);
		if(u!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("name", u.getName());
			session.setAttribute("mmail", u.getEmail());
			session.setAttribute("uid", u.getId());
			mv.setViewName("home");
			uid=u.getId();
			
		}
		else
		{
			mv.setViewName("login");
			mv.addObject("message","Wrong Creds Try again");
		}
		
		return mv;
		
	}
	
	@PostMapping("shorten")
	public ModelAndView shorten(HttpServletRequest request) {
	    String fb = null;
	    ModelAndView mv = new ModelAndView();
	    try {
	        String backhalf = request.getParameter("backhalf");
	        String oglink = request.getParameter("oglink");
	        String title = request.getParameter("ltitle");

	        if (backhalf == null || backhalf.trim().isEmpty() || oglink == null || oglink.trim().isEmpty()) {
	            throw new Exception("Invalid input. Please provide both backhalf and original link.");
	        }

	        Link link = new Link();
	        link.setBack(backhalf);
	        link.setOg(oglink);
	        link.setTitle(title);

	        HttpSession session = request.getSession();
	        link.setUid((int) session.getAttribute("uid"));

	        // Set the creation date to the current date and time
	        link.setDate(new Date());

	        fb = linksv.addLink(link);
	        mv.setViewName("home");
	        mv.addObject("message", "Successfully generated link, go to my link Section 🙂");
	    } catch (Exception e) {
	        fb = e.getMessage();
	        mv.setViewName("home");
	        mv.addObject("message", "Error processing request. Please try again or refresh the page");
	    }
	    return mv;
	}

	
	@GetMapping("/mylinks")
	public ModelAndView myLinks(HttpSession session) {
	    ModelAndView mv = new ModelAndView();
	    int uid = (int) session.getAttribute("uid");

	    List<Link> userLinks = linksv.getUserLinks(uid);

	    for(Link l:userLinks) {
	    	System.out.println(l.toString());
	    }
	    mv.addObject("userLinks", userLinks);
	    mv.setViewName("mylinks"); // Create a mylinks.jsp view to display the links
	    

	    return mv;
	}
	
	@GetMapping("/{back:[a-zA-Z0-9]+}")
	public String redirectToOg(@PathVariable String back) {
		String og=linksv.getOg(back);
		if (og != null) {
          return "redirect:" + og;
        }
		else {
			return "redirect:error";
		}
		
	}
	
	 @GetMapping("/qr-code/{linkId}")
	    public ResponseEntity<byte[]> getQrCodeImage(@PathVariable int linkId) {
	        byte[] qrCodeImage = linksv.getQrCodeImage(linkId);
	        if (qrCodeImage.length > 0) {
	            HttpHeaders headers = new HttpHeaders();
	            headers.setContentType(MediaType.IMAGE_PNG);
	            return new ResponseEntity<>(qrCodeImage, headers, HttpStatus.OK);
	        } else {
	            // Handle case when link with given ID is not found
	            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	        }
	    }
	
	
	
	
}
