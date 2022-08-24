public class UpdateContactAcc {

    Public static void conpdateAcc(list<Contact> lstCon)
    {
        
        set<id> setAccID = new set<id>();
        for(Contact con:lstCon)
        {
            setAccID.add(con.AccountID);
        }
        
        list<Account> lstAcc = [select id,Contact_Department__c from Account where id IN:setAccID];
        list<Account> lsAcc = new list<Account>();
        for(Account Acc :lstAcc)
        {
            for(Contact co :[select id,Department from Contact where AccountId IN :setAccID])
            {
                if(Acc.id != Null)
                {
                    Acc.Contact_Department__c = co.Department;
                    lsAcc.add(Acc);
                }
            }
        }
        
        map<id,Account> mapID_Acc = new map<id,Account>();
        mapID_Acc.putAll(lsAcc);
        if(mapID_Acc.size()>0)//{}
        update mapID_Acc.values();
    }
}