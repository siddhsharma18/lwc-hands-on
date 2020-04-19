trigger InsertChildWithParent on Opportunity (after insert) {
    
    List<Contact> contacts = new List<Contact>();
    
    
    for(opportunity o:trigger.new){
    contact c= new Contact();
    c.AccountId=o.AccountId;
    c.FirstName= 'opportunity';
    c.Lastname='Owner'; 
    contacts.add(c);
    
    }
    insert contacts;
}