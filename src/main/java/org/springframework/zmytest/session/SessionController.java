package org.springframework.zmytest.session;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SessionController {
	
	@RequestMapping(value="/session/init", method={RequestMethod.POST, RequestMethod.GET})
	public String init(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("foo", "bar");
		return "session/sessionInit";
	}
	
	@RequestMapping(value="/session/submit", method={RequestMethod.POST, RequestMethod.GET})
	public String submit() {
		return "session/sessionSuccess";
	}
}
