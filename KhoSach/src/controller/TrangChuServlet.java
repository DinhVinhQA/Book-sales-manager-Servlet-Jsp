package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.DanhMucBO;
import model.bo.NhomTheLoaiBO;
import model.bo.SachBO;
import model.bo.TheLoaiBO;

/**
 * Servlet implementation class TrangChuServlet
 */
@WebServlet("/TrangChuServlet")
public class TrangChuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrangChuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    NhomTheLoaiBO nhomTheLoaiBo = new NhomTheLoaiBO();
    DanhMucBO danhMucBo = new DanhMucBO();
    TheLoaiBO theLoaiBo = new TheLoaiBO();
    SachBO sachBo = new SachBO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("listDanhMuc", danhMucBo.getDanhSachDanhMuc());
        request.setAttribute("listNhomTheLoai", nhomTheLoaiBo.getDanhSachNhomTheLoai());
        request.setAttribute("listTheLoai", theLoaiBo.getDanhSachTheLoai());
        request.setAttribute("listSachSale", sachBo.getSachTheoTheLoai(28));
        request.setAttribute("listSachTieuThuyet", sachBo.getSachTheoTheLoai(16));
        request.setAttribute("listSachHatGiong", sachBo.getSachTheoTheLoai(40));
        request.setAttribute("listSachKyNang", sachBo.getSachTheoTheLoai(31));
        RequestDispatcher rd = request.getRequestDispatcher("TrangChu.jsp");
        rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
