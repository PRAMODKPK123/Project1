public class updateHelperacc
{

   public static void oppUpdateHelper(list<Opportunity> lstopp,MAp<Id,Opportunity>  oldOpptyValues)
  {
  
	
	  
				set<id> oppid = new set<id>();
				list<Account> lstacc = new list<Account>();
				Map<id,string> mapaccountidoppstage = new Map<id,string>();
				for(opportunity opp:lstopp) // lopp will be run only once bcoz we are inserting only 1 record thrugh UI.
				{
					System.debug('########### prmod test ');
				  if(opp.StageName == System.Label.Qualification_Value && oldOpptyValues.get(opp.Id).StageName == 'Prospecting')
				  {
				  
				   // oppid.add(opp.Accountid);
					mapaccountidoppstage.put(opp.AccountId,opp.stageName);
				  }
					
				}
					if(oppid.size()>0)
					{
							for(Account acc:[select id,AnnualRevenue from Account where Id in :mapaccountidoppstage.keyset()])//Returns a set that contains all of the keys in the map
							{
								system.debug('acc'+acc);
								Account accnew=new Account(id=acc.id);

								accnew.AnnualRevenue = 2000000.00;
								lstacc.add(accnew);
							}
							
							
							if(!lstacc.IsEmpty())
							update lstacc;
					}
	
	
  
  
  }




  
}