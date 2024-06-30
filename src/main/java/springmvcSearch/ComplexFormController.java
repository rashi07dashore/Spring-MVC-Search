package springmvcSearch;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ComplexFormController {

	@RequestMapping("/complex")
	public String showForm() {
		return "complex_form";
	}

	@RequestMapping(path = "/handleform", method = RequestMethod.POST)
	public String formHandler(@ModelAttribute("student") Student student, BindingResult result) 
	{
		//BindingResult is used to handle errors
		//In this condition if user inputs some wrong data in the form instead of getting Http error
		// and BindingErrors the complex form will be re-open for filling the entries again
		if(result.hasErrors())
		{
			return "complex_form";
		}
		
		System.out.println(student);
		System.out.println(student.getAddress());
		return "success";
	}
	
	@RequestMapping("/handleform")
	public String goingHome()
	{
		return "home";
	}
}





//@RequestMapping(path = "/handleform", method = RequestMethod.POST)
//public String formHandler(@RequestParam("name") String name, @RequestParam("email") String email,
//		@RequestParam("phn") Long phn, @RequestParam("password") String password,
//		@RequestParam("course") String course) 
//{
//	System.out.println(name);
//	System.out.println(email);
//	return "success";
//}
