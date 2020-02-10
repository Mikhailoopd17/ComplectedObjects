package group.object_registry.DAO;

import group.object_registry.Entity.EntityObject;

import java.util.List;

public interface ObjectDAO {
    List<EntityObject> list();
    void add(EntityObject object);
    void delete(int id);
    EntityObject getById (int id);
}
