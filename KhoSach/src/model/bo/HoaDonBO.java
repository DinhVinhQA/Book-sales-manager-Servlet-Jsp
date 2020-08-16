package model.bo;

import java.util.ArrayList;

import model.bean.HoaDonBEAN;
import model.dao.HoaDonDAO;


public class HoaDonBO {
	HoaDonDAO s= new HoaDonDAO();
	public ArrayList<HoaDonBEAN> getHoaDon() throws Exception{
		return s.getHoaDon();
	}
	public int Them(int maKhachHang,String trangThai,String ngayLap,int phuongThuc) throws Exception{
		return s.them(maKhachHang, trangThai, ngayLap, phuongThuc);
	}
	
	public int Xoa(String maXoa) throws Exception {
		return s.delete(maXoa);
	}
	public HoaDonBEAN getHoaDon(String maHoaDon) throws Exception{
		return s.getHoaDon(maHoaDon);
	}
	public int Duyet(String maDuyet) {
		return s.duyet(maDuyet);
	}
}
