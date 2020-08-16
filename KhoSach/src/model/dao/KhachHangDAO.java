package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import model.bean.KhachHangBEAN;

public class KhachHangDAO {
    Connections con = new Connections();

    public ArrayList<KhachHangBEAN> getKhachHangs() {
        ArrayList<KhachHangBEAN> ds = new ArrayList<KhachHangBEAN>();
        ResultSet rs = null;
        try {
            con.KetNoi();
            String sql = "select * from KhachHang";
            PreparedStatement cmd = con.cn.prepareStatement(sql);
            rs = cmd.executeQuery();
            while (rs.next()) {
                int maKhachHang = rs.getInt("MaKhachHang");
                String tenKhachHang = rs.getString("TenKhachHang");
                String email = rs.getString("Email");
                String soDienThoai = rs.getString("SoDienThoai");
                String diaChi = rs.getString("DiaChi");
                Date ngaySinh = rs.getDate("NgaySinh");
                Boolean gioiTinh = rs.getBoolean("GioiTinh");
                String matKhau = rs.getString("MatKhau");
                String tenDangNhap = rs.getString("TenDangNhap");
                KhachHangBEAN s = new KhachHangBEAN(maKhachHang, tenKhachHang,
                        email, soDienThoai, diaChi, ngaySinh, gioiTinh,
                        matKhau, tenDangNhap);
                ds.add(s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (con.cn != null)
                    con.cn.close();

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return ds;

    }
}
