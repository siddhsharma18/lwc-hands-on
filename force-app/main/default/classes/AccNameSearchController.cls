public class AccNameSearchController {

   public list<account> search{get; set;}
   
    public PageReference searchAccounts() {
        searchAccounts1();
        return null;
    }

public String inputText{get; set;}

public void  searchAccounts1() {
           search = [select name from Account where name=:inputText ];
      }


}