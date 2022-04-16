package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DaoValidate;
import DBConnection.DBConnection;
import beans.Acount;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		String user = request.getParameter("user");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		session.setAttribute("password", password);

		if (user == null || password == null) {
			session.setAttribute("user", "");
			session.setAttribute("password", "");
			session.setAttribute("message", "user or password is null");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else {
			Acount account = new Acount(user, password);
			if (!account.validate()) {
				session.setAttribute("message", account.getMessage());
				request.getRequestDispatcher("login.jsp").forward(request, response);
			} else {
				DaoValidate dvt = new DaoValidate();
				try {
					if (dvt.dbvalidate(user, password)) {
						request.getRequestDispatcher("admin/index.jsp").forward(request, response);
						
					} else {
						request.getRequestDispatcher("login.jsp").forward(request, response);
						session.setAttribute("message", "user or password is wrong");
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
