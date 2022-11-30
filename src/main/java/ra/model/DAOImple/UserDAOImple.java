package ra.model.DAOImple;

import ra.model.DAO.IUserDAO;
import ra.model.entity.User;
import ra.model.util.ConnectionDB;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.List;

public class UserDAOImple implements IUserDAO<User,Integer> {
    @Override
    public List<User> getAll() {
        return null;
    }

    @Override
    public boolean insertNew(User user) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_register(?,?,?,?,?,?)}");
            callSt.setString(1,user.getFullName());
            callSt.setString(2, user.getUserEmail());
            callSt.setString(3, user.getUserTelephone());
            callSt.setString(4, user.getAddress());
            callSt.setString(5, user.getUserName());
            callSt.setString(6, user.getUserPassword());
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
    public boolean update(User user) {
        return false;
    }

    @Override
    public boolean delete(Integer id) {
        return false;
    }

    @Override
    public User getById(Integer id) {
        return null;
    }

    @Override
    public List<User> searchByName(String searchName) {
        return null;
    }

    @Override
    public User login(String userName, String password) {
        Connection conn = null;
        CallableStatement callSt = null;
        User user = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_login(?,?)}");
            callSt.setString(1,userName);
            callSt.setString(2, password);
            user = new User();
            ResultSet rs = callSt.executeQuery();
            if (rs.next()){
                user.setUserId(rs.getInt("userId"));
                user.setUserName(rs.getString("userName"));
                user.setUserPassword(rs.getString("userPassword"));
                user.setFullName(rs.getString("fullName"));
                user.setUserTelephone(rs.getString("userTelephone"));
                user.setUserEmail(rs.getString("userEmail"));
                user.setPermission(rs.getInt("permission"));
                user.setAddress(rs.getString("address"));
                user.setCreateDate(rs.getDate("createDate"));
                user.setUserStatus(rs.getBoolean("userStatus"));
            }
        } catch (Exception ex){
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn,callSt);
        }
        return user;
    }
}
