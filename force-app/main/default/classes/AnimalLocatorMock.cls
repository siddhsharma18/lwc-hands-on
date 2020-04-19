@isTest
global class AnimalLocatorMock implements HttpCalloutMock{
    global HTTPResponse respond(HTTPRequest request){
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"animal":{"ID":1,"Name":"Cow","eats":"grass"}}');
        response.setStatusCode(200);
        return response;
    }

}