package ra.model.serviceImple;

import ra.model.DAO.IProductDAO;
import ra.model.DAOImple.ProductDAOImple;
import ra.model.entity.Product;
import ra.model.entity.ProductDetail;
import ra.model.service.IProductService;

import java.util.List;

public class ProductServiceImple implements IProductService<Product,Integer> {
    private IProductDAO<Product,Integer> productDAO = new ProductDAOImple();

    @Override
    public List<Product> searchByName(String searchName) {
        return productDAO.searchByName(searchName);
    }

    @Override
    public boolean insertProductDetail(int proId, List<ProductDetail> list) {
        return productDAO.insertProductDetail(proId,list);
    }

    @Override
    public int getLatestId() {
        return productDAO.getLatestId();
    }

    @Override
    public boolean updateProDuctDetail(ProductDetail pdetail) {
        return productDAO.updateProDuctDetail(pdetail);
    }

    @Override
    public Product searchProductDetail(int id, String name) {
        return productDAO.searchProductDetail(id,name);
    }

    @Override
    public List<Product> getAll() {
        return productDAO.getAll();
    }

    @Override
    public boolean insertNew(Product product) {
        return productDAO.insertNew(product);
    }

    @Override
    public boolean update(Product product) {
        return productDAO.update(product);
    }

    @Override
    public boolean delete(Integer id) {
        return productDAO.delete(id);
    }

    @Override
    public Product getById(Integer id) {
        return productDAO.getById(id);
    }


}
