package group.object_registry.Service;

import group.object_registry.Entity.EntityObject;

import java.util.List;

public interface ObjectService {
    List<EntityObject> list();
    void add(EntityObject object);
    void delete(int id);
    EntityObject getById (int id);
}
