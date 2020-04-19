({
	getValueFromApplicationEvent : function(cmp, event) {
var ShowResultValue = event.getParam("pass_result");
// set the handler attributes based on event data
cmp.set("v.Get_Result", ShowResultValue);
}
})