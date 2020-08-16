package model.bo;

import java.util.ArrayList;

import model.bean.KhachHangBEAN;
import model.dao.KhachHangDAO;

public class KhachHangBO {
    KhachHangDAO khDAO = new KhachHangDAO();
    public ArrayList<KhachHangBEAN> ds;

    public ArrayList<KhachHangBEAN> getKhachHangs() {
        ds = khDAO.getKhachHangs();
        return ds;
    }

    public boolean kiemTraDangNhap(String userName, String password) {
        for (KhachHangBEAN kh : ds) {
            if (kh.getTenDangNhap().equals(userName)
                    && kh.getMatKhau().equals(password))
                return true;
        }
        return false;
    }

    public int getMaKhachHang(String userName) {
        for (KhachHangBEAN kh : ds) {
            if (kh.getTenDangNhap().equals(userName)) {
                return kh.getMaKhachHang();
            }
        }
        return 0;
    }

    public KhachHangBEAN getKhachHang(int maKhachHang) {
        KhachHangBEAN kk = new KhachHangBEAN();
        for (KhachHangBEAN kh : ds) {
            if (kh.getMaKhachHang() == maKhachHang) {
                return kh;
            }
        }
        return kk;
    }
}
