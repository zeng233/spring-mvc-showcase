package org.springframework.zmytest;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/test")
public class JqueryController {
	@RequestMapping(value="/form", method=RequestMethod.POST)
	@ResponseBody
	public MyForm test(MyForm myForm, HttpServletRequest request, HttpServletResponse response) {
		request.getSession().setAttribute("test", "session");
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				cookie.setHttpOnly(true);
				response.addCookie(cookie);
			}
			
		}
		
		return myForm;
	}
}
