package com.amoiseev.web.service.Impl;

import com.amoiseev.web.model.Person;
import com.amoiseev.web.model.dao.PersonDAO;
import com.amoiseev.web.service.PersonService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by amois_000 on 2/21/2016.
 */
@Service
@Transactional
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonDAO personDAO;

    public void addPerson(Person p) {
        this.personDAO.add(p);
    }

    public void updatePerson(Person p) {
        this.personDAO.update(p);
    }

    public List<Person> listPersons() {
        return this.personDAO.list();
    }

    public Person getPersonById(int id) {
        return this.personDAO.getById(id);
    }

    public void removePerson(int id) {
        this.personDAO.remove(id);
    }


}
