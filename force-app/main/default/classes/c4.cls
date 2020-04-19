public with sharing class c4 {
    list<opportunity> opp= [select name, amount,StageName from Opportunity where stageName='closed lost'];
    
    public list<opportunity> getopp(){
        return opp;
    }
    
}