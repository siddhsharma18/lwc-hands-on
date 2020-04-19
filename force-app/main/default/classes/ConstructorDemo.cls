public class ConstructorDemo {
    
    integer value1;
    integer value2;
    
    public ConstructorDemo(){
        
        value1=10;
        value2=20;
        
        system.debug('inside ConstructorDemo');
    }
    
    public void display(){
        
        system.debug('value1=' +value1);
        system.debug('value2=' +value2);
    }

}