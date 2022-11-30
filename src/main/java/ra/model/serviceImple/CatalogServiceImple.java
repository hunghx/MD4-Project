package ra.model.serviceImple;

import ra.model.DAO.ICatalogDAO;
import ra.model.DAOImple.CatalogDAOImple;
import ra.model.entity.Catalog;
import ra.model.service.ICatalogService;

import java.util.List;

public class CatalogServiceImple implements ICatalogService<Catalog,Integer> {
    private ICatalogDAO<Catalog,Integer> catalogDAO = new CatalogDAOImple();
    @Override
    public List<Catalog> searchByName(String searchName) {
        return catalogDAO.searchByName(searchName);
    }

    @Override
    public List<Catalog> getCatalogForCreate() {
        return catalogDAO.getCatalogForCreate();
    }

    @Override
    public List<Catalog> getAll() {
        return catalogDAO.getAll();
    }

    @Override
    public boolean insertNew(Catalog catalog) {
        return catalogDAO.insertNew(catalog);
    }

    @Override
    public boolean update(Catalog catalog) {
        return catalogDAO.update(catalog);
    }

    @Override
    public boolean delete(Integer id) {
        return catalogDAO.delete(id);
    }

    @Override
    public Catalog getById(Integer id) {
        return catalogDAO.getById(id);
    }
}