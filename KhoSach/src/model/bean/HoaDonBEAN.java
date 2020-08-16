/*
 * @author VTA
 * @date Apr 17, 2020
 * @version 1.0
 */

package model.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

public class HoaDonBEAN {
	private int maHoaDon;
	private int maKhachHang;
	private boolean trangThai;
	private Date ngayLap;
	private int phuongThucThanhToan;

	public HoaDonBEAN() {
		super();
	}

	public HoaDonBEAN(int maHoaDon, int maKhachHang, boolean trangThai, Date ngayLap, int phuongThucThanhToan) {
		super();
		this.maHoaDon = maHoaDon;
		this.maKhachHang = maKhachHang;
		this.trangThai = trangThai;
		this.ngayLap = ngayLap;
		this.phuongThucThanhToan = phuongThucThanhToan;
	}

	public int getMaHoaDon() {
		return maHoaDon;
	}

	public void setMaHoaDon(int maHoaDon) {
		this.maHoaDon = maHoaDon;
	}

	public int getMaKhachHang() {
		return maKhachHang;
	}

	public void setMaKhachHang(int maKhachHang) {
		this.maKhachHang = maKhachHang;
	}

	public boolean isTrangThai() {
		return trangThai;
	}

	public void setTrangThai(boolean trangThai) {
		this.trangThai = trangThai;
	}

	public String getNgayLapString() {
		SimpleDateFormat day = new SimpleDateFormat("dd/MM/yyyy");
		return day.format(ngayLap);
	}

	public Date getNgayLap() {
		return ngayLap;
	}

	public void setNgayLap(Date ngayLap) {
		this.ngayLap = ngayLap;
	}

	public int getPhuongThucThanhToan() {
		return phuongThucThanhToan;
	}

	public void setPhuongThucThanhToan(int phuongThucThanhToan) {
		this.phuongThucThanhToan = phuongThucThanhToan;
	}
}
