package com.amoiseev.web.controller;

import com.amoiseev.web.model.User;
import com.amoiseev.web.model.dao.UserDAO;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;

@Controller
public class LoginController {
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String viewLogin(Map<String, Object> model) {
        User user = new User();
        model.put("userForm", user);
        return "LoginForm";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String doLogin(@Valid @ModelAttribute("userForm") User userForm,
                          BindingResult result, Map<String, Object> model) {
        if (result.hasErrors()) {
            return "LoginForm";
        }
        ApplicationContext context =
                new ClassPathXmlApplicationContext("dispatcher-servlet.xml");

        UserDAO userDAO = (UserDAO) context.getBean("userDAO");
        User user = (User) model.get("userForm");
        userDAO.insert(user);
        return "LoginSuccess";
    }
}