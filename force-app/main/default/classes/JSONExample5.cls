public class JSONExample5 {
    
    public Map<string,Object> resMap{set;get;}
    
    
    public JSONExample5()
    {
        string JSONstring =  '{"Name":"Pramod","Phone":1234,"Email":"pramod@gmail.com","city" :"Hyderabad"}';
        resMap = (Map<string,Object>)system.JSON.deserializeUntyped(JSONString);
    }
    

}