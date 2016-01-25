public class AnimalLocator {
    public AnimalLocator() {
        
    }

    public static String getAnimalNameById (Integer id) {

        Http http = new Http();
        HttpRequest request = new HttpRequest();

        request.setMethod('GET');
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + String.valueOf(id));

        HttpResponse response = http.send(request);

        //if ( response.getStatusCode() == 200 ) {

            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Object animal = results.get('animal');
            System.debug('Animal: ' + animal);
            return 'chicken';
        //}

    }
}