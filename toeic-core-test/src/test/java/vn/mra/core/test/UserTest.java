package vn.mra.core.test;

import org.testng.annotations.Test;
import vn.mra.core.dao.UserDao;
import vn.mra.core.daoimpl.UserDaoImpl;
import vn.mra.core.persistence.entity.UserEntity;

import java.util.ArrayList;
import java.util.List;

public class UserTest {
    @Test
    public void checkLogin() {
        UserDao userDao = new UserDaoImpl();
        Object o = userDao.checkLogin("admin", "123456");
    }

    @Test
    public void checkFindByUser() {
        UserDao userDao = new UserDaoImpl();
        List<String> names = new ArrayList<String>();
        names.add("admin");
        names.add("a");
        names.add("abc");
        List<UserEntity> userEntities = userDao.findByUsers(names);
    }
}
