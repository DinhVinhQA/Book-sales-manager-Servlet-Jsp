<%@page import="model.bean.ChiTietHoaDonBEAN"%>
<%@page import="model.bean.HoaDonBEAN"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="Header.jsp"%>
<%@ include file="Nav.jsp"%>
<div class="container">
	<div class="row shadow">
		<div class="col-sm-12">
			<div class="px-2">
				<h4 class="title mt-4 mb-5 text-center text-uppercase text-danger">Danh Sách Hóa Đơn</h4>
				<div class="container-fluid">
<%int maHoaDon =0; %>
	 <div class="card shadow mb-4">
		<div class="card-body">
			<div class="table-responsive table-hover">
				<table class="table table-bordered" id="dataTable" width="100%"	cellspacing="0">
					<thead>
						<tr>
							<th>Mã hóa đơn</th>
							<th>Mã khách hàng</th>
							<th>Trạng thái</th>
							<th>Ngày lập</th>
							<th>Phương thức thanh toán</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<%String phuongThuc,trangThai;
					ArrayList<HoaDonBEAN> listHoaDon = (ArrayList<HoaDonBEAN>)request.getAttribute("listHoaDon");
					for(HoaDonBEAN hoaDon: listHoaDon){
						maHoaDon =hoaDon.getMaHoaDon();
						if(hoaDon.isTrangThai()==true)	trangThai="Chưa duyệt";
						else trangThai="Đã duyệt";
						if(hoaDon.getPhuongThucThanhToan()==1) phuongThuc="Thanh toán khi nhận hàng";
						else phuongThuc="Thanh toán qua thẻ";
						%>
						<tr>
							<td><%=hoaDon.getMaHoaDon() %></td>
							<td><%=hoaDon.getMaKhachHang() %></td>
							<td><%=trangThai%></td>
							<td><%=hoaDon.getNgayLap() %></td>
							<td><%=phuongThuc %></td>
							<td style="text-align: center;">
								<div class="d-flex justify-content-center align-items-center">
									<a name="btnChiTiet" name="btnChiTiet" class="btn btn-warning" data-toggle="modal" data-target="#myModal<%=maHoaDon%>">Chi Tiết</a>
									<a onclick="return confirm('Xóa sẽ không thể khôi phục lại ?');" name="btnXoa" href="DanhSachHoaDonSevlet?maXoa=<%=hoaDon.getMaHoaDon()%>" class="btn btn-danger">Xóa</a>
									<a name="btnDuyet" href="DanhSachHoaDonSevlet?maDuyet=<%=hoaDon.getMaHoaDon()%>" class="btn btn-success">Duyệt</a>
								</div>
							</td>
						</tr>
						<%} %>
					</tbody>
				</table>
			</div>
		</div>
	</div>
		<div class="modal fade" id="myModal<%=maHoaDon %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				    <div class="modal-dialog">
				        <div class="modal-content">
				            <div class="modal-header">
				            	<h4 class="modal-title" id="myModalLabel">Chi tiết hóa đơn</h4>
				                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
				                </button>                 
				            </div>
				            <div class="modal-body">
				                <table class="table table-bordered">
				                    <thead>
				                        <tr>
				                            <th>Mã chi tiết</th>
				                            <th>Mã hóa đơn</th>
				                            <th>Mã sách</th>
				                            <th>Số lượng</th>
				                            <th>Giá</th>
				                        </tr>
				                    </thead>
				                    <tbody>
				                    <%
				                   
				                    ArrayList<ChiTietHoaDonBEAN> listChiTiet = (ArrayList<ChiTietHoaDonBEAN>)request.getAttribute("listChiTiet");
				                    for(ChiTietHoaDonBEAN chiTiet : listChiTiet){
				                    	if(chiTiet.getMaHoaDon()==maHoaDon){
				                    	%>
				                       
				                        	<td><%=chiTiet.getMaChiTiet() %></td>
				                        	<td><%=chiTiet.getMaHoaDon() %></td>
				                        	<td><%=chiTiet.getMaSach() %></td>
				                        	<td><%=chiTiet.getSoLuong() %></td>
				                        	
				                       
				                       <%} }%>
				                    </tbody>
				                </table>
				            </div>
				            <div class="modal-footer">
				                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				            </div>
				        </div>
				    </div>
				</div>
	</div>
			</div>
		</div>
	</div>
</div>

	<%@ include file="Footer.jsp"%>