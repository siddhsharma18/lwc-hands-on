({
	fireApplicationEvent : function(component, event, helper) {
        var event = $A.get('e.c:ApplicationEvent');
        event.setParam('message','[Component c Message]');
        event.fire();
	},
    handleApplicationEvent : function(component, event, helper) {
        var message = event.getParam('message');
        console.log('Component c event handler : ', message);
	},
    fireComponentEvent : function(component, event, helper) {
        var event = component.getEvent('componentEvent');
        event.setParam('message','[Component C Message]');
        event.fire();
	},
    handleComponentEvent : function(component, event, helper) {
        var message = event.getParam('message');
        console.log('Component c event handler : ', message);
	},
})