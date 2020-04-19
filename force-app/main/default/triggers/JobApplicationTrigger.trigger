trigger JobApplicationTrigger on Job_Application__c (before insert,after insert) {
List <Candidate__c> candidateList =new List<Candidate__c> ();
  if(trigger.isBefore){
      
      if(trigger.isInsert){
          for(Job_Application__c job:trigger.new){
              if(job.status__C == 'JA-00002'){
              job.addError('Record already exist');
          }
      }
  }
  
}
   if(trigger.isAfter){
        if(trigger.isInsert){
            for(Job_Application__c Job: trigger.new){
                if(job.status__c =='new'){
                Candidate__c candidate = new Candidate__c();
                candidate.City__c ='Bangalore';
               // candidate.Job_Application__c= candidate.Id;
                candidateList.add(candidate);             
            }
        }
        insert candidateList;
    }
  }
}