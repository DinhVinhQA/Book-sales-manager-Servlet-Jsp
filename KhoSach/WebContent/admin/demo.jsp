<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="Header.jsp"%>
<%@ include file="Nav.jsp"%>
<div class="container">
	<div class="row shadow">
		<div class="col-sm-12">
			<div class="px-2">
				<h4 class="title mt-4 mb-5 text-center text-uppercase text-danger">Thêm
					sách</h4>
				<form method="POST" enctype="multipart/form-data">
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label>Tiêu đề</label> <input type="text"
									class="text form-control" required="" name="post_title">
							</div>
						</div>
						<div class="col-sm-3">
							<div class="form-group">
								<label>Thể loại</label> <select name="cat"
									class="custom-select form-control" style="width: 90%;">
									<option value="null">Chọn thể loại</option>
									<option value="3">PSD</option>
									<option value="10">Css Grid</option>
									<option value="11">Css Flexbox</option>
									<option value="12">Sass</option>
									<option value="13">Wordpress</option>
								</select>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="form-group">
								<label>Tác giả</label> <input type="text"
									class="text form-control" required="" name="post_author">
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="row p-2 pt-3">
				<div class="col-sm-3">
					<label>Trạng thái</label>
					<div class="d-flex align-items-center position-relative">
						<div class="icheck-material-blue">
							<input type="radio" id="available" name="status" value="1">
							<label for="available">Bài cũ</label>
						</div>
						<div class="icheck-material-red ml-3">
							<input type="radio" id="setProduct" name="status" value="2">
							<label for="setProduct">Bài mới</label>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="form-group">
						<label>Hình Ảnh</label> <input type="file"
							class="text form-control" required="" name="post_image"
							id="my_input_file" placeholder=""> <label
							class="text-danger">(File Upload: *jpg)</label>
					</div>
				</div>
				<div class="col-sm-5">
					<div class="text-center">
						<img id="showThumb" class="img-fluid">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label>Nội dung :</label>

				<textarea id="content" class="form-control" name="noidung" rows="15"></textarea>
			</div>

			<button type="submit" class="btn btn-success mb-3" name="create">Thêm</button>
			<a class="btn btn-danger ml-3 mb-3" href="table.php">Hủy</a>

		</div>
	</div>
</div>
<h1>2</h1>
<div class="container-fluid">
	<h2 style="text-align: right;">
		<a class="text-white btn btn-success mr-3"
			href="TaoKhachHangController">Thêm khách hàng</a>
	</h2>
	<h1 class="h3 mb-2 text-gray-800">Danh sách sách</h1>
	<div class="card shadow mb-4">
		<div class="card-body">
			<div class="table-responsive table-hover">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>ID</th>
							<th>Tiêu đề</th>
							<th>Tác giả</th>
							<th>Ảnh</th>
							<th>Bình luận</th>
							<th style="text-align: center;">Thao tác</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text-center"></td>
							<td></td>
							<td></td>
							<td><img src="" alt="image"
								style="width: 65px; height: 65px;"></td>
							<td class="text-center"></td>
							<td style="text-align: center;">
								<div class="d-flex justify-content-center align-items-center">
									<a href="edit_post.php?edit_post=<?php echo $post_id; ?>"
										class="btn btn-success mr-3">Sửa</a> <a
										onclick="return confirm('Xóa sẽ không thể khôi phục lại ?');"
										href="delete_post.php?delete_post=<?php echo $post_id; ?>"
										class="btn btn-danger">Xóa</a>
								</div>
							</td>
						</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="Footer.jsp"%>