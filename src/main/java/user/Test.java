package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Test{

	private static final String DB_DRIVER_CLASS = "org.mariadb.jdbc.Driver";

	private static final String DB_URL = "jdbc:mariadb://localhost:3306/";



	private static final String DB_USERNAME = "root";

	private static final String DB_PASSWORD = "123456";



	private static Connection conn;

	PreparedStatement pstmt = null;



	private static void connectDB() {



		try {

			Class.forName(DB_DRIVER_CLASS);

			Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

			System.out.println("���Ἲ��");



		} catch (ClassNotFoundException e) {

			// TODO Auto-generated catch block

			System.out.println("����̺� �ε� ����");

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			System.out.println("DB ���� ����");

		}

	}

	public static void main(String[] args) {

		Test test = new Test();

		test.connectDB();

	}

}


