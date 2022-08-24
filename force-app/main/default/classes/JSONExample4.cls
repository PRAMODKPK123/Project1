public class JSONExample4 {
 	
    public student std{get;set;}
    
    public JSONExample4()
    {
        string JSONstring = '{"Name":"Pramod","Phone":1234,"Email":"pramod@gmail.com"}';
        std = (student)system.JSON.deserialize(jsonString,student.class);
    }
    
}