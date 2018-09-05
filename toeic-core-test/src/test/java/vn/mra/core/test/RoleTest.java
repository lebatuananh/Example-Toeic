//package vn.mra.core.test;
//
//import org.testng.annotations.Test;
//import vn.mra.core.dao.IRoleDao;
//import vn.mra.core.daoimpl.RoleDaoImpl;
//import vn.mra.core.persistence.entity.RoleEntity;
//
//import java.util.ArrayList;
//import java.util.List;
//
//public class RoleTest {
//    @Test
//    public void checkFindAll() {
//        IRoleDao roleDao = new RoleDaoImpl();
//        List<RoleEntity> list = roleDao.findAll();
//    }
//
//    @Test
//    public void checkedUpdateRole() {
//        IRoleDao roleDao = new RoleDaoImpl();
//        RoleEntity entity = new RoleEntity();
//        entity.setName("USER_TEST1");
//        entity.setRoleId(3);
//        roleDao.update(entity);
//    }
//
//    @Test
//    public void checkSaveRole() {
//        IRoleDao roleDao = new RoleDaoImpl();
//        RoleEntity entity = new RoleEntity();
//        entity.setName("STUDENT");
//        roleDao.save(entity);
//    }
//
//    @Test
//    public void checkFindById() {
//        IRoleDao roleDao = new RoleDaoImpl();
//        RoleEntity entity = roleDao.findById(1);
//    }
//
//    @Test
//    public void checkFindByRole() {
//        IRoleDao roleDao = new RoleDaoImpl();
//        List<String> roles = new ArrayList<String>();
//        roles.add("ADMIN");
//        roles.add("USER");
//        List<RoleEntity> roleEntities = roleDao.findByRoles(roles);
//        for (RoleEntity role : roleEntities
//        ) {
//            System.out.println(role.getName());
//        }
//    }
//
//    @Test
//    public void checkDeleteRole() {
//        IRoleDao roleDao = new RoleDaoImpl();
//        List<Integer> ids = new ArrayList<Integer>();
//        ids.add(4);
//        roleDao.delete(ids);
//    }
//
//    @Test
//    public void checkFindEqualUnique() {
//        IRoleDao roleDao = new RoleDaoImpl();
//        RoleEntity roleEntity = roleDao.findEqualUnique("roleId", 1);
//    }
//}
