public class sample
{
    public List<Contact> con {get;set;}
    public List<Account> acc {get;set;}    
    
    public void fetch()
    {
        con = [SELECT Name,Phone FROM Contact where Phone != Null Limit 10];
        acc = [SELECT Name,Phone FROM Account where Phone != Null Limit 10];        
    }       
}