package com.vijay.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {
	
	
	@RequestMapping("/")
	public String showForm()
	{
		return"Login";
	}
	
	
// Here @PostMapping is similar to  {@RequestMapping(method = RequestMethod.POST)}
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response)
	{
		String name=request.getParameter("user");
		String password=request.getParameter("pass");
		
		
		
		/*
		if (!loginForm.getUserName().equals(userName)
				|| !loginForm.getPassword().equals(password)) {
			return "loginform";
		}
*/
		
		
		
		
		if (name.equals("admin") && password.equals("admin123"))
		{
			String message="Welcome"+name;
			return new ModelAndView("home","message",message);
		}
		else
		{
			return new ModelAndView("error","message","Invalid username and password");
		}
	}
}

	
	
	
	
	/*
	
	@PostMapping("/process")
	public String process(Model theModel, @ModelAttribute("viju") Student theStudent)
	{
		if (theStudent != null && theStudent.getUserName() != null & theStudent.getPassword() != null)
		{
		      if (theStudent.getUserName().equals("admin") && theStudent.getPassword().equals("admin123"))
		      {
		        theModel.addAttribute("viju", theStudent.getUserName());
		        return "success";
		      }
		      
		      
		      else
		       {
		        theModel.addAttribute("error", "Invalid Details");
		        return "login";
		        }
		   
	     }
		return null;
		
	}
	

	
}

			
	*/

/*
 * 
 * @RequestMapping("/showForm") public String showForm(Model theModel) {
 * //Create the model attribute to bind the form data Student theStudent=new
 * Student(); theModel.addAttribute("vijay", theStudent); return"registration";
 * }
 * 
 * 
 * @PostMapping("/saveStudent") public String
 * saveStudent(@ModelAttribute("vijay") Student theStudent) {
 * 
 * // Save the message using our service studentService.saveStudent(theStudent);
 * 
 * 
 * return"redirect:/showForm"; }
 * 
 */
