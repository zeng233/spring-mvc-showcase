package org.springframework.samples.mvc.zmytest.login;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	private static final String USER_PREFIX = "onepay:chip:currentUser:";

	
	@Value("${login.session.timeout}")
	private int sessionTimeout;
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		boolean flag = false;
		Cookie cookie = CookieUtils.getCookie(request, "sessionId");
		if (cookie != null) {
			String sessionId = cookie.getValue();
			// 用户未登录
//			if (userVO == null) {
//				flag = false;
//			} else {
				CookieUtils.deleteCookie(request, response, cookie);//删除以前的cookie
				CookieUtils.setCookie(request, response, "sessionId", sessionId, sessionTimeout);//重置cookie时间
				flag = true;
//			}
		}
		

		if (!flag) {
			if (request.getHeader("X-Requested-With") != null
					&& request.getHeader("X-Requested-With").equalsIgnoreCase("XMLHttpRequest")) {
				response.setHeader("sessionStatus", "timeout");
			} else {
				String path = request.getContextPath() + "/";
				response.sendRedirect(path);// 返回登录页面
			}
			return false;
		}

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		//处理用户信息
		if(modelAndView !=null){
//			modelAndView.addObject("userRealName", UserHolder.getLoginUserName());
//			String menus = MenuMapUtil.getHideMenuValue(UserHolder.getUserVO().getRoleId());
//			modelAndView.addObject("menus", menus);
		}
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}

}
