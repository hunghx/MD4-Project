package ra.model.DAO;

import ra.model.entity.ProductDetail;

import java.util.List;

public interface IProductDAO<T,V> extends IShopDAO<T,V>{
    List<T> searchByName(String searchName);
    boolean insertProductDetail(int proId, List<ProductDetail> list);
    int getLatestId();
}
