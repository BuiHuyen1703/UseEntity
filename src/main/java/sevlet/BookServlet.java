package sevlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BookDao;
import DAO.QuanlyDao;
import model.Book;
import model.Quanly;

/**
 * Servlet implementation class BookServlet
 */
@WebServlet({"/bookServlet" , "/bookServlet/delete"})
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url= request.getRequestURL().toString();
		Book ql = null;
		if (url.contains("delete")) {
			delete(request, response);
			ql = new Book();
			request.setAttribute("ql", ql);
		}
		
		findAll(request, response);
		request.getRequestDispatcher("/book.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String url= request.getRequestURL().toString();
		
		 if (url.contains("delete")) {
			delete(request, response);
			request.setAttribute("ql", new Book());
		}
		 findAll(request, response);
			request.getRequestDispatcher("/book.jsp").forward(request, response);
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			Integer id = Integer.parseInt(request.getParameter("id"));
			BookDao dao = new BookDao();
			dao.delete(id);
			
			request.setAttribute("message", "Book delete!!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		
	}
	
	protected void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			BookDao dao = new BookDao();
			List<Book> list = dao.findAll();
			request.setAttribute("book", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		
	}
}
