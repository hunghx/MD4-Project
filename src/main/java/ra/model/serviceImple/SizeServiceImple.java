package ra.model.serviceImple;

import ra.model.DAO.ISizeDAO;
import ra.model.DAOImple.SizeDAOImple;
import ra.model.entity.Size;
import ra.model.service.ISizeService;

import java.util.List;

public class SizeServiceImple implements ISizeService<Size,Integer> {
    private ISizeDAO<Size,Integer> sizeDAO = new SizeDAOImple();
    @Override
    public List<Size> getAll() {
        return sizeDAO.getAll();
    }

    @Override
    public boolean insertNew(Size size) {
        return sizeDAO.insertNew(size);
    }

    @Override
    public boolean update(Size size) {
        return sizeDAO.update(size);
    }

    @Override
    public boolean delete(Integer id) {
        return sizeDAO.delete(id);
    }

    @Override
    public Size getById(Integer id) {
        return sizeDAO.getById(id);
    }

    @Override
    public List<Size> searchByName(String searchName) {
        return sizeDAO.searchByName(searchName);
    }
}