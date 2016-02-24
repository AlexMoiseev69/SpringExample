package com.amoiseev.web.model.dao.impl;

import com.amoiseev.web.model.Person;
import com.amoiseev.web.model.dao.PersonDAO;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by amois_000 on 2/22/2016.
 */
@Repository
public class PersonDAOImpl implements PersonDAO {

    public PersonDAOImpl(){
        System.out.println("PersonDAOImpl");
    }

    @Autowired
    private SessionFactory sessionFactory;

    public PersonDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void add(Person p) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(p);
    }

    public void update(Person p) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(p);
    }

    @SuppressWarnings("unchecked")
    public List<Person> list() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Person> personsList = session.createQuery("from Person").list();
        return personsList;
    }

    public Person getById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Person p = (Person) session.load(Person.class, new Integer(id));
        return p;
    }

    public void remove(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Person p = (Person) session.load(Person.class, new Integer(id));
        if(null != p){
            session.delete(p);
        }
    }
}
