package org.springframework.samples.mvc.zmytest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/test")
public class JqueryController {
	@RequestMapping(value="/form", method=RequestMethod.POST)
	@ResponseBody
	public MyForm test(MyForm myForm) {
		return myForm;
	}
}
