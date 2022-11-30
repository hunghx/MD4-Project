package ra.model.DAO;

import java.util.List;

public interface IColorDAO <T,V> extends IShopDAO<T,V>{
    List<T> searchByName(String searchName);
}
