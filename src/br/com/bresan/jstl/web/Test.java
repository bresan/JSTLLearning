package br.com.bresan.jstl.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/test")
public class Test extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// create a new list
		List<User> userList = new ArrayList<User>();
		
		// put some data into it
		for (int i = 0; i < 10; i++) {
			User user = new User();
			user.setId(i);
			user.setEmail("email@mail.org");
			user.setName("Rodrigo");
			user.setAge(19);
			user.setValid(true);
			userList.add(user);
		}
		
		// set a attribute to our request with our list
		req.setAttribute("userList", userList);
		
		// and send to the page
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/paginas/test.jsp");
		dispatcher.forward(req, resp);
	}
}
