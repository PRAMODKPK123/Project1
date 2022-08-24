@istest
public class LeadinsertingTest {

    public static TestMethod void insertingl(){
        
        lead l = new lead();
        
       l.FirstName = 'sunil';
        l.LastName = 'ukey';
        l.Company = 'Fake Company';
        test.starttest(); 
        Leadinserting.inserting(5);
        insert l;
        test.stopTest();
    } 
}