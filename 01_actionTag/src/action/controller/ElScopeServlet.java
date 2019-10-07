package action.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.model.vo.Person;

/**
 * Servlet implementation class ElScopeServlet
 */
@WebServlet("/elscope")
public class ElScopeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ElScopeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		 request.setAttribute("name", "유병승");
	      request.setAttribute("age", 19);
	      request.getSession().setAttribute("userId", "user02");
	      //request하고 중복되는 key를 갖는 값을 설정
	      request.getSession().setAttribute("name", "기영성");
	      //scope를 따로 지정하지 않으면 
	      
	      getServletContext().setAttribute("admin", "이태영");
	      
	      Person person = new Person("국푸름", 25, "남");
	      request.setAttribute("person", person);
	      
	      //리스트넣었을때
	      List<Person> list = new ArrayList();
	      list.add(new Person("유병승",19,"남"));
	      list.add(new Person("한정원",25,"여"));
	      list.add(new Person("기영성",24,"남"));
	      list.add(new Person("강병민",29,"남"));
	      request.setAttribute("list", list);
	      
	      request.getRequestDispatcher("/views/el/scopeResult.jsp").forward(request, response);
	      
	      //JSTL 태그 종류
	      //Formatting Tag:돈 (화폐),날짜 형식으로 알아서 바꿔주는 태그
	      //Core Tags: set을 el로 받아올 수 있께 해줌
	      //라이브러리:https://tomcat.apache.org/download-80.cgi
	      
	}s

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
