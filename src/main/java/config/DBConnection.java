package config;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnection {
	//정적메소드 접근제한자 정적 리턴타입 메소드명
		 public static Connection getConnection() {
			 Context initContext;
			try {
				initContext = new InitialContext();
				Context envContext  = (Context)initContext.lookup("java:/comp/env");
				DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
				Connection conn = ds.getConnection();
				System.out.println("DB연결성공");
				return conn;
			} catch (Exception e) {
				System.out.println("DB연결실패");
				e.printStackTrace();
			}
			return null;
		 }
		 public static void close(Connection conn, Statement stmt, ResultSet rs) {
			 try {
				conn.close();
				stmt.close();
				rs.close();
				System.out.println("DB연결삭제");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
		 
		 public static void close(Connection conn, Statement stmt) {
			 try {
				conn.close();
				stmt.close();
				System.out.println("DB연결삭제");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
}
