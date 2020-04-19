trigger AccountInsert on Account (before Insert)
 {
for(Account a:trigger.new)
        {
        List<Account> newAccount =[Select id,name from Account where name=:a.name];
       
            if(newAccount.size()>0)
            {
                a.name.addError('name with this account is Existing');
            }
    }
}