public class ConstructorOverLoading {
    integer value1;
    integer value2;
    
    public ConstructorOverloading(){
      value1 = 10;
      value2 = 20;
      System.debug('Inside 1st Constructor');
    }
    public ConstructorOverLoading(integer a){
        value1= a;
    system.debug('inside 2nd constructor');          
    }
    
    public ConstructorOverLoading(integer a, integer b){
        value1=a;
        value2=b;
    system.debug('inside 3rd constructor');    
    }

    public void display(){
        
        System.debug('value1='+value1);
        System.debug('value2='+value2);
        
    }
}