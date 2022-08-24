public with sharing class AccountHandler {
   /* public static void CreateNewOpportunity(List<Account> accts) {
        for (Account a : accts) {
            Opportunity opp = new Opportunity();
            opp.Name = a.Name + ' Opportunity';
            opp.AccountId = a.Id;
            opp.StageName = 'Prospecting';
            opp.CloseDate = System.Today().addMonths(1);
            insert opp;
        }
    }*/
    
    public static void insertAccount(Integer noOfNewAcc)
    {
        list<Account> addAccounts = new list<Account>();
        integer n = 1;
        
        while (n<=noOfNewAcc)
        {
            Account Acc = new Account();
            Acc.Name = 'Acme Inc' +n;
			Acc.AccountNumber = 'A000'+n;
            addAccounts.add(Acc);
            n++;
        }
        
        insert addAccounts;
    }
}