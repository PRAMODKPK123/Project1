public class UpdateContactNameOnAccount {

    
    public static void updateAccountName(list<Contact> lstcon)
    {
        set<id> Accid = new set<id>();
        Map<id,string> mapAccidConid = new Map<id,string>();
        
        for(contact con: lstcon)
        {
            if(con.Name != Null)
            {
                Accid.add(con.Accountid);
                mapAccidConid.put(con.AccountId,con.Name);
            }
        }
        if(Accid.size()>0)
        {
            for(Account acc:[select id,Contact_Name__c from Account where id =:Accid])
            {
              Account acc1 = new Account(id=acc.id);
              
            }
        }
        
    }
}