public class c3{
    list<Account> acc= [select name ,type, Industry, phone ,Fax from Account ];
    
    public list<Account> getacc(){
        return acc;
    }

}