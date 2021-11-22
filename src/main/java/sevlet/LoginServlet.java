package sevlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Quanly;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/login.jsp");
		requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		EntityManagerFactory fac = Persistence.createEntityManagerFactory("BaiKtraweb");
		EntityManager em = fac.createEntityManager();
		TypedQuery<Quanly> query = em.createNamedQuery("Quanly.findAll", Quanly.class);
		List<Quanly> listQL = ((TypedQuery<Quanly>) query).getResultList();
		boolean login = false;
		for(Quanly quanly : listQL) {
			if(quanly.getEmail().equals(email)&& (quanly.getPass().equals(pass))) {
				login = true;
				break;
			}
		}
		if(login) {
			response.sendRedirect("showview");
		}else {
			response.sendRedirect("loginServlet");
		}
	}

}
