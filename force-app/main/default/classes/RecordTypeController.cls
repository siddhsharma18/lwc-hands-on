public class RecordTypeController {
    public static Map<Id, String> recordtypemap {get;set;}
    
   @AuraEnabled        
    public static List<String> fetchRecordTypeValues(){
    List<Schema.RecordTypeInfo> recordtypes = CustomRecordType__c.SObjectType.getDescribe().getRecordTypeInfos();    
        recordtypemap = new Map<Id, String>();
        
      // CustomRecordType__c value = CustomRecordType__c.get
        // Map<ID,Schema.RecordTypeInfo> mapRecordType = CustomRecordType__c.sObjectType.getDescribe().getRecordTypeInfosById();
        System.debug('Values+++++'+recordtypes);
       for(RecordTypeInfo rt : recordtypes){
            if(rt.getName() != 'Master')
            recordtypemap.put(rt.getRecordTypeId(), rt.getName());
        }      
        return recordtypemap.values();
    }
    
    @AuraEnabled
    public static Id getRecTypeId(String recordTypeLabel){
        Id recid = Schema.SObjectType.Account.getRecordTypeInfosByName().get(recordTypeLabel).getRecordTypeId();        
        return recid;
    }      

}