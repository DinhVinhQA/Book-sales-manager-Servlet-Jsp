package model.bo;

import java.util.ArrayList;

import model.bean.GioHangBEAN;
import model.dao.GioHangDAO;

public class GioHangBO {
    GioHangDAO ghDao = new GioHangDAO();
    public ArrayList<GioHangBEAN> ds;

    public ArrayList<GioHangBEAN> getGioHangs(int maKhachHang) {
        ds = ghDao.getGioHangs(maKhachHang);
        return ds;
    }

    public ArrayList<GioHangBEAN> themGioHang(int maSach, String tenSach,
            String anh, int soLuong, Long gia) {
        for (GioHangBEAN g : ds)
            if (g.getMaSach() == maSach) {
                g.setSoLuong(g.getSoLuong() + 1);
                return ds;
            }
        GioHangBEAN s = new GioHangBEAN(maSach, tenSach, anh, soLuong, gia);
        ds.add(s);
        return ds;
    }

    public int themGioHangDB(int maKhachHang, int maSach, int soLuong, long gia) {
        for (GioHangBEAN g : ds)
            if (g.getMaSach() == maSach) {
                return capNhapGioHang(maKhachHang, maSach, soLuong);
            }
        return ghDao.themGioHangDB(maKhachHang, maSach, soLuong, gia);

    }
    public void themallDB(ArrayList<GioHangBEAN> gh, int maKhachHang){
        for (GioHangBEAN g : gh){
             themGioHangDB(maKhachHang,g.getMaSach(),g.getSoLuong(),g.getGia());
        }
    }
    public void capNhatSoLuong(int maSach, int soLuong) {
        for (GioHangBEAN g : ds)
            if (g.getMaSach() == maSach) {
                if (g.getSoLuong() + soLuong >= 1) {
                    g.setSoLuong(g.getSoLuong() + soLuong);
                    return;
                }
            }
    }

    public int capNhapGioHang(int maKhachHang, int maSach, int soLuong) {
        for (GioHangBEAN g : ds)
            if (g.getMaSach() == maSach) {
                if (g.getSoLuong() + soLuong >= 1) {
                    return ghDao.capNhapGioHang(maKhachHang, maSach, soLuong);
                }
            }
        return 0;
    }

    public void Xoa(int maSach) {
        int i = 0;
        for (GioHangBEAN g : ds) {
            if (g.getMaSach() == maSach) {
                ds.remove(i);
                return;
            }
            i++;
        }
    }

    public int XoaHangGioDB(int maKhachHang, int maSach) {
        return ghDao.XoaHangGioDB(maKhachHang, maSach);
    }

    public void XoaTatCa() {
        ArrayList<GioHangBEAN> gh = new ArrayList<>();
        ds = gh;
    }

    public int XoaTatCaDB(int maKhachHang) {
        return ghDao.XoaTatCaDB(maKhachHang);
    }

}
