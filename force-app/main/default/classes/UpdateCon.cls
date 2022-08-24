public class UpdateCon {
   
   public static void updateacc(list<contact> lcon){
       Set<Id>  accId = new Set<Id>();
       List<Account> lstAccount = new List<Account>();
       Map<Id,String> mapAccounTidContactEmail = new Map<Id,String>();
       for(contact con:lcon){
           if(con.Email !=null)
           {
             accId.add(con.AccountId);
             mapAccounTidContactEmail.put(con.AccountId,con.Email);
             
           } 
       }
       if(accId.size() > 0)
       {
          for(Account acc : [Select id,Name,EmailId__c from Account where id in : accId])// Select id,Name,EmailId__c from Account where id in ('0016F000035DXqx')
          {
              
              
              Account accUpd = new Account(id=acc.Id);
              accUpd.EmailId__c = mapAccounTidContactEmail.get(acc.Id);
              
             lstAccount.add(accUpd);
          
          }
          update lstAccount;
       
       
       }
       
       
   }
}