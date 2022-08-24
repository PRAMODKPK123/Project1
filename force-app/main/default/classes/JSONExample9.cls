public class JSONExample9 {
    
    public Map<string,object> resMap{set;get;}
    public string JsonString        {set;get;}
    public string name				{set;get;}
    public decimal salary 			{set;get;}
    
    public JSONExample9(){
        
        resMap = new Map<string,object>();
        JsonString ='{"Name":"Pramod","Phone":8639817779,"City":"Hyderabad","Salary":1000000.00}';
        system.JSONParser Jp = JSON.createParser(JsonString);
        while(Jp.nextToken()!=null)
        {
            resMap.put(Jp.getText(),jp.getCurrentToken()); 
        }
    }
    
    public void getData()
    {
		system.JSONParser Jp = JSON.createParser(JsonString);
        while(Jp.nextToken()!=null)
        if(Jp.getCurrentToken() == system.JSONToken.FIELD_NAME && jp.getText() == 'Name')
            {
                  Jp.nextToken();
                name =  Jp.getText();
            }
    }
	
     public void getInfo()
    {
		system.JSONParser Jp = JSON.createParser(JsonString);
        while(Jp.nextToken()!=null)
        if(Jp.getCurrentToken() == system.JSONToken.FIELD_NAME && jp.getText() == 'salary')
            {
                  Jp.nextToken();
                  salary = (decimal)Jp.getDecimalValue();
            }
    }

}