
import com.google.gson.Gson;
import com.safecheck.backend.api.Item;
import com.safecheck.backend.api.Questionnaire;
import com.safecheck.backend.api.Section;
import java.util.Iterator;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author amorton
 */
public class Test
{
    public static void main(String[] args)
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
        
        printQuestionnniare(test);
        
        
        
        String json = new Gson().toJson(test);
        
        System.out.println(json);
        
    }

    private static void printQuestionnniare(Questionnaire test)
    {
        Iterator i = test.getSections().iterator();
        while(i.hasNext())
        {
            Section toPrint = (Section) i.next();
            System.out.println(toPrint.getName());
            System.out.println("====================================");
            Iterator items = toPrint.getQuestions().iterator();
            while(items.hasNext())
            {
                Item item = (Item) items.next();
                System.out.println("Item name ["+item.getName()+"] and type of ["+item.getType()+"]");
            }
                
        }
    }
    
    
    
    
}
