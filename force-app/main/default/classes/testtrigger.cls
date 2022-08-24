@istest
public class testtrigger {

    @istest
    public static void triggertest1(){
        
        lead l = new lead();
        l.FirstName = 'sunil';
        l.LastName = 'Ukey';
        l.Company = 'Nucleus Commercial Finance';
        l.Term_Requested__c = 12;
        
        insert l;
        //l.Amount_Requested__c = 10000;
        
    }
    public static void triggertest2(){
        
        lead l1 = new lead();
        l1.FirstName = 'ravi';
        l1.LastName = 'Ukey';
        l1.Company = 'Nucleus Commercial Finance';
        l1.Term_Requested__c = 12;
        insert l1;
        l1.LastName = 'Kumar';
        update l1;
        //l.Amount_Requested__c = 10000;
        
    }
     public static void triggertest3(){
        
        lead l2 = new lead();
        l2.FirstName = 'ravi';
        l2.LastName = 'Ukey';
        l2.Company = 'Nucleus Finance';
        l2.Term_Requested__c = 12;
        
        upsert l2;
        //l.Amount_Requested__c = 10000;
        
    }
}