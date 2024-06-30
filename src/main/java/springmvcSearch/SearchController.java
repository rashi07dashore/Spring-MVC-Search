package springmvcSearch;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {

	@RequestMapping("/home")
	public String home()
	{
		System.out.println("Going to home view");
		return "home";
	}
	
	@RequestMapping("/search")        //By default GET method is there
	public RedirectView search(@RequestParam("querybox") String query)
	{
		String url = "https://www.google.com/search?q="+query;
		RedirectView rv = new RedirectView();
		rv.setUrl(url);
		return rv;
	}
}
