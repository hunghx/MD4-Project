package ra.model.DAOImple;

import ra.model.DAO.ICatalogDAO;
import ra.model.entity.Catalog;
import ra.model.util.ConnectionDB;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CatalogDAOImple implements ICatalogDAO<Catalog, Integer> {
    @Override
    public List<Catalog> searchByName(String searchName) {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Catalog> listSearchCatalog = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_searchCatalogByName(?)}");
            callSt.setString(1, searchName);
            ResultSet rs = callSt.executeQuery();
            listSearchCatalog = new ArrayList<>();
            while (rs.next()) {
                Catalog cat = new Catalog();
                cat.setCatalogId(rs.getInt("catalogId"));
                cat.setCatalogName(rs.getString("catalogName"));
                cat.setCatalogDescriptions(rs.getString("descriptions"));
                cat.setCatalogStatus(rs.getBoolean("status"));
                cat.setCatalogParents(rs.getInt("catalogParents"));
                cat.setCatalogParentsName(rs.getString("catalogParentsName"));
                listSearchCatalog.add(cat);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listSearchCatalog;
    }

    @Override
    public List<Catalog> getCatalogForCreate() {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Catalog> listCreateCatalog = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call getCatalogForCreat()}");
            ResultSet rs = callSt.executeQuery();
            listCreateCatalog = new ArrayList<>();
            while (rs.next()) {
                Catalog cat = new Catalog();
                cat.setCatalogId(rs.getInt("catalogId"));
                cat.setCatalogName(rs.getString("catalogName"));
                listCreateCatalog.add(cat);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listCreateCatalog;
    }

    @Override
    public List<Catalog> getAll() {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Catalog> listCatalog = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getAllCatalog()}");
            ResultSet rs = callSt.executeQuery();
            listCatalog = new ArrayList<>();
            while (rs.next()) {
                Catalog cat = new Catalog();
                cat.setCatalogId(rs.getInt("catalogId"));
                cat.setCatalogName(rs.getString("catalogName"));
                cat.setCatalogDescriptions(rs.getString("descriptions"));
                cat.setCatalogStatus(rs.getBoolean("status"));
                cat.setCatalogParents(rs.getInt("catalogParents"));
                cat.setCatalogParentsName(rs.getString("catalogParentsName"));
                listCatalog.add(cat);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listCatalog;
    }

    @Override
    public boolean insertNew(Catalog catalog) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_insertCatalog(?,?,?,?)}");
            callSt.setString(1, catalog.getCatalogName());
            callSt.setString(2, catalog.getCatalogDescriptions());
            callSt.setBoolean(3, catalog.isCatalogStatus());
            callSt.setInt(4, catalog.getCatalogParents());
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
    public boolean update(Catalog catalog) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_updateCatalog(?,?,?,?,?)}");
            callSt.setInt(1, catalog.getCatalogId());
            callSt.setString(2, catalog.getCatalogName());
            callSt.setString(3, catalog.getCatalogDescriptions());
            callSt.setBoolean(4, catalog.isCatalogStatus());
            callSt.setInt(5, catalog.getCatalogParents());
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
            callSt = conn.prepareCall("{call proc_deleteCatalog(?)}");
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
    public Catalog getById(Integer id) {
        Connection conn = null;
        CallableStatement callSt = null;
        Catalog catalogInfo = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getCatalogByID(?)}");
            callSt.setInt(1, id);
            ResultSet rs = callSt.executeQuery();
            catalogInfo = new Catalog();
            if (rs.next()) {
                catalogInfo.setCatalogId(rs.getInt("catalogId"));
                catalogInfo.setCatalogName(rs.getString("catalogName"));
                catalogInfo.setCatalogDescriptions(rs.getString("descriptions"));
                catalogInfo.setCatalogStatus(rs.getBoolean("status"));
                catalogInfo.setCatalogParents(rs.getInt("catalogParents"));
                catalogInfo.setCatalogParentsName(rs.getString("catalogParentsName"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return catalogInfo;
    }
}