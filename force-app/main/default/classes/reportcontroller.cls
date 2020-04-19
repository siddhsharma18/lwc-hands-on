/*public class reportcontroller {
   list<string> mylist = new list<string>();

   public void myclassmethod(){
     map<integer,string> mymap =  new map<integer,string>();
mymap.put(10,'ten');
mymap.put(2,'twenty');
system.debug(mymap.size());
system.debug(mymap.keyset());
system.debug(mymap.values());
system.debug(mymap.get(2));
for(integer i:mymap.keyset())
{
	system.debug('keyset values'+i);
}
for(string i:mymap.values())
{
	system.debug('keyset values'+i);
}
   
   }


}*/

/*list<opportunity> o= [select id, name from opportunity];
if(!o.isEmpty()){
    system.debug('query result'+o);
    system.debug(o.get(o.size()-1));
    list<opportunity> o1 = new list<opportunity>(o);
    system.debug(o1);
}*/

public class reportcontroller {
	public void mysetmothod(){
set<integer> myset= new set<integer>();
     myset.add(10);
     myset.add(100);
     myset.add(20);
     system.debug('set values'+myset);
     if(myset.contains(100))
     {
     	myset.add(5000);
     	system.debug('set values'+myset);
     	}
} 
public void mysoql()
{
	list<opportunity> mylist= new list<opportunity>();
	mylist= [select id,name from opportunity];
	system.debug('myopportunity='+mylist);
}
}