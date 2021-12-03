package sevlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DAO.DoctorDao;
import model.Doctor;

/**
 * Servlet implementation class DoctorServlet
 */
@WebServlet("/doctorServlet")
public class DoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		this.find(request, response);
//		request.getRequestDispatcher("search.jsp").forward(request, response);
//		
String a=request.getParameter("a");
String b= request.getParameter("b");
		
		if(a == null && b==null) {
			findAll(request, response);
		}else {
			find(request, response);
		}
		
		request.getRequestDispatcher("/search.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
//	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		request.setCharacterEncoding("UTF-8");
//		response.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html; charset=UTF-8");
//
//		String uri = request.getServletPath();
//		
//		switch (uri) {
//		case "/index":
//			this.findAll(request, response);
//			request.getRequestDispatcher("/search.jsp").forward(request, response);
////		this.view("admin.jsp", request, response)
//			break;
//		case "/search":
//			this.find(request, response);
//			request.getRequestDispatcher("/search.jsp").forward(request, response);
//			break;
//		default:
//			break;
//		}
//	}
//	
	
	protected void findAll(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		try {
			DoctorDao dao = new DoctorDao();
			
			List<Doctor> list =dao.findAll();
			
			request.setAttribute("doctor", list);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error","Error: "+e.getMessage());
		}
	}
	
	
	protected void find(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		try {
			DoctorDao dao = new DoctorDao();
			int a= Integer.parseInt(request.getParameter("a"));
			int b= Integer.parseInt(request.getParameter("b"));
			List<Doctor> list =dao.find(a,b);
			
			request.setAttribute("doctor", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error","Error: "+e.getMessage());
		}
		
		
	}
}
