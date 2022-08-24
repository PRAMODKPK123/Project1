public class PostCodeFunder
{
     public static void getPost(string PostCode){
      
        //integer Postcode = 00000006;
string endpoint='https://api.companieshouse.gov.uk/company/'+PostCode;
        HttpRequest req = new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod('GET');
        //Basic bXlfYXBpX2tleTo=
        //req.setHeader('Content-Type', 'text/html');
       // req.setHeader('Authorization', 'Bearer ' + UserInfo.getSessionID());
        //req.setHeader('api-key','bXlfYXBpX2tleTo=');
        req.setHeader('Authorization', 'Basic bXlfYXBpX2tleTo=');
        Http http = new Http();
        HTTPResponse res = http.send(req);
        Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
        System.debug(res.getBody());
        
      }
      
}