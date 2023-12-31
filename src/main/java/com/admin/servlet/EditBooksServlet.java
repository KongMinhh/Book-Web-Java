package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;

@WebServlet("/editbooks")
public class EditBooksServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String bookName = req.getParameter("name-book");
			String author = req.getParameter("name-author");
			String price = req.getParameter("prices");
			String categories = req.getParameter("category");
			String status = req.getParameter("status");
			
			BookDtls b=new BookDtls();
			b.setBookId(id);
			b.setBookName (bookName);
			b.setAuthor (author);
			b.setPrice(price);
			b.setStatus(status);
			BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn()); 
			boolean f=dao.updateEditBooks (b);
			
			HttpSession session=req.getSession();
			
			if(f) 
			{
				session.setAttribute("succMsg", "Cập nhật sách thành công !");
				resp.sendRedirect("./admin/all_books.jsp");
			}else {
				session.setAttribute("failedMsg", "Lỗi cập nhật sách !");
				resp.sendRedirect("./admin/all_books.jsp");
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
			
	}
	
}
