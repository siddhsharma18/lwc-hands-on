trigger addContact on Candidate__c(after Insert){
    for(candidate__c c:trigger.new){
        contact newContact= new Contact(lastname=c.last_name__c,
        firstName=c.first_name__c, email=c.email__c);
            Database.insert(newContact);
             System.debug('New Contact'+newContact.id);
    }
   
}