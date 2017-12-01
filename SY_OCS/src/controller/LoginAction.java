package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.StaffDataBean;

import com.sist.msk.Action;

import dao.MybatisLoginDBBean;


public class LoginAction extends Action{
	public String loginForm(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		return "/LoginView/loginFrom.jsp";
	}

	public String loginPro(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		HttpSession session = request.getSession();

		MybatisLoginDBBean dbPro = MybatisLoginDBBean.getInstance();
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		int check = dbPro.loginCheck(id, passwd);

		if(check == 1){
			session.setAttribute("user_id", id);
			session.setAttribute("password", passwd);
			StaffDataBean staff = dbPro.getStaffDataBean(id);
			session.setAttribute("staff", staff);
			

		}

		request.setAttribute("check", check);

		return "/LoginView/loginPro.jsp";
	}
}
