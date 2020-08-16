<%@page import="model.bean.AdminBEAN"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="Header.jsp"%>
<%@ include file="Nav.jsp"%>
<div class="container">
	<div class="row shadow">
		<div class="col-sm-12">
			<div class="px-2">
				<h4 class="title mt-4 mb-5 text-center text-uppercase text-danger">Danh Sách Admin</h4>
			</div>
			<div class="container-fluid">
	 <div class="card shadow mb-4">
		<div class="card-body">
			<div class="table-responsive table-hover">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>Tên Đăng Nhập</th>
							<th>Mật khẩu</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<% ArrayList<AdminBEAN> listAdmin = (ArrayList<AdminBEAN>)request.getAttribute("listAdmin");
					for(AdminBEAN admin: listAdmin){%>
						<tr>
							<td><%=admin.getTenDangNhap() %></td>
							<td><%=admin.getMatKhau() %></td>
							<td style="text-align: center;">
								<div class="d-flex justify-content-center align-items-center">
									<a onclick="return confirm('Xóa sẽ không thể khôi phục lại ?');" name="btnXoa" href="XoaAdminServlet?maxoa=<%=admin.getTenDangNhap()%>" class="btn btn-danger">Xóa</a>
								</div>
							</td>
						</tr>
						<%} %>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	</div>
		</div>
	</div>
</div>

	<%@ include file="Footer.jsp"%>