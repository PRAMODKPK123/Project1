public class JSONExample6 {
    public string Jsonstring{set;get;}
    
    public JSONExample6()
    {
        system.JSONGenerator Jp = JSON.createGenerator(true);
        Jp.writeStartObject();
        Jp.writeFieldName('Name');
        Jp.writeString('Pramod Kumar');
        Jp.writeStringField('Branch','CSE');
        Jp.writeFieldName('AGE');
        Jp.writeNumber(30);
        Jp.writeDateField('DOB',system.today());
        Jp.writeEndObject();
        Jsonstring = Jp.getAsString();
    }
}