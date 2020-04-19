trigger test on PalindromeCheck__c (after insert) {
check_class.palindeome_check(trigger.new);
}