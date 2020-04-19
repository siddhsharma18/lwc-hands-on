({
	fireApplicationEvent : function(component, event, helper) {
        var event = $A.get('e.c:ApplicationEvent');
        event.setParam('message','[Root Application Message]');
        event.fire();
	},
    handleApplicationEvent : function(component, event, helper) {
        var message = event.getParam('message');
        console.log('Application event handler : ', message);
	},
    fireComponentEvent : function(component, event, helper) {
        var event = component.getEvent('componentEvent');
        event.setParam('message','[Root Application Message]');
        event.fire();
	},
    handleComponentEvent : function(component, event, helper) {
        var message = event.getParam('message');
        console.log('Application event handler : ', message);
	},
})