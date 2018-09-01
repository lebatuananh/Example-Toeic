package vn.mra.core.dao;

import vn.mra.core.data.dao.IGenericDao;
import vn.mra.core.persistence.entity.RoleEntity;

import java.util.List;

public interface IRoleDao extends IGenericDao<Integer, RoleEntity> {
    List<RoleEntity> findByRoles(List<String> roles);
}
