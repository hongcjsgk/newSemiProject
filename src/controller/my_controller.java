package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.member_Dto;
import my_page.imy_Dao;
import my_page.my_Dao;

public class my_controller extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String command = req.getParameter("command");

		// 회원가입
		if(command.equals("add")) {
		
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String address1 = req.getParameter("address1");
		String address2 = req.getParameter("address2");
		String address = address1+address2;
		
		
		member_Dto dto = new member_Dto(id,pwd,name,email,phone,address);
		
		
		
		imy_Dao dao = my_Dao.getInstance();
		
			boolean isS = dao.addMember(dto);
			if(isS){
				
				resp.sendRedirect("main_page.jsp");
			}else {
			
			resp.sendRedirect("member_regi.jsp");
			}
			
			
		}
		
	
		else if(command.equals("login")) {
			
			String id= req.getParameter("id");
				String pw = req.getParameter("pwd");
				
				imy_Dao dao = my_Dao.getInstance();
				member_Dto mem = dao.login(new member_Dto(id, pw));
				
				// DB에서 아이디, 비밀번호 확인
				
				// URL 및 로그인관련 전달 메시지
				
				if(mem != null && !mem.getId().equals("")){
				req.setAttribute("login", mem);
				String first = "1";
				req.setAttribute("first", first);
				req.getRequestDispatcher("login.jsp").forward(req, resp);
					System.out.println("로그인성공");
				
				}else{
				resp.sendRedirect("main_page.jsp");

				System.out.println("로그인실패");
				}
			
		}
			
		
		
	}

}
