package com.amoiseev.web.service;

import com.amoiseev.web.model.Person;

import java.util.List;

/**
 * Created by amois_000 on 2/22/2016.
 */
public interface PersonService {

    public void addPerson(Person p);
    public void updatePerson(Person p);
    public List<Person> listPersons();
    public Person getPersonById(int id);
    public void removePerson(int id);

}
