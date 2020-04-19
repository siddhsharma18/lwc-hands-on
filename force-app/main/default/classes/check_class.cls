public class check_class{
    public static void palindeome_check( list<PalindromeCheck__c> str){
    list<PalindromeCheck__c> strNewList = new list<PalindromeCheck__c>();
    strNewList = [Select id,Name,Is_Palindeome__c from PalindromeCheck__c where id in : str];
    list<PalindromeCheck__c> tobeupdated = new list< PalindromeCheck__c>();
          for( PalindromeCheck__c s: strNewList ){
          string reverse = s.Name.reverse();
          if(reverse.equals(s.name)){
              s.Is_Palindeome__c= true;
              s.RecordTypeID='01228000000OPxf';
             tobeupdated.add(s);
          }
              else{
                  s.Is_Palindeome__c= false;
              }
          }
    if(!tobeupdated.isEmpty()){
        update tobeupdated ;
    }
    }
    }