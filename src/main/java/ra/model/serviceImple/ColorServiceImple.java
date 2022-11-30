package ra.model.serviceImple;

import ra.model.DAO.IColorDAO;
import ra.model.DAOImple.ColorDAOImple;
import ra.model.entity.Color;
import ra.model.service.IColorService;

import java.util.List;

public class ColorServiceImple implements IColorService<Color, Integer> {
    private IColorDAO<Color,Integer> colorDAO = new ColorDAOImple();
    @Override
    public List<Color> searchByName(String searchName) {
        return colorDAO.searchByName(searchName);
    }

    @Override
    public List<Color> getAll() {
        return colorDAO.getAll();
    }

    @Override
    public boolean insertNew(Color color) {
        return colorDAO.insertNew(color);
    }

    @Override
    public boolean update(Color color) {
        return colorDAO.update(color);
    }

    @Override
    public boolean delete(Integer id) {
        return colorDAO.delete(id);
    }

    @Override
    public Color getById(Integer id) {
        return colorDAO.getById(id);
    }
}
