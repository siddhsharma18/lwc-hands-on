global class LeadProcessor implements Database.Batchable <sObject>,Database.stateful {
    global Database.QueryLocator start( Database.BatchableContext bc){
        String query = 'select id,LeadSource from Lead';
       return Database.getQueryLocator(query); 
    }
    
    global void execute(Database.BatchableContext bc, List<Lead> scope){
        for(Lead l: scope){
            l.LeadSource ='Dreamforce';
        }
        update scope;
    }
    global void finish(Database.BatchableContext bc){
        Id Job = bc.getJobId();
        system.debug(Job);
    }
}