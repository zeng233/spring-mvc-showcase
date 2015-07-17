package org.springframework.zmytest.http;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/http")
public class HttpController {
	
	@RequestMapping
	public String init() {
		return "/http/index";
	}
	
	/**
	 * 测试ajax请求、http参数测试
	 * @return
	 */
	@RequestMapping(value="/ajaxInit", method={RequestMethod.GET, RequestMethod.POST}, produces={"application/json"})
	public String ajaxInit() {
		return "/http/request";
	}
	
	/**
	 * ajax请求为json格式，后台返回要用标准的json格式，key-value键值对，jQuery1.4+要求
	 * 
	 * 如果不是标准的json格式，ajax就执行error返回函数,
	 * 
	 * 如果返回String、int等，ajax的dataType类型为text
	 * @param userName
	 * @return
	 */
	@RequestMapping(value="/confirm/single")
	@ResponseBody
	public String single(String userName) {
		System.out.println(userName);
		return userName;
	}
	
	@RequestMapping(value="/confirm/obj")
	@ResponseBody
	public Message obj(Message msg) {
		return msg;
	}
	
	@RequestMapping(value="/confirm/view")
	public String view(Model model, String userName) {
		model.addAttribute("userName", userName);
		return "http/result";
	}
}
