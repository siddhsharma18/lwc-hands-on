public class c5{

 
list<Account> direct_account = [select name, type, industry, phone , fax from account where type='customer - direct'];

list<Account> channel_account = [select name, type, industry, phone , fax from account where type='customer - channel'];


public list<Account> getDirectActs(){
return direct_account;
}

public list<Account> getChannelActs(){
return channel_account;
}

public pageReference tab(){
 return page.VF11;
}

public pageReference section(){
return page.VF10;
}

}