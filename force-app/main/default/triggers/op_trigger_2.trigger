trigger op_trigger_2 on Opportunity (after insert) {
    
    Contact c = new Contact() ;
    for(opportunity o : Trigger.new)
    {
        c.AccountID= o.AccountId;
        c.FirstName='opportunity';
        c.LastName='Owner';
        insert c;
    }
    }