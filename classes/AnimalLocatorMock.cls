global class AnimalLocatorMock implements HttpCalloutMock {
	global HttpResponse respond(HttpRequest request) {
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setBody('{"animals": ["majestic badger", "fluffy bunny", "scary bear", "chicken", "mighty moose"]}');
            response.setHeader('Content-Type', 'application/json');
            return response;
        }
}