package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;
import entity.Account;

/**
 * Servlet implementation class LoginControl
 */
@WebServlet("/login")
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControl() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		DAO dao = new DAO();
		Account a = dao.login(username, password);
		if (a == null) {
			request.setAttribute("errorMess", "Wrong user or pass");
			request.getRequestDispatcher("Login.jsp").forward(request, response); // chuyển trang mang theo dữ liệu, ở đây là câu thông báo "Wrong..."
		} else {
//			request.getRequestDispatcher("home").forward(request, response);
			HttpSession session = request.getSession();
			session.setAttribute("acc", a);
			session.setMaxInactiveInterval(1000);
			response.sendRedirect("home"); // chuyển trang ko cần đẩy dữ liệu sang trang khác
		}
		
	}
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	
	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return "Short description";
	}

}
