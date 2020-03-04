package group.object_registry.DAO;

import group.object_registry.Entity.Contract;

import java.util.List;

public interface ObjectDAO {
    List<Contract> list();

    void add(Contract object);
    void delete(int id);
    Contract getById (int id);
}
