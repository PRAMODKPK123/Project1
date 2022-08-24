public class UpdateContacts {


    public static void conUpdate(list<Account> lstAcc)
    {
        set<ID> setAccountID = new set<ID>();
        
        for(Account Acc : lstACC)
        {
            setAccountID.add(Acc.id);
        }
        
        list<Contact> updatecon = new list<Contact>();
        list<Contact> lstCon = [select id,Email,Currency_Contact__c from Contact where AccountID IN: setAccountID];
        
       for(Account A : lstACC)
       {
           
            for(Contact con : lstCon)
            {
               con.Email = A.Email__C; 
               con.Currency_Contact__c = A.Currency_Test__c;
               updatecon.add(con);
            }
           
         }
         
         
           if(updatecon.size()>0)
            {
                update updatecon;
            }
    }
}