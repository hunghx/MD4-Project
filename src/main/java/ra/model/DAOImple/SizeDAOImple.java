package ra.model.DAOImple;

import ra.model.DAO.ISizeDAO;
import ra.model.entity.Catalog;
import ra.model.entity.Size;
import ra.model.util.ConnectionDB;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SizeDAOImple implements ISizeDAO<Size,Integer> {

    @Override
    public List<Size> getAll() {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Size> listSize = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getAllSize()}");
            ResultSet rs = callSt.executeQuery();
            listSize = new ArrayList<>();
            while (rs.next()) {
                Size size = new Size();
                size.setSizeId(rs.getInt("sizeId"));
                size.setSizeName(rs.getString("sizeName"));
                size.setSizeStatus(rs.getBoolean("sizeStatus"));
                listSize.add(size);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listSize;
    }

    @Override
    public boolean insertNew(Size size) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_insertSize(?,?)}");
            callSt.setString(1, size.getSizeName());
            callSt.setBoolean(2, size.isSizeStatus());
            callSt.executeUpdate();
        } catch (Exception ex) {
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return result;
    }

    @Override
    public boolean update(Size size) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_updateSize(?,?,?)}");
            callSt.setInt(1, size.getSizeId());
            callSt.setString(2, size.getSizeName());
            callSt.setBoolean(3, size.isSizeStatus());
            callSt.executeUpdate();
        } catch (Exception ex) {
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return result;
    }

    @Override
    public boolean delete(Integer id) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_deleteSize(?)}");
            callSt.setInt(1, id);
            callSt.executeUpdate();
        } catch (Exception ex) {
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return result;
    }

    @Override
    public Size getById(Integer id) {
        Connection conn = null;
        CallableStatement callSt = null;
        Size sizeInfo = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getSizeByID(?)}");
            callSt.setInt(1, id);
            ResultSet rs = callSt.executeQuery();
            sizeInfo = new Size();
            if (rs.next()) {
                sizeInfo.setSizeId(rs.getInt("sizeId"));
                sizeInfo.setSizeName(rs.getString("sizeName"));
                sizeInfo.setSizeStatus(rs.getBoolean("sizeStatus"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return sizeInfo;
    }

    @Override
    public List<Size> searchByName(String searchName) {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Size> listSearchSize = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_searchSizeByName(?)}");
            callSt.setString(1, searchName);
            ResultSet rs = callSt.executeQuery();
            listSearchSize = new ArrayList<>();
            while (rs.next()) {
                Size size = new Size();
                size.setSizeId(rs.getInt("sizeId"));
                size.setSizeName(rs.getString("sizeName"));
                size.setSizeStatus(rs.getBoolean("sizeStatus"));
                listSearchSize.add(size);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listSearchSize;
    }
}