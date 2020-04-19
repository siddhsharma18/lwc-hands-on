@isTest

public class TestRestrictContactByName {
    @isTest static void metodoTest() {
        
        list<Contact> listContact = new list<Contact>();
        contact c1 = new contact(FirstName='Sid1',LastName='Sharma1',email='Sid1@gmail.com');
        contact c2 = new contact(FirstName='Francesco1', LastName = 'INVALIDNAME',email='Test@test.com');
        
        listContact.add(c1);
        listContact.add(c2);
        test.startTest();
        try{
            insert listContact;
        }catch(Exception e){
            
        }
        test.stopTest();
    }
}