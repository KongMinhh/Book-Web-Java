package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phone=req.getParameter("phone");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
			/*System.out.println(name+" "+email+" "+phone+" "+password+" "+check);*/
			
			User us=new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhone(phone);
			us.setPassword(password);
			
			HttpSession session=req.getSession();
			
			if(check!=null)
			{
				UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
				boolean f=dao.userRegister(us);
				if(f)
				{
					/*System.out.println("Đăng ký thành công !");*/
					session.setAttribute("succMsg", "Đăng ký thành công !");
					resp.sendRedirect("register.jsp");
				}else {
					/*System.out.println("Đăng ký thất bại !");*/
					session.setAttribute("failedMsg", "Đăng ký thất bại !");
					resp.sendRedirect("register.jsp");
				}
			}else {
				/*System.out.println("Xin vui lòng đồng ý điều kiên và bảo mật !");*/
				session.setAttribute("failedMsg", "Xin vui lòng đồng ý điều khoản và bảo mật !");
				resp.sendRedirect("register.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	

}
