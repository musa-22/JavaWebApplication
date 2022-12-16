package com.regPage.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisforStaffPages
 */
@WebServlet("/registData")
public class RegisforStaffPages extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstName = request.getParameter("nameF");

		String lastName = request.getParameter("nameL");
		String usersEmail = request.getParameter("email");

		String yourAddress = request.getParameter("Address");

		String usersPassword = request.getParameter("password");
		String 	checkPassword = request.getParameter("Apassword");
	

		

		RequestDispatcher dispatcher = null;
		Connection connection = null;
	    
	    /*
		 * 
		 * database connection
		 */
		 String dataBaseName = "root";
		 String datBaePass = "12345Liverpool";

		/*
		 * Server side validation
		 */
		
		
		if ( firstName == null ||firstName.equals("")) {
			request.setAttribute("status", "typeValidFirstName");
			dispatcher = request.getRequestDispatcher("regist.jsp");
			dispatcher.forward(request, response);
		}


		if ( lastName == null ||lastName.equals("")) {
			request.setAttribute("status", "typeValidLastName");
			dispatcher = request.getRequestDispatcher("regist.jsp");
			dispatcher.forward(request, response);
		}
		

		if ( usersEmail == null ||usersEmail.equals("")) {
			request.setAttribute("status", "typeEmail");
			dispatcher = request.getRequestDispatcher("regist.jsp");
			dispatcher.forward(request, response);
		}
		

		if ( yourAddress == null ||yourAddress.equals("")) {
			request.setAttribute("status", "typeYourAddress");
			dispatcher = request.getRequestDispatcher("regist.jsp");
			dispatcher.forward(request, response);
		}
		

		if ( usersPassword == null ||usersPassword.equals("")) {
			request.setAttribute("status", "typeYourPassowrd");
			dispatcher = request.getRequestDispatcher("regist.jsp");
			dispatcher.forward(request, response);
			
		} else if(!usersPassword.equals(checkPassword)) {
			request.setAttribute("status", "passowrdnotMatch");
			dispatcher = request.getRequestDispatcher("regist.jsp");
			dispatcher.forward(request, response);
			
		}
		
	    
	  
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoalteManchester?useSSL=false&allowPublicKeyRetrieval=true",dataBaseName, datBaePass);
			PreparedStatement s = connection.prepareStatement(
					"insert into companywork(firstName,lastName,usersEmail,yourAddress,usersPassword)values(?,?,?,?,?)");
			s.setString(1, firstName);
			s.setString(2, lastName);
			s.setString(3, usersEmail);
			s.setString(4, yourAddress);
			s.setString(5, usersPassword);
			
			
			int contRecord = s.executeUpdate();
			dispatcher = request.getRequestDispatcher("regist.jsp");

			// dispatcher = request.getRequestDispatcher("formRegistrationforSta.jsp");

			if (contRecord > 0) {

				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "No way");
			}

			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("falied to create database connectiom " +  e.getMessage());
		} finally {
			
				try {
					connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			
		}

	}

}