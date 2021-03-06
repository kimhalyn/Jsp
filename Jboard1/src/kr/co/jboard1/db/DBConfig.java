package kr.co.jboard1.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {

	private static DBConfig instance = new DBConfig();
	private DBConfig() {}

	public static DBConfig getInstance() {
		return instance;
	}

	// DB정보
	private final String HOST = "jdbc:mysql://192.168.10.114:3306/khr";
	private final String USER = "khr";
	private final String PASS = "1234";
	
	public Connection getConnection() throws Exception {
	

		// 1단계 - JDBC 드라이버 로드
		Class.forName("com.mysql.jdbc.Driver");

		// 2단계 - 데이터베이스 접속
		Connection conn = DriverManager.getConnection(HOST, USER, PASS);
		
		return conn;
	}

}
