package com.hb.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.command.Command;
import com.hb.command.ListCommand;
import com.hb.command.WriteCommand;

@WebServlet("/MyController")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		Command comm = null;
		String type = request.getParameter("type");
		if(type==null){
			comm = new WriteCommand();
		}else if(type.equals("all")){
			comm = new ListCommand();
		}else if (type.equals("write")){
			comm = new WriteCommand();
		}
		try {
			System.out.println("1");
			String path = comm.exe(request, response);
			System.out.println(path);
			request.getRequestDispatcher(path).forward(request, response);
		} catch (Exception e) {
			System.out.println("MyController.error");
		}
		
	}
}











