public class UpdateContactFromAccount {
    
    public static void conUpdate(list<Account> lstAcc)
    {
        set<id> setAccountID = new set<id>();
        for(Account acc : lstAcc)
        {
           setAccountID.add(acc.id); 
        }
        
        list<Account> listAcc = [select id,Name,(select id,FirstName,LastName from Contacts) from Account where ID IN :setAccountID];
        list<contact> listcon = new list<contact>();
        for(Account Accoun : listAcc)
        {
            for(contact con : Accoun.contacts)
            {
                con.LastName = Accoun.Name;
                listcon.add(con);
            }
        }
        
        if(listcon.size()>0){
            update listcon;
        }
    }

}