package sevlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.PhuongtienDao;
import model.Phuongtien;

/**
 * Servlet implementation class PhuongtienServlet
 */
@WebServlet({"/phuongtienServlet" ,"/phuongtienServlet/create","/phuongtienServlet/update","/phuongtienServlet/delete","/phuongtienServlet/edit","/phuongtienServlet/search" })
public class PhuongtienServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PhuongtienServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url= request.getRequestURL().toString();
		Phuongtien ptien = null;
		if (url.contains("delete")) {
			delete(request, response);
			ptien = new Phuongtien();
			request.setAttribute("ql", ptien);
		}
		else if (url.contains("edit")) {
			 edit(request, response);
		}
		else if (url.contains("reset")) { 
			ptien = new Phuongtien();
			request.setAttribute("pt", ptien);
		}
		String name=request.getParameter("name");
		
		if(name == null) {
		 findAll(request, response);
		}else {
		findByName(request, response);
		}
		
		request.getRequestDispatcher("/phuongtien.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url= request.getRequestURL().toString();
		
		if(url.contains("create")) { insert(request, response);
		
		}
		else if (url.contains("delete")) {
			delete(request, response);
			request.setAttribute("ql", new Phuongtien());
		}
		else if (url.contains("update")) {
			update(request, response);
		}
		else if (url.contains("reset")) {}
		findAll(request, response);
		request.getRequestDispatcher("/phuongtien.jsp").forward(request, response);
	}
	
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Phuongtien ptien = new Phuongtien();
			BeanUtils.populate(ptien, request.getParameterMap());
			
			PhuongtienDao dao = new PhuongtienDao();
			dao.insert(ptien);
			
			request.setAttribute("message", "Vehicle insertes!!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Integer id = Integer.parseInt(request.getParameter("id"));
			
			PhuongtienDao dao = new PhuongtienDao();		
			Phuongtien ql = dao.findById(id);
			
			request.setAttribute("user", ql);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Phuongtien ql = new Phuongtien();
			BeanUtils.populate(ql, request.getParameterMap());
			
			PhuongtienDao dao = new PhuongtienDao();
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
			PhuongtienDao dao = new PhuongtienDao();
			dao.delete(id);
			
			request.setAttribute("message", "User delete!!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		
	}
	
	protected void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			PhuongtienDao dao = new PhuongtienDao();
			List<Phuongtien> list = dao.findAll();
			request.setAttribute("ql", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		
	}
	
	protected void findByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String name=request.getParameter("name");
			PhuongtienDao dao = new PhuongtienDao();
			List<Phuongtien> list = dao.findByFullname(name);
			request.setAttribute("ql", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		
	}

}
