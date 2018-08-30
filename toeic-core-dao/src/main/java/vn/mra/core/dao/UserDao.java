package vn.mra.core.dao;

import vn.mra.core.data.dao.GenericDao;
import vn.mra.core.persistence.entity.UserEntity;

import java.util.List;

public interface UserDao extends GenericDao<Integer, UserEntity> {
    Object[] checkLogin(String name, String password);
    List<UserEntity> findByUsers(List<String> name);
}
