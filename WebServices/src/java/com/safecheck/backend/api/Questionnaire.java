/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.safecheck.backend.api;

import java.util.Vector;

/**
 *
 * @author amorton
 */
public class Questionnaire
{
    private String name;
    private Vector sections = new Vector();

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public Vector getSections()
    {
        return sections;
    }

    public void setSections(Vector sections)
    {
        this.sections = sections;
    }
    
    public void addSection(Section s)
    {
        sections.add(s);
    }
    
}
