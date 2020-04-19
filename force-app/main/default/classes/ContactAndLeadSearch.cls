public class ContactAndLeadSearch {
    public static list<list<sObject>> searchContactsAndLeads(String a){
        list<list<sObject>> contact = [FIND 'smith' IN ALL FIELDS 
                   RETURNING contact(lastname),lead(LastName)];
        return contact;
        
    }
}