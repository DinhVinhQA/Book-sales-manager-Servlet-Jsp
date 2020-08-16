package model.dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.HoaDonBEAN;

public class HoaDonDAO {
	Connections con = new Connections();


	public int them(int maKhachHang, String trangThai, String ngayLap, int phuongThuc) {
		int kq = 0;
		try {
			con.KetNoi();
			String sql = "INSERT INTO HoaDon VALUES (?,?,?,?)";
			PreparedStatement cmd = con.cn.prepareStatement(sql);
			cmd.setInt(1, maKhachHang);
			cmd.setString(2, trangThai);
			cmd.setString(3, ngayLap);
			cmd.setInt(4, phuongThuc);
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

	

	public HoaDonBEAN getHoaDon(String maHoaDon) {
		HoaDonBEAN hoaDon= null;
		try {
			con.KetNoi();
			ResultSet rs = null;
			String sql = "SELECT * FROM HoaDon WHERE MaHoaDon=?";
			PreparedStatement cmd = con.cn.prepareStatement(sql);
			cmd.setString(1, maHoaDon);
			rs = cmd.executeQuery();
			if (rs.next()) {
				int maHoaDon1 = rs.getInt("MaHoaDon");
				int maKhachHang = rs.getInt("MaKhachHang");
				boolean trangThai = rs.getBoolean("TrangThai");
				Date ngayLap = rs.getDate("NgayLap");
				int phuongThucThanhToan = rs.getInt("PhuongThucThanhToan");
				hoaDon = new HoaDonBEAN(maHoaDon1, maKhachHang, trangThai, ngayLap, phuongThucThanhToan);
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

		return hoaDon;
	}

	public ArrayList<HoaDonBEAN> getHoaDon() throws Exception {

		ArrayList<HoaDonBEAN> listHoaDon = new ArrayList<>();
		try {
			con.KetNoi();
			String sql = "SELECT * FROM HoaDon";
			PreparedStatement cmd = con.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				int maHoaDon = rs.getInt("MaHoaDon");
				int maKhachHang = rs.getInt("MaKhachHang");
				boolean trangThai = rs.getBoolean("TrangThai");
				Date ngayLap = rs.getDate("NgayLap");
				int phuongThucThanhToan = rs.getInt("PhuongThucThanhToan");
				HoaDonBEAN hoaDon = new HoaDonBEAN(maHoaDon, maKhachHang, trangThai, ngayLap, phuongThucThanhToan);
				listHoaDon.add(hoaDon);
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

		return listHoaDon;
	}

	public int delete(String maXoa) {
		int kq = 0;
		try {
			con.KetNoi();
			String sql = "DELETE FROM HoaDon WHERE MaHoaDon =?";
			PreparedStatement cmd = con.cn.prepareStatement(sql);
			cmd.setString(1, maXoa);
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



	public int duyet(String maDuyet) {
		int kq=0;
		try {
			con.KetNoi();
			String sql = "UPDATE HoaDon SET TrangThai =TrangThai^1 WHERE MaHoaDon=?";
			PreparedStatement cmd = con.cn.prepareStatement(sql);
			cmd.setString(1, maDuyet);
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
