public class SOQLExample1 {
    public list<account> accs {get;set;}
    public SOQLExample1(){
    	accs=[select id,name,industry from account];
    }  
    
    public void getoffset(){
        accs=[select id,name,industry from account offset 5];
        
    }
    public void getLimit(){
        accs= [select id, name, industry from account limit 5];
    }
}