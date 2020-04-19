public class MyController1 {
public List<Position__c> posList{get;set;}
    public MyController1 () {
       
    }
 
public Pagereference getPosRecords(){
    PageReference pageRef = ApexPages.currentPage();

    posList = [Select id,Name,Hiring_manager__c from Position__c ];
    return null;
}
}