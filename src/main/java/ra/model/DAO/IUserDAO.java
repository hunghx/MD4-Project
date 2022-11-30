package ra.model.DAO;

import ra.model.entity.User;

import java.util.List;

public interface IUserDAO<T,V> extends IShopDAO<T,V> {
    List<T> searchByName(String searchName);
    User login(String userName, String password);
}
