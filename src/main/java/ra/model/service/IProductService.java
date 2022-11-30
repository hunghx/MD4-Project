package ra.model.service;

import ra.model.entity.Product;
import ra.model.entity.ProductDetail;

import java.util.List;

public interface IProductService<T,V> extends IShopService<Product,Integer> {
    List<T> searchByName(String searchName);
    boolean insertProductDetail(int proId, List<ProductDetail> list);
    int getLatestId();
}
