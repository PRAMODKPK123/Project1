public class AccountUpdate
{
    public static set<id> setContact_Id=new set<id>();
    public static list<Contact>lstcontact=new list<contact>();
    public static list<Account>lstupadteAccount=new list<Account>();
    public static void accUpdateRecords(list<Contact> lstContacts)
    {
        for(Contact con:lstContacts)
       
        {
            setContact_Id.add(con.AccountId);
        }
       
        list<Account> lstAcc=[select id,name,Email__c from Account where  Id =: setContact_Id];
       
        for(contact contact:lstContacts)
        {
            for(Account acc:lstAcc)
           
            {     
                    acc.Email__c=contact.Email;
                    lstupadteAccount.add(acc);
                
            }
           
        }
        if(lstupadteAccount.size()>0)
        {
        update lstupadteAccount;
        }
    }
   
      
   
}