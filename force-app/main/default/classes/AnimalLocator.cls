public class AnimalLocator{
    public static String getAnimalNameById(Integer x){
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + x);
        req.setMethod('GET');
        
        HttpResponse response = http.send(req);
        string strResp='';
        system.debug('Response status code==='+response.getStatusCode());
        system.debug('Response Body===='+response.getBody());
            if (response.getStatusCode() == 200) {
        Map<String, Object> results = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
        Map<String, Object> animal = (Map<String, Object>) results.get('animal');
        strResp= string.valueOf(animal.get('name'));
		}
        return strResp;
    }
}