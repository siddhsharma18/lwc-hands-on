global  class createAccount {
	
	webservice static string createAccount(string name,string phone,string city){
		
		Account a = new account();
		
		a.name = name;
		a.phone = phone;
		a.billingcity = city;
		insert a;
		
		if(a.id != null){
			return 'success';
		}else{
			return 'Fail';
			
		}
	}
    
}