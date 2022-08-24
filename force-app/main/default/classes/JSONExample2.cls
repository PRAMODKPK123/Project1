public class JSONExample2 {
   
    public string result1{get;set;}
        public string result2{get;set;}
    
    public JSONExample2()
    {
        student std = new student();
        std.name = 'pramod';
        std.branch = 'CSE';
        result1 = system.JSON.serialize(std);
        result2 = system.JSON.serialize(std,true);
    }
}