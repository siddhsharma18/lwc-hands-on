({
	doInit : function(component, event, helper) {
		 helper.getSavedSearchResultSize(component,event,helper);
	},
	
	 searchResultSizeUpdate:function(component, event, helper) {
        var selectedItem = event.currentTarget;
        component.set("v.newSearchResultSize", selectedItem.value);
    },
    
    saveSearchResultSize : function(component, event, helper) {
		component.set('v.editSearchResultSize',false);
		 var newSearchResultSize = component.get('v.newSearchResultSize');
		 var oldValue =  component.get('v.oldSearchResultSize');
		 if(newSearchResultSize > 250){
			 newSearchResultSize = 250;
			 helper.saveSearchResultSize(component, event, helper);
		 }else if(newSearchResultSize == null || newSearchResultSize == '' ){
			 component.set("v.newSearchResultSize",oldValue);
		 }else if(newSearchResultSize != null && newSearchResultSize > 0 && newSearchResultSize < 251){
			helper.saveSearchResultSize(component, event, helper);
		 }
		 
    },
    
	toggleEdit: function(component, event, helper){
		var editSearchResultSize = component.get("v.editSearchResultSize");
        component.set("v.editSearchResultSize", !editSearchResultSize);
    },
    
    cancelReSize: function(component, event, helper){
    	 var editSearchResultSize = component.get("v.editSearchResultSize");
    	 var newSearchResultSize = component.get('v.newSearchResultSize');
    	 var oldValue =  component.get('v.oldSearchResultSize');
    	 component.set("v.editSearchResultSize", !editSearchResultSize);
    	 component.set("v.newSearchResultSize",oldValue);
    },
    
    setSearchSize : function(component, event, helper) {
    	var newSearchResultSize = component.get('v.newSearchResultSize'); 
    	       
    	if(event.getParams().keyCode == 189 || event.getParams().keyCode == 45){
    		component.set("v.newSearchResultSize",'');
    	}else{
    	if(newSearchResultSize > 250){
    		newSearchResultSize = 250;    	 
    	}
    	else if(newSearchResultSize == 0 ){
    		newSearchResultSize = 1;
    	}else if(newSearchResultSize < 0){
    		component.set("v.newSearchResultSize",'');
    	}
    	
    	component.set("v.newSearchResultSize",newSearchResultSize);
    	}
    }    
   
})