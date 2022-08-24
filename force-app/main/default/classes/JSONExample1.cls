public class JSONExample1 {
    
    public string integerresult {get;set;}
    public string Decimalresult {get;set;}
    public string Accountresult {get;set;}
    public string integerresult1 {get;set;}
    public string Decimalresult1 {get;set;}
    public string Accountresult1 {get;set;}
    //public string integerresult {get;set;}
    
    public JSONExample1()
    {
        integerresult =  System.JSON.serialize(10);
        Decimalresult =  System.JSON.serialize(3200.23);
        Account acc = new Account(Name = 'TCS',Industry = 'Banking');
        AccountResult = System.JSON.serialize(acc);
        
        integerresult1 =  System.JSON.serializePretty(10);
        Decimalresult1 =  System.JSON.serializePretty(3200.23);
        Account acc1 = new Account(Name = 'TCS',Industry = 'Banking');
        AccountResult1 = System.JSON.serializePretty(acc1);
    }    
    
}