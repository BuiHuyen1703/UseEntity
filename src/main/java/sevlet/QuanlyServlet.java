package sevlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.QuanlyDao;
import model.Quanly;

/**
 * Servlet implementation class QuanlyServlet
 */
@WebServlet({"/quanlyServlet" , "/quanlyServlet/create" ,"/quanlyServlet/update",
	"/quanlyServlet/edit","/quanlyServlet/delete","/quanlyServlet/reset"})
public class QuanlyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuanlyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url= request.getRequestURL().toString();
		Quanly ql = null;
		if (url.contains("delete")) {
			delete(request, response);
			ql = new Quanly();
			request.setAttribute("ql", ql);
		}
		else if (url.contains("edit")) {
			 edit(request, response);
		}
		else if (url.contains("reset")) {
			ql = new Quanly();
			request.setAttribute("ql", ql);
		}
		findAll(request, response);
		request.getRequestDispatcher("/quanly.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url= request.getRequestURL().toString();
		
		if(url.contains("create")) { insert(request, response); }
		else if (url.contains("delete")) {
			delete(request, response);
			request.setAttribute("ql", new Quanly());
		}
		else if (url.contains("update")) {
			update(request, response);
		}
		else if (url.contains("reset")) {}
		findAll(request, response);
		request.getRequestDispatcher("/quanly.jsp").forward(request, response);
	}
	
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Quanly ql = new Quanly();
			BeanUtils.populate(ql, request.getParameterMap());
			
			QuanlyDao dao = new QuanlyDao();
			dao.insert(ql);
			
			request.setAttribute("message", "User insertes!!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Integer id = Integer.parseInt(request.getParameter("id"));
			
			QuanlyDao dao = new QuanlyDao();		
			Quanly ql = dao.findById(id);
			
			request.setAttribute("user", ql);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Quanly ql = new Quanly();
			BeanUtils.populate(ql, request.getParameterMap());
			
			QuanlyDao dao = new QuanlyDao();
			dao.update(ql);
			
			request.setAttribute("ql", ql);
			request.setAttribute("message", "User updated!!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			Integer id = Integer.parseInt(request.getParameter("id"));
			QuanlyDao dao = new QuanlyDao();
			dao.delete(id);
			
			request.setAttribute("message", "User delete!!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		
	}
	
	protected void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			QuanlyDao dao = new QuanlyDao();
			List<Quanly> list = dao.findAll();
			request.setAttribute("listQL", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		
	}

}
