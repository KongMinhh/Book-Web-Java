package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;

@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		try {

			String bookName = req.getParameter("name-book");
			String author = req.getParameter("name-author");
			String price = req.getParameter("prices");
			String categories = req.getParameter("category");
			String status = req.getParameter("status");
//			Bug
			Part part = req.getPart("bimg");
			String fileName = part.getSubmittedFileName();

			BookDtls b = new BookDtls(bookName, author, price, categories, status, fileName, "admin");

			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());

			boolean f = dao.addBooks(b);
			HttpSession session = req.getSession();

			if (f) {

				String path = getServletContext().getRealPath("") + "book";

				File file = new File(path);
				part.write(path + File.separator + fileName);

				session.setAttribute("succMsg", "Thêm Sách Thành Công !");
				resp.sendRedirect("./admin/add_books.jsp");
			} else {
				session.setAttribute("failedMsg", "Thêm Sách Chưa Thành Công !");
				resp.sendRedirect("./admin/add_books.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
