package com.DB;
import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnect {
	private static Connection conn;

	public static Connection getConn() 
	{
		try {
			// Thêm thuộc tính useUnicode và characterEncoding vào URL kết nối
	        String url = "jdbc:mysql://localhost:3306/book-web?useUnicode=true&characterEncoding=UTF-8";
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();  
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/book-web", "root", "Kongminh2001@");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}



