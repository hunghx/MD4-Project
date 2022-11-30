package ra.model.serviceImple;

import ra.model.DAO.IUserDAO;
import ra.model.DAOImple.UserDAOImple;
import ra.model.entity.User;
import ra.model.service.IUserService;

import java.util.List;

public class UserServiceImple implements IUserService<User,Integer> {
    private IUserDAO<User,Integer> userDAO = new UserDAOImple();
    @Override
    public List<User> getAll() {
        return userDAO.getAll();
    }

    @Override
    public boolean insertNew(User user) {
        return userDAO.insertNew(user);
    }

    @Override
    public boolean update(User user) {
        return userDAO.update(user);
    }

    @Override
    public boolean delete(Integer id) {
        return userDAO.delete(id);
    }

    @Override
    public User getById(Integer id) {
        return userDAO.getById(id);
    }

    @Override
    public List<User> searchByName(String searchName) {
        return searchByName(searchName);
    }

    @Override
    public User login(String userName, String password) {
        return userDAO.login(userName,password);
    }
}
