package vn.mra.core.data.dao;

import java.io.Serializable;
import java.util.List;

public interface IGenericDao<ID extends Serializable, T> {
    List<T> findAll();

    T update(T entity);

    void save(T entity);

    T findById(ID id);

    Object[] findByProperty(String property, Object value, String sortExpression, String sortDirection);

    Integer delete(List<ID> idList);

    T findEqualUnique(String property, Object value);
}
