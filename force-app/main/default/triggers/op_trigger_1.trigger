trigger op_trigger_1 on Opportunity (Before Insert,Before Update)
 {
     for(Opportunity o : Trigger.New)
        {
           if(Trigger.IsInsert && o.Amount < 5000)
           o.addError('Amount can not be less than 5k for new records');
           else if (Trigger.IsUpdate && o.Amount < 3000)
           o.addError('Amount can not be less that 3k for existing records');
        }
        
 }