public class updateHandleracc
{
  
  public static void oppUpdate(list<Opportunity> lstopp,MAp<Id,Opportunity>  oldOpptyValues)
  {
    On_Off_Switch__c myCS1 = On_Off_Switch__c.getValues('ProspectingtoQualFunctionlaity');
    Boolean myCCVal = myCS1.Active__c;
    if(myCCVal)
    {
        updateHelperacc.oppUpdateHelper(lstopp,oldOpptyValues);
    }
   

    
   



    
  }
    
}