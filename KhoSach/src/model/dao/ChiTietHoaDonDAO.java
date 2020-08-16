/*
 * @author VTA
 * @date Apr 22, 2020
 * @version 1.0
 */

package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.ChiTietHoaDonBEAN;

public class ChiTietHoaDonDAO {
	Connections con = new Connections();
	public ArrayList<ChiTietHoaDonBEAN > getHoaDon()  {

		ArrayList<ChiTietHoaDonBEAN > listChiTiet = new ArrayList<>();
		try {
			con.KetNoi();
			String sql = "SELECT MaChiTiet,MaHoaDon FROM ChiTietHoaDon";
			PreparedStatement cmd = con.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				int maChiTiet = rs.getInt("MaChiTiet");
				int maHoaDon = rs.getInt("MaHoaDon");
			/*	boolean trangThai = rs.getBoolean("TrangThai");
				Date ngayLap = rs.getDate("NgayLap");
				int phuongThucThanhToan = rs.getInt("PhuongThucThanhToan");*/
				ChiTietHoaDonBEAN chiTiet = new ChiTietHoaDonBEAN(maChiTiet, maHoaDon,23, 0, 20000);
				listChiTiet.add(chiTiet);
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

		return listChiTiet;
	}

}
