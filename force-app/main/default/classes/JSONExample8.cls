public class JSONExample8 {
    public string searchText{get;set;}
    public string JSONString{get;set;}

    public void search()
    {
        list<Account> lstacc = [select Name from Account where Industry =: searchText];
        system.JSONGenerator Jp = JSON.createGenerator(true);
        Jp.writeStartObject();
        Jp.writeFieldName('Status');
        
        if(lstacc.size()>0)
        {
            Jp.writeString('Success');
            Jp.writeNumberField('Count is ',lstacc.size());
            Jp.writeFieldName('Names');
            Jp.writeStartArray();
            for(Account a : lstacc)
            {
                Jp.writestring(a.Name);
                
            }
            Jp.writeEndArray();
           
        }
        else 
        {
            jp.writeString('No Records Found');
            Jp.writeNumberField('Count is ',0);
        }
         JsonString = Jp.getAsString();
        //Jp.writeEndObject();
    }
}