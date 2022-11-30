package ra.model.service;

import ra.model.entity.User;

import java.util.List;

public interface IUserService<T,V> extends IShopService<T,V> {
    List<T> searchByName(String searchName);
    User login(String userName, String password);
}
