@istest
public class TestRestrictContactByName {
    @istest static void Restrictmethod(){
        contact c = new contact();
        list<contact> lc = new list<contact>();
        c.FirstName = 'Test';
        c.LastName = 'INVALIDNAME';
        lc.add(c);
        test.startTest();
        
    insert lc;
        test.stopTest();
    }
    
}