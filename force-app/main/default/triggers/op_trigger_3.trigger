trigger op_trigger_3 on Opportunity (before Insert , before update) {
//op_trigger_class op = new op_trigger_class();
op_trigger_class.op_amount_check(trigger.new);

}