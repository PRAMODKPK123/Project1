public class PropertyUtility  {
	
    public static void newListedProperties()
    {
        string propEmail = '';
        list<property__c> newPropList = new list<property__c>();
        newPropList = [select Name,Broker__r.Email__c,Days_On_Market__c from Property__c where Days_On_Market__c <= 30];
        
        for(Property__c Prop : newPropList)
        {
            propEmail = Prop.Name +':'+ Prop.Broker__r.Email__c;
            system.debug('propEmail>>>>>>>'+propEmail);
        }
    }
}