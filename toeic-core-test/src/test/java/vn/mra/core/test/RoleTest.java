package vn.mra.core.test;

import org.testng.annotations.Test;
import vn.mra.core.dao.RoleDao;
import vn.mra.core.daoimpl.RoleDaoImpl;
import vn.mra.core.persistence.entity.RoleEntity;

import java.util.List;

public class RoleTest {
    @Test
    public void checkFindAll() {
        RoleDao roleDao = new RoleDaoImpl();
        List<RoleEntity> list = roleDao.findAll();
    }

    @Test
    public void checkedUpdateRole() {
        RoleDao roleDao = new RoleDaoImpl();
        RoleEntity entity = new RoleEntity();
        entity.setName("USER_TEST1");
        entity.setRoleId(3);
        roleDao.update(entity);
    }

    @Test
    public void checkSaveRole() {
        RoleDao roleDao = new RoleDaoImpl();
        RoleEntity entity = new RoleEntity();
        entity.setName("STUDENT");
        roleDao.save(entity);
    }

    @Test
    public void checkFindById() {
        RoleDao roleDao = new RoleDaoImpl();
        RoleEntity entity = roleDao.findById(1);
    }
}
