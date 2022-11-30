package ra.model.DAO;

import java.util.List;

public interface ISizeDAO<T,V> extends IShopDAO<T,V>{
    List<T> searchByName(String searchName);
}