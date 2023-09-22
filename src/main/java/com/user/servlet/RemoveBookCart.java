package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DB.DBConnect;

@WebServlet("/remove_book")
public class RemoveBookCart extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int bid=Integer.parseInt(req.getParameter("bid"));
		int uid=Integer.parseInt(req.getParameter("uid"));
		int cid=Integer.parseInt(req.getParameter("cid"));
		CartDAOImpl dao=new CartDAOImpl(DBConnect.getConn());
		boolean f=dao.deleteBook(bid,uid,cid);
		HttpSession session=req.getSession();
		
		if(f)
		{
			session.setAttribute("succMsg", "Sách đã được xóa !");
			resp.sendRedirect("checkout.jsp");
		}
		else {
			session.setAttribute("failedMs", "Lỗi sách chưa được xóa !");
			resp.sendRedirect("checkout.jsp");
		}
	}
	
}
