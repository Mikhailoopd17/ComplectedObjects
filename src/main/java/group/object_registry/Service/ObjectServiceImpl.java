package group.object_registry.Service;

import group.object_registry.DAO.ObjectDAO;
import group.object_registry.DAO.ObjectDAOImpl;
import group.object_registry.Entity.EntityObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ObjectServiceImpl implements ObjectService {
    @Autowired
    ObjectDAO objectDAO = new ObjectDAOImpl();

    @Override
    public List<EntityObject> list() {
        return objectDAO.list();
    }



    @Override
    public void add(EntityObject object) {
            objectDAO.add(object);
    }

    @Override
    public void delete(int id) {
        objectDAO.delete(id);
    }

    @Override
    public EntityObject getById(int id) {
        return objectDAO.getById(id);
    }
}
