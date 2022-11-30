package ra.model.DAOImple;

import ra.model.DAO.IColorDAO;
import ra.model.entity.Color;
import ra.model.entity.Size;
import ra.model.util.ConnectionDB;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ColorDAOImple implements IColorDAO<Color,Integer> {
    @Override
    public List<Color> searchByName(String searchName) {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Color> listSearchColor = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_searchColorByName(?)}");
            callSt.setString(1, searchName);
            ResultSet rs = callSt.executeQuery();
            listSearchColor = new ArrayList<>();
            while (rs.next()) {
                Color color = new Color();
                color.setColorId(rs.getInt("colorId"));
                color.setColorHex(rs.getString("colorHex"));
                color.setColorName(rs.getString("colorName"));
                color.setColorStatus(rs.getBoolean("colorStatus"));
                listSearchColor.add(color);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listSearchColor;
    }

    @Override
    public List<Color> getAll() {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Color> listColor = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getAllColor()}");
            ResultSet rs = callSt.executeQuery();
            listColor = new ArrayList<>();
            while (rs.next()) {
                Color color = new Color();
                color.setColorId(rs.getInt("colorId"));
                color.setColorHex(rs.getString("colorHex"));
                color.setColorName(rs.getString("colorName"));
                color.setColorStatus(rs.getBoolean("colorStatus"));
                listColor.add(color);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listColor;
    }

    @Override
    public boolean insertNew(Color color) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_insertColor(?,?,?)}");
            callSt.setString(1, color.getColorHex());
            callSt.setString(2, color.getColorName());
            callSt.setBoolean(3, color.isColorStatus());
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
    public boolean update(Color color) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_updateColor(?,?,?,?)}");
            callSt.setInt(1, color.getColorId());
            callSt.setString(2, color.getColorHex());
            callSt.setString(3, color.getColorName());
            callSt.setBoolean(4, color.isColorStatus());
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
            callSt = conn.prepareCall("{call proc_deleteColor(?)}");
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
    public Color getById(Integer id) {
        Connection conn = null;
        CallableStatement callSt = null;
        Color colorInfo = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getColorByID(?)}");
            callSt.setInt(1, id);
            ResultSet rs = callSt.executeQuery();
            colorInfo = new Color();
            if (rs.next()) {
                colorInfo.setColorId(rs.getInt("colorId"));
                colorInfo.setColorHex(rs.getString("colorHex"));
                colorInfo.setColorName(rs.getString("colorName"));
                colorInfo.setColorStatus(rs.getBoolean("colorStatus"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return colorInfo;
    }
}
