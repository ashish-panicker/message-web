package com.message.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.message.model.User;
import com.message.service.UserService;
import com.message.service.UserServiceImpl;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register.user")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User user = new User(firstName, lastName, email, password, new Date());

		UserService service = new UserServiceImpl();
		try {
			if (service.findByEmail(email.trim()) == null) {
				service.create(user);
				request.setAttribute("created", true);
			}else {
				request.setAttribute("exists", true);
			}
			
		} catch (NoSuchAlgorithmException e) {
			request.setAttribute("created", false);
			request.setAttribute("ex", true);
			e.printStackTrace();
		} finally {
			request.getRequestDispatcher("account.jsp").forward(request, response);
		}
	}

}
