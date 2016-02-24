package com.amoiseev.web.model.dao;

import com.amoiseev.web.model.Person;

import java.util.List;

/**
 * Created by amois_000 on 2/22/2016.
 */
public interface  PersonDAO {
    public void add(Person p);
    public void update(Person p);
    public List<Person> list();
    public Person getById(int id);
    public void remove(int id);
}
