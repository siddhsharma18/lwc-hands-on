public with sharing class  ShowContactsController {

    public list<account> latestAccounts{get;set;}
    
    public ShowContactsController(){
    latestAccounts=[select id, name, active__c from Account where createddate>=:system.today()-7];
    
    }


}