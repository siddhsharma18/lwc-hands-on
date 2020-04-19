public class ContactSearch {
    public static list<contact> searchForContacts(String a, string b){
        list<contact> con = [select id,name from contact where lastname=:a and MailingPostalCode=:b];
        
        return con;
        
    }

}