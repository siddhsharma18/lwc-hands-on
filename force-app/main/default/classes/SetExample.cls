public class SetExample {
    
    public set<String> names{get;set;}
	
    public SetExample(){
        names = new set<String>();
        
        names.add('one');
      	names.add('two');
        names.add('three');
        names.add('four');
        names.add('sam');
                
    }
}