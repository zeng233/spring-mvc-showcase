package org.springframework.zmytest.form;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/form")
public class MixFormController {
	
	@RequestMapping(value="/init", method={RequestMethod.POST, RequestMethod.GET})
	public String init() {
		return "/form/mixForm";
	}
	
	
	@RequestMapping(value="/print", method={RequestMethod.POST, RequestMethod.GET}, produces="application/json")
	@ResponseBody
	public MixForm print(MixForm mixForm) {
		return mixForm;
	}
}
