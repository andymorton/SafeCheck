/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.safecheck.backend.web;

import com.safecheck.backend.api.Section;
import com.safecheck.backend.api.Item;
import com.safecheck.backend.api.Questionnaire;
import com.google.gson.Gson;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author amorton
 */
@WebService(serviceName = "SafeCheck")
public class SafeCheck
{

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "getQuestionnaire")
    public String getQuestionniare(@WebParam(name = "name") String txt)
    {
        Questionnaire test = new Questionnaire();
        test.setName("TEST");
        
       Item name = new Item();
        name.setName("Name");
        name.setType("TEXT");
        
        
        Item dob = new Item();
        dob.setName("DOB");
        dob.setType("DATE");
        
        Item contactPhone = new Item();
        contactPhone.setName("Phone");
        contactPhone.setType("TEXT");
        
        Item allergies = new Item();
        allergies.setName("Allergies");
        allergies.setType("TEXT");
        
        Item otherdetails = new Item();
        otherdetails.setName("OtherDetails");
        otherdetails.setType("TEXT");
        
        Item note = new Item();
        note.setName("Note that goes somewhere.");
        note.setType("NOTE");
        
        Section parent = new Section();
        parent.setName("Parent");
        parent.addItem(name);
        parent.addItem(dob);
        parent.addItem(contactPhone);
        
        
        test.addSection(parent);
        
        
        //printQuestionnniare(test);
        
        
        Section child = new Section();
        child.setName("Child");
        child.setRepeatable(true);
        child.addItem(name);
        child.addItem(dob);
        child.addItem(allergies);
        child.addItem(otherdetails);
        
        
        test.addSection(child);
        
        
        
        String json = new Gson().toJson(test);
        
        
        return json;
    }
}
