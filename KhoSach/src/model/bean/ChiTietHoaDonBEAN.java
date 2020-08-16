/*
 * @author VTA
 * @date Apr 17, 2020
 * @version 1.0
 */

package model.bean;

public class ChiTietHoaDonBEAN {
	private int maChiTiet;
	private int maHoaDon;
	private int maSach;
	private int soLuong;
	private long gia;
	private long tongTien; // tổng tiền bằng gia * soLuong tự nhân trong contructors
	public ChiTietHoaDonBEAN() {
		super();
	}
	public ChiTietHoaDonBEAN(int maChiTiet, int maHoaDon, int maSach, int soLuong, long gia) {
		super();
		this.maChiTiet = maChiTiet;
		this.maHoaDon = maHoaDon;
		this.maSach = maSach;
		this.soLuong = soLuong;
		this.gia = gia;
		this.tongTien = gia*soLuong;
	}
	public int getMaChiTiet() {
		return maChiTiet;
	}
	public void setMaChiTiet(int maChiTiet) {
		this.maChiTiet = maChiTiet;
	}
	public int getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(int maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	public int getMaSach() {
		return maSach;
	}
	public void setMaSach(int maSach) {
		this.maSach = maSach;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getTongTien() {
		return tongTien;
	}
	public void setTongTien() {
		this.tongTien = this.gia*this.soLuong;
	}
}
