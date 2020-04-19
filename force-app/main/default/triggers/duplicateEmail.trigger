trigger duplicateEmail on Contact (before insert, before update) {
system.debug('see trigger new'+trigger.new);
set<string> emailValues = new set<string>();
	for(contact c: trigger.new){
	 	if(c.email!=null){
	 		if(trigger.isUpdate){
		  			if(c.email!=trigger.oldmap.get(c.id).email){
		   	emailValues.add(c.email);
		  }	    
	 }
	 else	
	   emailValues.add(c.email);
	 }
		
	 }
		if(!emailValues.isEmpty()){
			list<contact> conlist =[select id from contact where email in :emailvalues];
					if(conlist.size()>0){
	  trigger.new[0].email.adderror('Duplicate value exists');
	}
  }	 
     
}