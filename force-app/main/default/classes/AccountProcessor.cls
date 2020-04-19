public class AccountProcessor {

	@future
    public static void countContacts(list<id> accountIds){
        List<Account> accountList = new List<Account>();
        for(id accId: accountIds ){
            Account acc =[select Name from Account where id=:accId];
            acc.Number_of_Contacts__c = [select count() from contact where AccountId =:accId];
            accountList.add(acc);
        }
        update accountList;
    }

}