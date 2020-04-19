({
	getSavedSearchResultSize : function(component,event,helper) {
		var getSearchResultSize = 0;
		var getSearchSizeAction = component.get("c.getSearchSize");
		getSearchSizeAction.setCallback(this, function(response)
		{
        if (response.getState() == "SUCCESS")
         {
	         var responseValues = response.getReturnValue();
	         if(responseValues.SearchResultSize__c != null){
		        var  oldSearchResultSize = responseValues.SearchResultSize__c;		
	         	component.set('v.newSearchResultSize',responseValues.SearchResultSize__c);
	         	component.set('v.oldSearchResultSize',oldSearchResultSize);
	         }
         	}
		});
		$A.enqueueAction(getSearchSizeAction);
	},
    
    saveSearchResultSize : function(component,event,helper) {
		 var newSearchResultSize = component.get('v.newSearchResultSize');
		var getSearchResultSizeAction = component.get('c.saveSearchSize');
		getSearchResultSizeAction.setParams({ 
    	"searchResultSizeValue" : newSearchResultSize
		});
			getSearchResultSizeAction.setCallback(this, function(response){
				var state = response.getState(); 
				if (state == "SUCCESS") {
					var resultSize = response.getReturnValue();
                    console.log(resultSize);
					component.set('v.newSearchResultSize',newSearchResultSize);
				}
			});
		$A.enqueueAction(getSearchResultSizeAction);
    }

})