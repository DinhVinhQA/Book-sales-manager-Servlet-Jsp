/*
 * @author VTA
 * @date Apr 16, 2020
 * @version 1.0
 */

package model.bo;

import java.util.ArrayList;

import model.bean.AdminBEAN;
import model.dao.vdDAO;

public class vdBO {
	vdDAO vdDao = new vdDAO();

	public ArrayList<AdminBEAN> getDanhSachAdmin() {
		return vdDao.getDanhSachAdmin();
	}

	public ArrayList<AdminBEAN> selectListMaySearch(String tukhoa) { // hàm tìm kiếm theo mã, tên, mô tả ( tìm kiếm vs
																		// nhiều trường)
		ArrayList<AdminBEAN> dsMayCanTim = new ArrayList<>();
		ArrayList<AdminBEAN> dsMay = getDanhSachAdmin();
		String noidung = tukhoa.trim().toLowerCase();
		for (AdminBEAN may : dsMay) {
			if ((may.getMatKhau().toLowerCase().contains(noidung))
					|| (may.getTenDangNhap().toLowerCase().contains(noidung))) {
				dsMayCanTim.add(may);
			}
		}
		if (!dsMayCanTim.isEmpty()) {
			return dsMayCanTim;
		} else {
			return null;
		}

	}
}
