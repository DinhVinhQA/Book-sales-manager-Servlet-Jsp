<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Kho sách</title>
<link rel="shortcut icon" type="image/png" href="image/favicon.ico">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/meanmenu.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/css.css">
<link rel="stylesheet" href="css/csstam.css">
<link rel="stylesheet" href="css/styleheader1.css">
</head>

<body data-spy="scroll" data-target="#myScroll" data-offset="50">

	<!-- header -->
	<header class="header__container">
		<div class="header__wrapper  js-container">
			<div class="container">
				<div class="header__left-right">
					<div class="header__wrapper-left">
						<div class="header__logo">
							<a href=""> <img src="image/logo.png" alt="">
							</a>
						</div>
						<div class="header__form">
							<form action="" method="POST">
								<input type="text" class="header__form-input"
									placeholder="Nhập sản phẩm cần tìm">
								<button type="submit" class="header__form-submit">Tìm
									kiếm</button>
							</form>
						</div>
					</div>
					<div class="header__wrapper-right">
						<a href="" class="header__wrapper-link"> <i
							class="far fa-user"></i> Tài khoản
						</a> <a href="" class="header__wrapper-link"> <i
							class="far fa-bell"></i> Thông báo
						</a> <a href="javascript:void(0)"
							class="header__wrapper-link shopping__cart-icon"> <i
							class="fas fa-shopping-cart"></i> <span class="number__cart">2</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div style="height: 70px; background: #fff;"></div>
	<section>
		<div class="container">
		<%DecimalFormat formatter = new DecimalFormat("###,###,###.00"); %>
			<div class="header__middle">
				<div class="row">
					<div class="col-lg-3 p-0">
						<div class="header__category">
							<a href="" class="header__category-name" data-toggle="collapse"
								data-target="#demo" aria-expanded="false"> <i
								class="fas fa-align-right header__category-icon"></i> Danh mục
								sản phẩm
							</a>
							<ul class="header__category-list collapse show" id="demo">
								<li class="header__category-item"><a href=""
									class="header__category-link"> <i class="fas fa-book"></i>
										Sách trong nước
								</a>
									<div class="sub__menu">
										<div class="sub__menu-left">
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị</a>
													</li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị</a>
													</li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
										</div>
										<div class="sub__menu-right">
											<img src="image/menu_Sach_trong_nuoc.png" alt="">
										</div>
									</div></li>
								<li class="header__category-item"><a href=""
									class="header__category-link"> <i class="fas fa-book"></i>
										Sách trong nước
								</a></li>
								<li class="header__category-item"><a href=""
									class="header__category-link"> <i class="fas fa-book"></i>
										Sách trong nước
								</a></li>
								<li class="header__category-item"><a href=""
									class="header__category-link"> <i class="fas fa-book"></i>
										Sách trong nước
								</a>
									<div class="sub__menu">
										<div class="sub__menu-left">
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị</a>
													</li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị</a>
													</li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
										</div>
										<div class="sub__menu-right">
											<img src="image/menu_Sach_trong_nuoc.png" alt="">
										</div>
									</div></li>
								<li class="header__category-item"><a href=""
									class="header__category-link"> <i class="fas fa-book"></i>
										Sách trong nước
								</a>
									<div class="sub__menu">
										<div class="sub__menu-left">
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị</a>
													</li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị</a>
													</li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
										</div>
										<div class="sub__menu-right">
											<img src="image/menu_Sach_trong_nuoc.png" alt="">
										</div>
									</div></li>
								<li class="header__category-item"><a href=""
									class="header__category-link"> <i class="fas fa-book"></i>
										Sách trong nước
								</a>
									<div class="sub__menu">
										<div class="sub__menu-left">
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị</a>
													</li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị</a>
													</li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
											<div class="sub__menu-inner">
												<h3 class="sub__menu-title">Sách văn học</h3>
												<ul class="sub__menu-list">
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Huyền Bí - Giả Tưởng - Kinh Dị
															aaaaa</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<li class="sub__menu-item"><a href=""
														class="sub__menu-link">Tiểu thuyết huyền bí</a></li>
													<a href="" class="sub__menu-link sub__menu-link--more">xem
														thêm...</a>
												</ul>
											</div>
										</div>
										<div class="sub__menu-right">
											<img src="image/menu_Sach_trong_nuoc.png" alt="">
										</div>
									</div></li>
								<li class="header__category-item"><a href=""
									class="header__category-link"> <i class="fas fa-book"></i>
										Sách trong nước
								</a></li>
								<li class="header__category-item"><a href=""
									class="header__category-link"> <i class="fas fa-book"></i>
										Sách trong nước
								</a></li>
								<li class="header__category-item"><a href=""
									class="header__category-link"> <i class="fas fa-book"></i>
										Sách trong nước
								</a></li>
								<li class="header__category-item"><a href=""
									class="header__category-link"> <i class="fas fa-book"></i>
										Sách trong nước
								</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-9 p-0">
						<div class="header__menu">
							<nav>
								<ul class="header__menu-list">
									<li class="header__menu-item"><a href=""
										class="header__menu-link">Trang chủ</a>
										<ul class="header__menu-list-sub">
											<li><a href="" class="header__menu-link-sub">Giới
													thiệu</a></li>
											<li><a href="" class="header__menu-link-sub">Giới
													thiệu</a></li>
										</ul></li>
									<li class="header__menu-item"><a href=""
										class="header__menu-link">Giới thiệu</a></li>
									<li class="header__menu-item"><a href=""
										class="header__menu-link">Khuyến mãi</a></li>
									<li class="header__menu-item"><a href=""
										class="header__menu-link">Liên hệ</a></li>
								</ul>
							</nav>
							<div class="">
								<div class="">
									<div class="slider-inner">
										<div id="carouselExampleIndicators" class="carousel slide"
											data-ride="carousel">
											<div class="carousel-inner">

												<div class="carousel-item active animated heartBeat ">
													<img src="image/888x455px_3.png" class="d-block w-100"
														alt="">
												</div>
												<%for(int i=4;i<=8;i++){ %>
												<div class="carousel-item animated lightSpeedIn">
													<img src="image/888x455px_<%=i %>.png"
														class="d-block w-100 " alt="">
												</div>
												<% }%>


											</div>
											<a class="carousel-control-prev"
												href="#carouselExampleIndicators" role="button"
												data-slide="prev"> <span class="prev-left"> <i
													class="fas fa-chevron-left"></i>
											</span>
											</a> <a class="carousel-control-next"
												href="#carouselExampleIndicators" role="button"
												data-slide="next"> <span class="prev-left"> <i
													class="fas fa-chevron-right"></i>
											</span>
											</a>
										</div>
									</div>
									<!-- End of slider-inner -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End of header -->