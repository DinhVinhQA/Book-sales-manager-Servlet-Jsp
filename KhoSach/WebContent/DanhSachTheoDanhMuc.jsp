<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="Header.jsp"%>
<div class="container chitiet-baner">
	<a href="">Trang chủ </a>/ <a href="">Danh mục sản phẩm</a>
</div>
<div class="container">
	<h2 class="title-section">Sách giáo khoa</h2>
	<div class="row">
		<div class="col-lg-3 d-none d-lg-block pr-0"
			style="padding-left: 0; padding-right: 0px;">
			<div class="d-flex">
				<div>
					<div class="ty-product-filters__wrapper" style="background: #fff">
						<div class="ty-product-filters__block">
							<div
								class="ty-product-filters__switch cm-save-state cm-ss-reverse">
								<span>Nhà Xuất Bản</span>
							</div>
							<ul class="ty-product-filters" id="content_32_29">
								<li>
									<ul id="ranges_32_29" class="ty-product-filters-sub">
										<%
											for (int i = 0; i < 5; i++) {
										%>
										<li><label class="check">Giáo dục và đào tạo <input
												type="checkbox"> <span class="checkmark"></span>
										</label></li>
										<li><label class="check">Hòa long hải <input
												type="checkbox"> <span class="checkmark"></span>
										</label></li>

										<%
											}
										%>
									</ul>
								</li>
							</ul>
						</div>
						<div class="ty-product-filters__block">
							<div class="ty-product-filters__switch cm-save-state ">
								<span class="ty-product-filters__title">Tác giả</span>
							</div>
							<div class="ty-product-filters__search">
								<input type="text" class="form-control" placeholder="Tìm kiếm"
									class="cm-autocomplete-off ty-input-text-medium" name="q"
									id="elm_search_32_32" value="" autocomplete="off"> <i
									class="ty-product-filters__search-icon ty-icon-cancel-circle hidden"
									id="elm_search_clear_32_32" title="Xóa"></i>
							</div>
							<div class="tacGiaScroll">
								<ul class="ty-product-filters" id="content_32_29">

									<li>
										<ul id="ranges_32_29" class="ty-product-filters-sub">
											<%
												for (int i = 0; i < 20; i++) {
											%>
											<li><label class="check">Nguyễn Ngọc Nguyên <input
													type="checkbox"> <span class="checkmark"></span>
											</label></li>
											<%
												}
											%>
										</ul>

									</li>
								</ul>

							</div>
						</div>


					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-9 pl-0"
			style="padding-left: 0; padding-right: 0px;">
			<div class="product-list-dm" style="background: #fff">
				<%
					for (int i = 0; i < 20; i++) {
				%>
				<div class="product-single text-center" style="margin: 10px">
					<div class="product-img">
						<a href="#"><img style="padding-top: 20px"
							src="image/menu_Sach_trong_nuoc.png" alt=""></a>
						<div class="sale">-28%</div>
					</div>
					<a href="#" id="btn-add" class="d-lg-none btn-buy"><i
						class="fas fa-cart-plus"></i> Thêm vào giỏ</a>
					<div class="product-desc">
						<div class="product-title" style="padding: 10px;">
							<h4>Máy lọc nước Kangaroo Hydrogen KG100HC vỏ tủ VTU</h4>
						</div>
					</div>
					<div class="product-desc ">
						<div class="product-price">
							<ins> 8.290.000₫ </ins>
							<del>11.500.000₫</del>
						</div>
					</div>

				</div>
				<%
					}
				%>
				<!-- End of single-product  -->
			</div>
			<!-- End of product-list -->
		</div>
		<!-- End of col-lg-7 -->
	</div>
	<div class="pagination-right" style="margin-top: 10px;margin-bottom: 10px;margin-right: -15px;">
		<ul class="pagination justify-content-end">
			<li class="page-item"><a class="page-link"
				href="javascript:void(0);">Previous</a></li>
			<li class="page-item"><a class="page-link"
				href="javascript:void(0);">1</a></li>
			<li class="page-item"><a class="page-link"
				href="javascript:void(0);">2</a></li>
				<li class="page-item"><a class="page-link"
				href="javascript:void(0);">2</a></li>
			<li class="page-item"><a class="page-link"
				href="javascript:void(0);">Next</a></li>
		</ul>
	</div>

</div>
<%@ include file="Footer.jsp"%>