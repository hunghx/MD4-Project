package ra.model.DAOImple;

import ra.model.DAO.IProductDAO;
import ra.model.entity.Catalog;
import ra.model.entity.Product;
import ra.model.entity.ProductDetail;
import ra.model.util.ConnectionDB;

import java.lang.reflect.Type;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAOImple implements IProductDAO<Product, Integer> {
    @Override
    public List<Product> searchByName(String searchName) {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Product> listSearchProduct = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_searchProductByName(?)}");
            callSt.setString(1, searchName);
            ResultSet rs = callSt.executeQuery();
            listSearchProduct = new ArrayList<>();
            while (rs.next()) {
                Product pro = new Product();
                pro.setProductId(rs.getInt("productId"));
                pro.setProductName(rs.getString("productName"));
                pro.setTitleProduct(rs.getString("titleProduct"));
                pro.setProductDescriptions(rs.getString("productDescriptions"));
                pro.setCatalogId(rs.getInt("catalogId"));
                pro.setProductStatus(rs.getBoolean("productStatus"));
                pro.setCreateDate(rs.getDate("createDate"));
                pro.setProductImage(rs.getString("productImg"));
                listSearchProduct.add(pro);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listSearchProduct;
    }

    @Override
    public boolean insertProductDetail(int proId, List<ProductDetail> list) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            for (ProductDetail pro : list) {
                callSt = conn.prepareCall("{call proc_insertProDetail(?,?,?,?,?,?)}");
                callSt.setInt(1,proId);
                callSt.setInt(2,pro.getSize().getSizeId());
                callSt.setInt(3,pro.getColor().getColorId());
                callSt.setFloat(4,pro.getImportPrice());
                callSt.setFloat(5,pro.getExportPrice());
                callSt.setInt(6,pro.getQuantity());
                callSt.executeUpdate();
            }
        } catch (Exception ex) {
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return result;
    }

    @Override
    public int getLatestId() {
        Connection conn = null;
        CallableStatement callSt = null;
        int productLatestId = 0;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call getLastestIDProduct()}");
            ResultSet rs = callSt.executeQuery();
            if (rs.next()) {
                productLatestId=rs.getInt("productId");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return productLatestId;
    }

    @Override
    public List<Product> getAll() {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Product> listProduct = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getAllProduct()}");
            ResultSet rs = callSt.executeQuery();
            listProduct = new ArrayList<>();
            while (rs.next()) {
                Product pro = new Product();
                pro.setProductId(rs.getInt("productId"));
                pro.setProductName(rs.getString("productName"));
                pro.setTitleProduct(rs.getString("titleProduct"));
                pro.setProductDescriptions(rs.getString("productDescriptions"));
                pro.setCatalogId(rs.getInt("catalogId"));
                pro.setProductStatus(rs.getBoolean("productStatus"));
                pro.setCreateDate(rs.getDate("createDate"));
                pro.setProductImage(rs.getString("productImg"));
                listProduct.add(pro);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listProduct;
    }

    @Override
    public boolean insertNew(Product product) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_insertProduct(?,?,?,?,?,?,?,?)}");
            callSt.setString(1, product.getProductName());
            callSt.setString(2, product.getTitleProduct());
            callSt.setString(3, product.getProductDescriptions());
            callSt.setInt(4, product.getCatalogId());
            callSt.setBoolean(5, product.isProductStatus());
            callSt.setDate(6, new Date(product.getCreateDate().getTime()));
            callSt.setString(7, product.getProductImage());
            callSt.registerOutParameter(8, Types.INTEGER);
            callSt.execute();
            int productId = callSt.getInt(8);
            for (String proLink : product.getListImage()) {
                CallableStatement callSt2 = conn.prepareCall("{call proc_insertImage(?,?)}");
                callSt2.setString(1, proLink);
                callSt2.setInt(2, productId);
                callSt2.executeUpdate();
                callSt2.close();
            }
        } catch (Exception ex) {
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return result;
    }

    @Override
    public boolean update(Product product) {
        return false;
    }

    @Override
    public boolean delete(Integer id) {
        return false;
    }

    @Override
    public Product getById(Integer id) {
        return null;
    }
}
