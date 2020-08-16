package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bo.AdminBO;

/**
 * Servlet implementation class DangNhapAdminSevlet
 */
@WebServlet("/DangNhapAdminSevlet")
public class DangNhapAdminSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangNhapAdminSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    AdminBO adminBO = new AdminBO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String tenDangNhap = request.getParameter("txtTenDangNhap");
		String matKhau = request.getParameter("txtMatKhau");
		if(adminBO.checkLogin(tenDangNhap, matKhau)){
			HttpSession session = request.getSession();
			session.setAttribute("txtTenDangNhap", tenDangNhap);
			response.sendRedirect("DanhSachAdminSevlet");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("admin/DangNhapAdmin.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
