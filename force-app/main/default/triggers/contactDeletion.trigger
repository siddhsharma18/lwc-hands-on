trigger contactDeletion on Account (before Insert) {
    List<string> myNames = new List<string>();
        for(Account a:trigger.new){
            myNames.add(a.name);
        }
List<contact> MyContacts = [select id,name from contact where name in:myNames];
delete myContacts;
}