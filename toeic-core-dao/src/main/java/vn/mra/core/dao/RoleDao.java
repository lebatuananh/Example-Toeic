package vn.mra.core.dao;

import vn.mra.core.data.dao.GenericDao;
import vn.mra.core.persistence.entity.RoleEntity;

import java.util.List;

public interface RoleDao extends GenericDao<Integer, RoleEntity> {
    List<RoleEntity> findByRoles(List<String> roles);
}
