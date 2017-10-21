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
public class Section
{
    private String name;
    private Vector questions = new Vector();
    private boolean repeatable = false;

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public Vector getQuestions()
    {
        return questions;
    }

    public void setQuestions(Vector questions)
    {
        this.questions = questions;
    }

    public boolean isRepeatable()
    {
        return repeatable;
    }
    
    public void setRepeatable(boolean b)
    {
        repeatable = b;
    }

    public void addItem(Item i)
    {
        questions.add(i);
    }
    
    
    
            
}
