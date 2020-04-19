({
	fireApplicationEvent : function(component, event, helper) {
        //alert('fireApplicationEvent');
        var event = $A.get('e.c:ApplicationEvent');
        event.setParam('message','[Component A Message]');
        event.fire();
        //alert('fireApplicationEvent');
	},
    handleApplicationEvent : function(component, event, helper) {
        var message = event.getParam('message');
        console.log('Component A event handler : ', message);
	},
    fireComponentEvent : function(component, event, helper) {
        var event = component.getEvent('componentEvent');
        event.setParam('message','[Component A Message]');
        event.fire();
	},
    handleComponentEvent : function(component, event, helper) {
        var message = event.getParam('message');
        console.log('Component A event handler : ', message);
        window.setTimeout(
            $A.getCallback(function() {
               	console.log('Component A event handler : CallOut ', message);
                event.stopPropagation();
            }), 5000
        );
	},
})