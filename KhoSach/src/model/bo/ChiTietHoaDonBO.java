/*
 * @author VTA
 * @date Apr 22, 2020
 * @version 1.0
 */

package model.bo;

import java.util.ArrayList;

import model.bean.ChiTietHoaDonBEAN;
import model.dao.ChiTietHoaDonDAO;

public class ChiTietHoaDonBO {
	ChiTietHoaDonDAO chiTietDao = new ChiTietHoaDonDAO();
	public ArrayList<ChiTietHoaDonBEAN > getHoaDon()  {
		return chiTietDao.getHoaDon();
	}
}
