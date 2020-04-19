public with sharing class SearchResultSize {
	private static final String SearchSize = 'Test';
    
  @AuraEnabled
	public static SearchSize__c getSearchSize(){
	
            SearchSize__c settings = SearchSize__c.getValues(SearchSize);
            if(settings != null)  {
                System.debug('searchzize='+settings);
            	  return settings;
            }
            else {
            	return null;
            }
    }  
    
    @AuraEnabled
	public static  boolean saveSearchSize(decimal searchResultSizeValue){
	  		SearchSize__c settings = SearchSize__c.getValues('Test');
			settings.SearchResultSize__c = searchResultSizeValue;
			if(settings.SearchResultSize__c <=250){
	           	upsert settings;
	            return true;
			}
			else{
				return false;
			}
        }
}