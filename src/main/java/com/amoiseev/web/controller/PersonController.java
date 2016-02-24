package com.amoiseev.web.controller;

import com.amoiseev.web.model.Person;
import com.amoiseev.web.model.dao.PersonDAO;
import com.amoiseev.web.service.PersonService;
import org.h2.tools.Console;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by amois_000 on 2/21/2016.
 */

@Controller
public class PersonController {

    @Autowired
    private PersonService personService;


    @RequestMapping(value = "/HibPerson/list", method = RequestMethod.GET)
    public String getRecords(Model model) {

        // Retrieve all persons
        List<Person> persons = personService.listPersons();

        // Add to model
        model.addAttribute("persons", persons);

        // This will resolve to /WEB-INF/jsp/records.jsp
        return "records";
    }

    /**
     *  Retrieves the "Add New Record" page
     */
    @RequestMapping(value = "/HibPerson/add", method = RequestMethod.GET)
    public String getAdd(Model model) {

        // Create new Person and add to model
        model.addAttribute("personAttribute", new Person());

        // This will resolve to /WEB-INF/jsp/add-record.jsp
        return "add-record";
    }

    /**
     * Adds a new record
     */
    @RequestMapping(value = "/HibPerson/add", method = RequestMethod.POST)
    public String postAdd(@ModelAttribute("personAttribute") Person person) {

        // Delegate to service
        personService.addPerson(person);

        // Redirect to url
        return "redirect:/HibPerson/list";
    }

    /**
     * Deletes a record including all the associated credit cards
     */
    @RequestMapping(value = "/HibPerson/delete", method = RequestMethod.GET)
    public String getDelete(@RequestParam("id") Integer personId) {

        // Delete person
        personService.removePerson(personId);

        // Redirect to url
        return "redirect:/HibPerson/list";
    }

    /**
     * Retrieves the "Edit Existing Record" page
     */
    @RequestMapping(value = "/HibPerson/edit", method = RequestMethod.GET)
    public String getEdit(@RequestParam("id") Integer personId, Model model) {

        // Retrieve person by id
        Person existingPerson = personService.getPersonById(personId);
        // Add to model
        model.addAttribute("personAttribute", existingPerson);

        // This will resolve to /WEB-INF/jsp/edit-record.jsp
        return "edit-record";
    }

    /**
     * Edits an existing record
     */
    @RequestMapping(value = "/HibPerson/edit", method = RequestMethod.POST)
    public String postEdit(@RequestParam("id") Integer personId,
                           @ModelAttribute("personAttribute") Person person) {

        // Assign id
        person.setId(personId);

        // Delegate to service
        personService.updatePerson(person);

        // Redirect to url
        return "redirect:/HibPerson/list";
    }
}
