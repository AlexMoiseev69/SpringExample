package com.amoiseev.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by amois_000 on 11/8/2015.
 */
@Controller
public class InitController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {
//        model.addAttribute("message", "Spring 3 MVC Hello World");
        return "Index";
    }
}
