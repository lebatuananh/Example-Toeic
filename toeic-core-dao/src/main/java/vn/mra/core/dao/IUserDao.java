package vn.mra.core.dao;

import vn.mra.core.data.dao.IGenericDao;
import vn.mra.core.persistence.entity.UserEntity;

import java.util.List;

public interface IUserDao extends IGenericDao<Integer, UserEntity> {
    Object[] checkLogin(String name, String password);
    List<UserEntity> findByUsers(List<String> name);
}
