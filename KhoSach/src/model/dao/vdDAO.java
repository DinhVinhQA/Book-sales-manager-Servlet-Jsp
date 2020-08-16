/*
 * @author VTA
 * @date Apr 16, 2020
 * @version 1.0
 */

package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.AdminBEAN;


public class vdDAO {
	Connections con = new Connections();

	public boolean kTra(String maMay) {
		String sql = "SELECT MaMay FROM MAY WHERE MaMay=?";
		PreparedStatement cmd;
		ResultSet rs = null;
		boolean kq = true;
		try {
			cmd = con.cn.prepareStatement(sql);
			cmd.setString(1, maMay);
			rs = cmd.executeQuery();
			kq = rs.next();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		return kq;
	}

	public int them(String maMay, int viTri) {
		int kq = 0;
		try {
			con.KetNoi();
			if (kTra(maMay))
				return 0;
			String sql = "INSERT INTO MAY VALUES (?,?,?)";
			PreparedStatement cmd = con.cn.prepareStatement(sql);
			cmd.setString(1, maMay);
			cmd.setInt(2, viTri);
			cmd.setInt(3, 1);// trang thái 1 rảnh , 2 bận, 3 đang dùng, 4 sửa chữa
			kq = cmd.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (con.cn != null)
					con.cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return kq;
	}

	public int capNhap(String maMay, int viTri, int trangThai) {
		int kq = 0;
		try {
			con.KetNoi();
			String sql = "UPDATE MAY SET ViTri = ?, TrangThai =? WHERE MaMay=?";
			PreparedStatement cmd = con.cn.prepareStatement(sql);
			cmd.setInt(1, viTri);
			cmd.setInt(2, trangThai);// trang thái 1 rảnh , 2 bận, 3 đang dùng, 4 sửa chữa
			cmd.setString(3, maMay);
			kq = cmd.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (con.cn != null)
					con.cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return kq;
	}

	public AdminBEAN getAdmin(String maMay) {
		AdminBEAN admin= null;
		try {
			con.KetNoi();
			ResultSet rs = null;
			String sql = "SELECT MaMay, ViTri, TrangThai FROM MAY WHERE MaMay=?";
			PreparedStatement cmd = con.cn.prepareStatement(sql);
			cmd.setString(1, maMay);
			rs = cmd.executeQuery();
			if (rs.next()) {
				String maKhau = rs.getString("MaMay");
				String tenDangNhap= rs.getString("MaMay");
				admin = new AdminBEAN(tenDangNhap, maKhau);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (con.cn != null)
					con.cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return admin;
	}

	public ArrayList<AdminBEAN> getDanhSachAdmin() {

		ArrayList<AdminBEAN> listAdmin = new ArrayList<>();
		try {
			con.KetNoi();
			String sql = "SELECT MaMay, ViTri, TrangThai FROM MAY";
			PreparedStatement cmd = con.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				String maKhau = rs.getString("MaMay");
				String tenDangNhap= rs.getString("MaMay");
				AdminBEAN admin = new AdminBEAN(tenDangNhap, maKhau);
				listAdmin.add(admin);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (con.cn != null)
					con.cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return listAdmin;
	}

	public int delete(String maMay) {
		int kq = 0;
		try {
			con.KetNoi();
			String sql = "DELETE FROM MAY WHERE MaMay =?";
			PreparedStatement cmd = con.cn.prepareStatement(sql);
			cmd.setString(1, maMay);
			kq = cmd.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (con.cn != null)
					con.cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return kq;
	}
}
