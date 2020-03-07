package group.object_registry.Service;

import group.object_registry.DAO.DirectorDAO;
import group.object_registry.DAO.DirectorDaoImpl;
import group.object_registry.Entity.Director;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class DirectorServiceImpl implements DirectorService {
    @Autowired
    DirectorDAO directorDAO = new DirectorDaoImpl();

    @Override
    public List<Director> list() {
        return directorDAO.list();
    }

    @Override
    public List<Director> listFull() {
        return directorDAO.listFull();
    }
}
