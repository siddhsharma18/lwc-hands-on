trigger PositionTrigger on Position__c (before Insert,after insert) {
    List<Job_Application__c> jList = new List<Job_Application__c>();
    if(trigger.IsBefore){
        if(trigger.isinsert){
            System.debug('Inside if');
            for(Position__c pos :trigger.new){
                if(pos.Name == 'Sr tester'){
                system.DEBUG('pOSITION ID VALUE'+POS.ID);
                   pos.addError('You cannot add this record');
                }
            }
           
        }
    }
    if(trigger.isAfter){
        if(trigger.isInsert){
            for(Position__c pos :trigger.new){
                if(pos.Name == 'Java Developer'){
                   Job_Application__c job = new Job_Application__c();
                    job.Status__c = 'New';
                    job.Position__c = pos.id;
                    jList.add(job);
                    
                }
            }
            insert jList;    
        }
    }
}