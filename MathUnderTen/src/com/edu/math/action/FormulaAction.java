package com.edu.math.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalTime;
import com.edu.math.entity.*;
import com.edu.math.utility.*;

/**
 * Servlet implementation class FormulaAction
 */
@WebServlet("/FormulaAction")
public class FormulaAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int times = 0;
	private String name="";
	private String pic="";
	private HttpServletRequest req=null;
	private HttpServletResponse resp=null;
	private String mode = "";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FormulaAction() {
		super();

		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		this.req=request;
		this.resp=response;
		
		mode = request.getParameter("select-mode");
		if (mode == null) {
			mode = "next";
		}

		name = request.getParameter("input-name");
		if (name == null || name == "") {
			name = "Ð¡ÅóÓÑ";
		}
		
		pic =request.getParameter("like-pic");
		if(pic==null||pic==""){
			pic="imgs/croc-small.png";
		}
		
		switch (mode) {
		case "add":
			addAction();
			break;
		case "sub":
			subAction();
			break;
		case "aas":
			aasAction();
			break;
		case "next":
			nextAction();
			break;
		}
		request.getRequestDispatcher("pluspractice.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

	private void addFormula() {
		FormulaElement fe = new GenerateFormula().addFormula();
		if (fe != null) {
			req.setAttribute("formula", fe);
		}
		return;
	}
	
	private void subFormula() {
		FormulaElement fe = new GenerateFormula().subFormula();
		if (fe != null) {
			req.setAttribute("formula", fe);
		}
		return;
	}
	
	private void assFormula(){
		int s = LocalTime.now().getSecond();
		if(s%2==0){
			this.addFormula();
		}
		else{
			this.subFormula();
		}
		return;
	}
	
	private void addAction(){
		times = 10;
		this.addFormula();
		initAttrib();
	}
	
	private void subAction(){
		times=10;
		this.subFormula();
		initAttrib();
	}
	
	private void aasAction(){
		times=10;
		this.assFormula();
		initAttrib();
	}
	
	
	
	private void nextAction(){
		times = (Integer) req.getSession().getAttribute("times");
		mode=(String)req.getSession().getAttribute("mode");
		
		if (times > 0) {
			if("add".equals(mode)){
				addFormula();
			}
			if("sub".equals(mode)){
				subFormula();
			}
			if("aas".equals(mode)){
				assFormula();
			}
			times--;
			req.getSession().setAttribute("times", times);
		}
	}
	
	private void initAttrib(){
		req.getSession().setAttribute("times", times);
		req.getSession().setAttribute("name", name);
		req.getSession().setAttribute("picture",pic);
		req.getSession().setAttribute("mode", mode);
	}
}