package ra.model.DAO;

import java.util.List;

public interface IShopDAO<T,V> {
    List<T> getAll();
    boolean insertNew(T t);
    boolean update(T t);
    boolean delete(V id);
    T getById (V id);
}