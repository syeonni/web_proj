package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BoardDataBean;
import model.StaffDataBean;

import com.sist.msk.Action;

import dao.MybatisBoardDBBean;

public class BoardAction extends Action{
	public String list(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 

		String boardid = request.getParameter("boardid");
		HttpSession session = request.getSession();
		if(boardid != null){
			session.setAttribute("boardid", boardid);
		}
		if(session.getAttribute("boardid") == null){
			boardid = "1";
		}
		else{
			boardid = (String) session.getAttribute("boardid");
		}

		int pageSize = 10;

		String pageNum = request.getParameter("pageNum");
		if(pageNum == null || pageNum == ""){
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;
		int count = 0;
		int number = 0;
		List articleList = null;
		MybatisBoardDBBean dbPro = MybatisBoardDBBean.getInstance();
		count = dbPro.getArticleCount(boardid);
		if(count > 0){
			articleList = dbPro.getArticles(startRow, endRow, boardid);
		}
		number = count - (currentPage - 1) * pageSize;

		//========================================page
		int bottomLine = 3;

		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
		int endPage = startPage + bottomLine - 1;
		if(endPage > pageCount) 
			endPage = pageCount;

		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("bottomLine", bottomLine);

		//=======================================
		request.setAttribute("count", count);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("number", number);
		request.setAttribute("articleList", articleList);

		StaffDataBean staff = (StaffDataBean) request.getSession().getAttribute("staff");
		if(staff.getDepart_id().equals("3"))
			return "/onView/board/list.jsp";
		else
			return "/doView/board/list.jsp";
	} 

	public String writeForm(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		int num = 0, ref = 1, re_step = 0, re_level = 0;
		String pageNum = "";
		if(request.getParameter("num") != null){
			num = Integer.parseInt(request.getParameter("num"));
			pageNum = request.getParameter("pageNum");
			ref = Integer.parseInt(request.getParameter("ref"));
			re_step = Integer.parseInt(request.getParameter("re_step"));
			re_level = Integer.parseInt(request.getParameter("re_level"));
		}
		request.setAttribute("num",num);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("ref", ref);
		request.setAttribute("re_step", re_step);
		request.setAttribute("re_level",re_level );

		StaffDataBean staff = (StaffDataBean) request.getSession().getAttribute("staff");
		if(staff.getDepart_id().equals("3"))
			return "/onView/board/writeForm.jsp";
		else
			return "/doView/board/writeForm.jsp";
	} 

	public String content(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");

		String boardid = "";
		HttpSession session = request.getSession();
		boardid = (String)session.getAttribute("boardid");
		if(boardid == null)
			boardid = "1";

		MybatisBoardDBBean dbPro = MybatisBoardDBBean.getInstance();
		BoardDataBean article = dbPro.getArticle(num);
		int ref = article.getRef();
		int re_step = article.getRe_step();
		int re_level = article.getRe_level();


		request.setAttribute("num", num);
		request.setAttribute("ref", ref);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("re_step", re_step);
		request.setAttribute("re_level", re_level);
		request.setAttribute("article", article);


		StaffDataBean staff = (StaffDataBean) request.getSession().getAttribute("staff");
		if(staff.getDepart_id().equals("3"))
			return "/onView/board/content.jsp";
		else
			return "/doView/board/content.jsp";
	} 

	public String deleteForm(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr");

		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");

		request.setAttribute("num", num);
		request.setAttribute("pageNum", pageNum);
		
		StaffDataBean staff = (StaffDataBean) request.getSession().getAttribute("staff");
		if(staff.getDepart_id().equals("3"))
			return "/onView/board/deleteForm.jsp";
		else
			return "/doView/board/deleteForm.jsp";
	} 
	public String deletePro(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr");

		String boardid = request.getParameter("boardid");
		HttpSession session = request.getSession();
		if(boardid != null){
			session.setAttribute("boardid", boardid);
		}
		if(session.getAttribute("boardid") == null){
			boardid = "1";
		}
		else{
			boardid = (String) session.getAttribute("boardid");
		}

		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");
		String passwd = request.getParameter("passwd");
		MybatisBoardDBBean dbPro = MybatisBoardDBBean.getInstance();
		int check = dbPro.deleteArticle(num,passwd);

		request.setAttribute("check", check);
		request.setAttribute("pageNum", pageNum);

		StaffDataBean staff = (StaffDataBean) request.getSession().getAttribute("staff");
		if(staff.getDepart_id().equals("3"))
			return "/onView/board/deletePro.jsp";
		else
			return "/doView/board/deletePro.jsp";
	} 
	public String updateForm(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		String boardid = "";
		HttpSession session = request.getSession();
		boardid = (String)session.getAttribute("boardid");
		if(boardid == null)
			boardid = "1";

		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");
		MybatisBoardDBBean dbPro = MybatisBoardDBBean.getInstance();
		BoardDataBean article = dbPro.getArticle(num);

		request.setAttribute("num", num);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("article", article);
		
		StaffDataBean staff = (StaffDataBean) request.getSession().getAttribute("staff");
		if(staff.getDepart_id().equals("3"))
			return "/onView/board/updateForm.jsp";
		else
			return "/doView/board/updateForm.jsp";
	} 
	public String updatePro(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		String boardid = "";
		HttpSession session = request.getSession();
		boardid = (String)session.getAttribute("boardid");
		if(boardid == null)
			boardid = "1";
		BoardDataBean article = new BoardDataBean();
		article.setNum(Integer.parseInt(request.getParameter("num")));
		article.setRef(Integer.parseInt(request.getParameter("ref")));
		article.setRe_step(Integer.parseInt(request.getParameter("re_step")));
		article.setRe_level(Integer.parseInt(request.getParameter("re_level")));
		article.setWriter(request.getParameter("writer"));
		article.setEmail(request.getParameter("email"));
		article.setSubject(request.getParameter("subject"));

		article.setPasswd(request.getParameter("passwd"));
		article.setContent(request.getParameter("content"));
		article.setIp(request.getRemoteAddr());

		

		String pageNum = request.getParameter("pageNum");
		MybatisBoardDBBean dbPro = MybatisBoardDBBean.getInstance();
		int check = dbPro.updateArticle(article);

		request.setAttribute("pageNum", pageNum);
		request.setAttribute("check", check);

		StaffDataBean staff = (StaffDataBean) request.getSession().getAttribute("staff");
		if(staff.getDepart_id().equals("3"))
			return "/onView/board/updatePro.jsp";
		else
			return "/doView/board/updatePro.jsp";
	} 

	public String writePro(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		HttpSession session = request.getSession();
		String ses = (String) session.getAttribute("boardid");
		if(ses == null) 
			ses = "1";
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null || pageNum == "")
			pageNum = "1";

		BoardDataBean article = new BoardDataBean();
		article.setNum(Integer.parseInt(request.getParameter("num")));
		article.setRef(Integer.parseInt(request.getParameter("ref")));
		article.setRe_step(Integer.parseInt(request.getParameter("re_step")));
		article.setRe_level(Integer.parseInt(request.getParameter("re_level")));
		article.setWriter(request.getParameter("writer"));
		article.setEmail(request.getParameter("email"));
		article.setSubject(request.getParameter("subject"));
		article.setPasswd((String)session.getAttribute("password"));
		article.setContent(request.getParameter("content"));
		article.setIp(request.getRemoteAddr());
		article.setBoardid(ses);
		article.setIp(request.getRemoteAddr());
		System.out.println("a--"+article);
		MybatisBoardDBBean dbPro = MybatisBoardDBBean.getInstance();
		dbPro.insertArticle(article);

		return "list?pageNum="+pageNum+"&id="+session.getAttribute("id");
	} 
}
