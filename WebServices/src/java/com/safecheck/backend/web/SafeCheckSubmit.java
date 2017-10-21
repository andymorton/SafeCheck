/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.safecheck.backend.web;

import java.util.UUID;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

/**
 *
 * @author amorton
 */
@WebService(serviceName = "SafeCheckSubmit")
public class SafeCheckSubmit
{

    /**
     * Web service operation
     */
    @WebMethod(operationName = "SafeCheckSubmit")
    public String SafeCheckSubmit(@WebParam(name = "jsonIn") String jsonIn)
    {
        
        //Dump it on a JMS queue
        
        String confirmationCode = UUID.randomUUID().toString();
        //TODO write your implementation code here:
        return confirmationCode;
    }
    
}
