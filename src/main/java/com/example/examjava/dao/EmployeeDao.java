package com.example.examjava.dao;

import com.example.examjava.entity.EmployeeEntity;
import com.example.examjava.util.PersistenceUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;

public class EmployeeDao {
    EntityManager em;
    EntityTransaction tran;

    public EmployeeDao(){
        em = PersistenceUtil.getEntityManagerFactory().createEntityManager();
        tran = em.getTransaction();
    }
    public void insertEmployee(EmployeeEntity employee){
        try{
            tran.begin();
            em.persist(employee);
            tran.commit();
        }catch (Exception ex){
            System.out.println(ex.getMessage());
            tran.rollback();
        }
    }

    public List<EmployeeEntity> getAllEmployee(){
        try {
            Query query = em.createQuery("select e from EmployeeEntity as e");
            return query.getResultList();
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return null;
    }


}
