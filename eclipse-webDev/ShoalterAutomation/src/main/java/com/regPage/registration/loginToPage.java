package com.regPage.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.protocol.Resultset;

/**
 * Servlet implementation class loginToPage
 */
@WebServlet("/LoginToPage")
public class loginToPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String ema = request.getParameter("email");
		String password = request.getParameter("pass");
		// String lin = "https://ornate-gumdrop-ac80ec.netlify.app/";

		HttpSession httpSession = request.getSession();

		RequestDispatcher dispatcher = null;
		Connection connection = null;

		/*
		 * 
		 * database connection
		 */
		final String dataBaseName = "root";
		final String datBaePass = "12345Liverpool";

		/*
		 * Server side validation
		 */
		if (ema == null || ema.equals("")) {
			request.setAttribute("status", "incorrectEmail");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}

		if (password == null || password.equals("")) {
			request.setAttribute("status", "incorrectPassword");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/shoalteManchester?useSSL=false&allowPublicKeyRetrieval=true",
					dataBaseName, datBaePass);

			PreparedStatement s = connection
					.prepareStatement("select * from companywork where usersEmail = ? and usersPassword = ?");
			s.setString(1, ema);
			s.setString(2, password);

			ResultSet resultset = s.executeQuery();

			if (resultset.next()) {
				httpSession.setAttribute("nameF", resultset.getString("firstName"));
				dispatcher = request.getRequestDispatcher("index.jsp");
			} else {
				request.setAttribute("status", "falied");
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			dispatcher.forward(request, response);

		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
