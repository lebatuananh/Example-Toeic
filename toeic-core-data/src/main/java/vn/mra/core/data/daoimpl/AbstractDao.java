package vn.mra.core.data.daoimpl;

import org.apache.log4j.Logger;
import org.hibernate.*;
import vn.mra.core.common.constant.CoreConstant;
import vn.mra.core.common.utils.HibernateUtil;
import vn.mra.core.data.dao.IGenericDao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

public class AbstractDao<ID extends Serializable, T> implements IGenericDao<ID, T> {
    private final Logger log = Logger.getLogger(this.getClass());
    private Class<T> persistenceClass;

    public AbstractDao() {
        this.persistenceClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[1];
    }

    private String getPersistenceClassName() {
        return persistenceClass.getSimpleName();
    }

    @Override
    public List<T> findAll() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        List<T> list;
        try {
            StringBuilder sql = new StringBuilder("from ");
            sql.append(this.getPersistenceClassName());
            Query query = session.createQuery(sql.toString());
            list = query.list();
            transaction.commit();
        } catch (HibernateException e) {
            transaction.rollback();
            log.error(e.getMessage(), e);
            throw e;
        } finally {
            session.close();
        }
        return list;
    }

    @Override
    public T update(T entity) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        T result;
        try {
            Object object = session.merge(entity);
            result = (T) object;
            transaction.commit();

        } catch (HibernateException e) {
            transaction.rollback();
            log.error(e.getMessage(), e);
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    @Override
    public void save(T entity) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            session.persist(entity);
            transaction.commit();
        } catch (HibernateException e) {
            transaction.rollback();
            log.error(e.getMessage(), e);
            throw e;
        } finally {
            session.close();
        }
    }

    @Override
    public T findById(ID id) {
        T result;
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            result = (T) session.get(persistenceClass, id);
            if (result == null) {
                throw new ObjectNotFoundException("NOT FOUND " + id, null);
            }
            transaction.commit();
        } catch (HibernateException e) {
            transaction.rollback();
            log.error(e.getMessage(), e);
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    @Override
    public Object[] findByProperty(String property, Object value, String sortExpression, String sortDirection) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        List<T> list;
        Object totalItem;
        try {
            StringBuilder sql = new StringBuilder();
            sql.append("FROM ").append(getPersistenceClassName());
            if (property != null && value != null) {
                sql.append(" WHERE ").append(property).append("= :value");
            }
            if (sortDirection != null && sortExpression != null) {
                sql.append(" ORDER BY ").append(sortExpression).append(" ")
                        .append(sortDirection.equals("ASC") ? CoreConstant.SORT_ASC : CoreConstant.SORT_DESC);
            }
            Query query = session.createQuery(sql.toString());
            if (property != null && value != null) {
                query.setParameter("value", value);
            }
            list = query.list();

            StringBuilder sql2 = new StringBuilder();
            sql2.append("SELECT COUNT(*) FROM ").append(getPersistenceClassName());
            if (property != null && value != null) {
                sql2.append(" WHERE ").append(property).append("= :value");
            }
            Query query1 = session.createQuery(sql2.toString());
            if (property != null && value != null) {
                query1.setParameter("value", value);
            }
            totalItem = query1.list().get(0);
            transaction.commit();
        } catch (HibernateException e) {
            transaction.rollback();
            log.error(e.getMessage(), e);
            throw e;
        } finally {
            session.close();
        }
        return new Object[]{list, totalItem};
    }

    @Override
    public Integer delete(List<ID> idList) {
        Integer result = 0;
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            for (ID item : idList) {
                T t = this.findById(item);
                session.delete(t);
                result++;
            }
            transaction.commit();
        } catch (HibernateException e) {
            transaction.rollback();
            log.error(e.getMessage(), e);
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    @Override
    public T findEqualUnique(String property, Object value) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        T result;
        try {
            StringBuilder sql = new StringBuilder(" FROM ");
            sql.append(this.getPersistenceClassName()).append(" model WHERE model.").append(property).append("= :value");
            Query query = session.createQuery(sql.toString());
            query.setParameter("value", value);
            result = (T) query.uniqueResult();
        } catch (HibernateException e) {
            transaction.rollback();
            log.error(e.getMessage(), e);
            throw e;
        } finally {
            session.close();
        }
        return result;
    }
}
