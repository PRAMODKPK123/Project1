public class AccountUtility {

    public static void viewAnnualRevenue()
    {
        list<Account> accountsList = new list<Account>();
        string acctRev = '';
        accountsList = [select id,Name,AnnualRevenue from Account];
        
        for(Account Acc : accountsList)
        {
           acctRev = Acc.Name +':'+Acc.AnnualRevenue ;
            system.debug('acctRev >>>'+acctRev );
        }
    }
}