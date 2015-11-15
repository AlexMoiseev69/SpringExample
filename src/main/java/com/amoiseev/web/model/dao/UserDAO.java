package com.amoiseev.web.model.dao;

import com.amoiseev.web.model.User;

/**
 * Created by amois_000 on 11/15/2015.
 */
public interface UserDAO
{
    public void insert(User customer);
    public User findByCustomerId(String email);
}
