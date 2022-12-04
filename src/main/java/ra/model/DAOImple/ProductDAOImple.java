package ra.model.DAOImple;

import ra.model.DAO.IProductDAO;
import ra.model.entity.*;
import ra.model.util.ConnectionDB;

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
                callSt.setInt(1, proId);
                callSt.setInt(2, pro.getSize().getSizeId());
                callSt.setInt(3, pro.getColor().getColorId());
                callSt.setFloat(4, pro.getImportPrice());
                callSt.setFloat(5, pro.getExportPrice());
                callSt.setInt(6, pro.getQuantity());
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
                productLatestId = rs.getInt("productId");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return productLatestId;
    }

    @Override
    public boolean updateProDuctDetail( ProductDetail pdetail) {
        Connection conn = null;
        CallableStatement cast =null;
        boolean result = true;
        try {
            conn=ConnectionDB.openConnection();
            cast=conn.prepareCall("{call updateProDuctDetail(?,?,?,?) }");
            cast.setInt(1,pdetail.getProductDetailId());
            cast.setFloat(2,pdetail.getImportPrice());
            cast.setFloat(3,pdetail.getExportPrice());
            cast.setInt(4,pdetail.getQuantity());
        }catch (SQLException exception){
            result=false;
            exception.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,cast);
        }
        return result;
    }

    @Override
    public Product searchProductDetail(int id, String name) {
        Connection conn = null;
        CallableStatement callSt = null;
        Product product = null;
        try {
            product = new Product();
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getProductByID(?)}");
            callSt.setInt(1, id);
            ResultSet rs = callSt.executeQuery();
            if (rs.next()) {
                product.setProductId(rs.getInt("productId"));
                product.setProductName(rs.getString("productName"));
                product.setTitleProduct(rs.getString("titleProduct"));
                product.setProductDescriptions(rs.getString("productDescriptions"));
                product.setCatalogId(rs.getInt("catalogId"));
                product.setCatalogName(rs.getString("catalogName"));
                product.setProductStatus(rs.getBoolean("productStatus"));
                product.setCreateDate(rs.getDate("createDate"));
                product.setProductImage(rs.getString("productImg"));
                CallableStatement callSt2 = conn.prepareCall("{call proc_getSubImageByID(?)}");
                callSt2.setInt(1, product.getProductId());
                ResultSet rs2 = callSt2.executeQuery();
                while (rs2.next()) {
                    product.getListImage().add(rs2.getString("imageLink"));
                }
                CallableStatement callSt3 = conn.prepareCall("{call proc_searchProductDetailByName(?,?)}");
                callSt3.setInt(1,id);
                callSt3.setString(2,name);
                ResultSet rs3 = callSt3.executeQuery();
                while (rs3.next()) {
                    ProductDetail productDetail = new ProductDetail();
                    Size size = new Size();
                    Color color = new Color();
                    size.setSizeId(rs3.getInt("sizeId"));
                    size.setSizeName(rs3.getString("sizeName"));
                    color.setColorId(rs3.getInt("colorId"));
                    color.setColorName(rs3.getString("colorName"));
                    productDetail.setColor(color);
                    productDetail.setSize(size);
                    productDetail.setProductDetailId(rs3.getInt("productDetailId"));
                    productDetail.setImportPrice(rs3.getFloat("importPrice"));
                    productDetail.setExportPrice(rs3.getFloat("exportPrice"));
                    productDetail.setQuantity(rs3.getInt("productQuantity"));
                    product.getListProductDetail().add(productDetail);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return product;
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
                pro.setCatalogName(rs.getString("catalogName"));
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
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            CallableStatement callSt3 = conn.prepareCall("{call proc_deleteSubImage(?)}");
            callSt3.setInt(1, product.getProductId());
            callSt3.executeUpdate();

            callSt = conn.prepareCall("{call proc_updateProduct(?,?,?,?,?,?,?,?,?)}");
            callSt.setInt(1, product.getProductId());
            callSt.setString(2, product.getProductName());
            callSt.setString(3, product.getTitleProduct());
            callSt.setString(4, product.getProductDescriptions());
            callSt.setInt(5, product.getCatalogId());
            callSt.setBoolean(6, product.isProductStatus());
            callSt.setDate(7, new Date(product.getCreateDate().getTime()));
            callSt.setString(8, product.getProductImage());
            callSt.registerOutParameter(9, Types.INTEGER);
            callSt.execute();
            int productId = callSt.getInt(9);
            for (String proLink : product.getListImage()) {
                CallableStatement callSt2 = conn.prepareCall("{call proc_insertImage(?,?)}");
                callSt2.setString(1, proLink);
                callSt2.setInt(2, product.getProductId());
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
    public boolean delete(Integer id) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            CallableStatement callSt2 = conn.prepareCall("{call proc_deleteProductDetail(?)}");
            callSt2.setInt(1,id);
            callSt2.executeUpdate();

            CallableStatement callSt3 = conn.prepareCall("{call proc_deleteImage(?)}");
            callSt3.setInt(1,id);
            callSt3.executeUpdate();

            callSt = conn.prepareCall("{call proc_deleteProduct(?)}");
            callSt.setInt(1,id);
            callSt.executeUpdate();

        } catch (Exception ex){
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn,callSt);
        }
        return result;
    }

    @Override
    public Product getById(Integer id) {
        Connection conn = null;
        CallableStatement callSt = null;
        Product product = null;
        try {
            product = new Product();
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_getProductByID(?)}");
            callSt.setInt(1, id);
            ResultSet rs = callSt.executeQuery();
            if (rs.next()) {
                product.setProductId(rs.getInt("productId"));
                product.setProductName(rs.getString("productName"));
                product.setTitleProduct(rs.getString("titleProduct"));
                product.setProductDescriptions(rs.getString("productDescriptions"));
                product.setCatalogId(rs.getInt("catalogId"));
                product.setCatalogName(rs.getString("catalogName"));
                product.setProductStatus(rs.getBoolean("productStatus"));
                product.setCreateDate(rs.getDate("createDate"));
                product.setProductImage(rs.getString("productImg"));
                CallableStatement callSt2 = conn.prepareCall("{call proc_getSubImageByID(?)}");
                callSt2.setInt(1, product.getProductId());
                ResultSet rs2 = callSt2.executeQuery();
                while (rs2.next()) {
                    product.getListImage().add(rs2.getString("imageLink"));
                }
                CallableStatement callSt3 = conn.prepareCall("{call proc_getProductDetailByProductID(?)}");
                callSt3.setInt(1, product.getProductId());
                ResultSet rs3 = callSt3.executeQuery();
                while (rs3.next()) {
                    ProductDetail productDetail = new ProductDetail();
                    Size size = new Size();
                    Color color = new Color();
                    size.setSizeId(rs3.getInt("sizeId"));
                    size.setSizeName(rs3.getString("sizeName"));
                    color.setColorId(rs3.getInt("colorId"));
                    color.setColorName(rs3.getString("colorName"));
                    productDetail.setColor(color);
                    productDetail.setSize(size);
                    productDetail.setProductDetailId(rs3.getInt("productDetailId"));
                    productDetail.setImportPrice(rs3.getFloat("importPrice"));
                    productDetail.setExportPrice(rs3.getFloat("exportPrice"));
                    productDetail.setQuantity(rs3.getInt("productQuantity"));
                    product.getListProductDetail().add(productDetail);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return product;
    }

}
