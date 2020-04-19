public class c6{

list<account> acts;

public list<account> getacts(){
return acts;
}

public pagereference channel(){
acts= [ select name, type, industry, phone, fax from account where type='customer - channel'];
return null;
}


public pagereference direct(){
acts= [ select name, type, industry, phone, fax from account where type='customer - direct'];
return null;
}

}