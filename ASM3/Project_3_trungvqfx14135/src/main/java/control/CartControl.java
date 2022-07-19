package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;
import entity.Cart;
import entity.Product;

/**
 * Servlet implementation class CartControl
 */
@WebServlet("/cart")
public class CartControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartControl() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		String idd = request.getParameter("pid");
		String action = request.getParameter("action");
		if (action != null && action.equals("add")) {
			if (session.getAttribute("cart") == null) {
				session.setAttribute("cart", new Cart());
			}
			int id = Integer.parseInt(idd);
			DAO dao = new DAO();
			Product p = dao.getProductByID(idd);
			Cart cart = (Cart) session.getAttribute("cart");
			cart.add(p);
			session.setAttribute("listC", cart.getItems());
			session.setAttribute("total", cart.getTotalNumber());
			session.setAttribute("amount", cart.getAmount());
		} 
		else if (action != null && action.equals("delete")) {
			int id = Integer.parseInt(idd);
			Cart cart = (Cart) session.getAttribute("cart");
			cart.remove(id);
			session.setAttribute("listC", cart.getItems());
			session.setAttribute("total", cart.getTotalNumber());
			session.setAttribute("amount", cart.getAmount());
		}
		
		
		response.sendRedirect("Cart.jsp");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return "Short description";
	}
	

}