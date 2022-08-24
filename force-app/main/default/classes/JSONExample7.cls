public class JSONExample7 {

    public string accName{get;set;}
    public string phoneNum{get;set;}
    public string JsonString{get;set;}
    
    public void create()
    {
        system.JSONGenerator Jp = JSON.createGenerator(true);
        Jp.writeStartObject();
        Jp.writeFieldName('Status');
        try{
            Account a = new Account(Name = accName,Phone = phoneNum);
            insert a;
            Jp.writeString('Success');
            Jp.writeIdField('Account ID', a.id);
        }catch(Exception e)
        {
            Jp.writeString('Failed');
            Jp.writeString('Account Insertion Failed');
        }
       Jp.writeEndObject();
       JsonString = Jp.getAsString();
        
    }
}