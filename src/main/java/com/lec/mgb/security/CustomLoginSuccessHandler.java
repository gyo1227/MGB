package com.lec.mgb.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	// 로그?�� 직후?�� ?��?��?��?�� 코드
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {

		System.out.println("로그?�� ?���?!");
		
		// Authentication 객체�? ?��?��?��?�� ?��?��?���? �?�? 모든 권한?�� 문자?���? 체크 �??��
		List<String> roleNames = new ArrayList<String>();
		authentication.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});	//커넥?�� 객체�? 리턴
		
		System.out.println("ROLE NAMES: " + roleNames);
		
		// 만약 ?��?��?���? ROLE_ADMIN 권한?�� �?졌다�? 로그?��?�� 곧바�? /sample/admin ?���? ?��?��
		if(roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect(request.getContextPath() + "/sample/admin");
			return;
		}
		
		if(roleNames.contains("ROLE_MEMBER")) {
			response.sendRedirect(request.getContextPath() + "/sample/member");
			return;
		}
		
		response.sendRedirect(request.getContextPath());
	}

}
