public class Map_UseCase {
    
    public static void MapScenarios(list<contact> lstcon)
    {
    set<id> setAccountId = new set<id>();
     for(Contact con : lstcon)
     {
         setAccountId.add(con.AccountID);
     }
        list<Contact> lsc = new list<Contact>();
        Map<id,List<contact>> mapID_lstCon = new map<id,list<Contact>>();
        for(Contact C : [select id,Name,Account.Name,AccountID from contact where AccountID IN : setAccountId])
        {
            //system.debug('Inside loop');
            if(!mapID_lstCon.containsKey(c.AccountID))
            {
                lsc.add(c);
                mapID_lstCon.put(c.AccountID,lsc);
                system.debug('Inside if doesnt contain AccountID list for 1st Time');
            }
            else {
                mapID_lstCon.get(c.AccountID);
                lsc.add(c);
                mapID_lstCon.put(c.AccountID,lsc);
                system.debug('if it contains AccountID ');
            }
            
        }
        system.debug('mapID_lstCon'+mapID_lstCon);
        
        for(id AccID : mapID_lstCon.keyset())
        {
            mapID_lstCon.get(AccID);
            for(contact con : mapID_lstCon.get(AccID))
            {
                string Name = con.Name;
                //conlist.add(con);
                // mapID_lstCon.get(con);
                system.debug('All the Contacts'+mapID_lstCon.values());
            }

            system.debug('Account IDs>>>>>>>>>>>'+mapID_lstCon);
        }
        list<contact> conlist = new list<contact>();
                
        /*
		public static list<CFF_calculate__c> updatelstcff=new list<CFF_calculate__c>();
    public static map<id,list<CFF_calculate__c>> mapId_lstCffcal=new map<id,list<CFF_calculate__c>>();
    public static map<id,Credit_Writeup__c> mapid_cffcal=new map<id,Credit_Writeup__c>();
    public static set<id> setCwID=new set<id>();
		
      
        for(Credit_Writeup__c cw:lstCw)
        {
            setCwID.add(cw.id);
            mapid_cffcal.put(cw.id,cw);
        }
        
        list<CFF_calculate__c> lstCffcal=[select id,Origin_Reference__c,CW_ID__c,Credit_Writeup__c
                                          from CFF_calculate__c 
                                          where Credit_Writeup__c IN :setCwID
                                          AND Monthly_Payout_Date__c>=TODAY];
        
        
        for(CFF_calculate__c cff:lstCffcal)
        {
            if(mapId_lstCffcal.containsKey(cff.Credit_Writeup__c))
            {
                
              mapId_lstCffcal.get(cff.Credit_Writeup__c).add(cff);                
                
            }
            else
            {
                mapId_lstCffcal.put(cff.Credit_Writeup__c,new list<CFF_calculate__c>{cff});  
            }
        }
        
        for(id cwid : mapid_cffcal.keySet())
        {
            if(mapid_cffcal.get(cwid).Payment_Reference__c!=null)
            {
                system.debug('mapid_cffcal.get(cwid)>>>>>>>>>>'+mapid_cffcal.get(cwid));
                if(mapId_lstCffcal.get(cwid)!=null)
                {
                    system.debug('mapId_lstCffcal.get(cwid)>>>>>>>>>>'+mapId_lstCffcal.get(cwid));
                   list<CFF_calculate__c> lstPaymentcycle=mapId_lstCffcal.get(cwid);
                    
                    for(CFF_calculate__c paymentCycle:lstPaymentcycle)
                    {
                        paymentCycle.Origin_Reference__c=paymentCycle.CW_ID__c+mapid_cffcal.get(cwid).Payment_Reference__c;
                        updatelstcff.add(paymentCycle);
                    }
                    
                }
            }


		 */
        
        /*
		// Map Examples 
		// create a map with city as key state as value
		map<string,string> mapCityName = new map<string,string>();

		// create a map with age as key student name  as value
		 
		map<integer,string> mapInteger_Name = new map<integer,string>();


		 create a map with AccountName as key Account  as value
		map<string,account> mapCityName = new map<string,account>();



		create a map with Accountid as key Account  as value
		map<id,account> mapID_ACCName = new map<id,account>();

		create a map with Account name as key list of contacts  as value
		map<string,list<contact>> mapCityName = new map<string,list<contact>>();

		create a map with Accountid as key list of contacts  as value
		map<id,list<contact>> mapCityName = new map<id,list<contact>>();
			
		Methods to new element to the list

		To insert the data into the map
		put(key,value);

		Use Case : 
		1)Write a soql and fetch all the accounts .

		list<Account> lstAcc = [select id from Account];
		2) create a map with account names as key and phone number as value.

		map<string,string> mapAccName_Phone = new map<string,string>();
		3) Based on the data available insert the data into map

for(Account a : lstAcc)
{
	mapAccName_Phone.put(a.Name,a.Phone);
}
debug [DEBUG|mapName_Phone>>>>>{Burlington Textiles Corp of America=(336) 222-7000, Edge Communications=(512) 757-6000,
		GenePoint=(650) 867-3450, United Oil & Gas, Singapore=(650) 450-8810, 
		United Oil & Gas, UK=+44 191 4956203}]
//
list<Account> lstAcc = [select id,Name,Phone from Account limit 5];

map<string,string> mapName_Phone = new map<string,string>();

for(Account a : lstAcc)
{
    mapName_Phone.put(a.Name,a.Phone);
}

system.debug('mapName_Phone>>>>>'+mapName_Phone);
//

Use Case 2 :
1)Write a soql and fetch all the accounts .
2)create a map with account ids as key and account name as value.
3)Insert the data.

                list<Account> lstAcc = [select id,Name,Phone from Account limit 5];
                
                map<id,string> mapACCId_Name = new map<id,string>();
                
                for(Account a : lstAcc)
                {
                    mapACCId_Name.put(a.id,a.name);
                }
                
                system.debug('mapACCId_Name>>>>>'+mapACCId_Name);


Use Case 3 :
1)Write a soql and fetch all the accounts .
2)create a map with account ids as key and account  as value.
3)Insert the data.

		list<Account> lstAcc = [select id,Name,Phone from Account limit 5];
map<id,Account> mapACCId_ACC = new map<id,Account>();
 for(Account a : lstAcc)
    {
        mapACCId_ACC.put(a.id,a);
    }
 system.debug('mapACCId_ACC>>>>>'+mapACCId_ACC);



Use Case 4 :
1)Write a soql and fetch all the accounts .
2)create a map with account ids as key and account owner as value.
3)Insert the data.

    list<Account> lstAcc = [select id,Name,Phone,Owner.Name from Account limit 5];
    map<id,string > mapACCId_OwnerName = new map<id,string>();
    for(Account a : lstAcc)
        {
        	mapACCId_OwnerName.put(a.id,a.Owner.Name );
        }
    system.debug('mapACCId_OwnerName>>>>>'+mapACCId_OwnerName);




b) get(key)

1) This will return the value associalted with the key.

Example : map<string,string> mapState_City = new map<string,string>();

        mapState_City.put('Maharashtra','Mumbai');
        mapState_City.put('Telangana','Hyderabad');
        mapState_City.put('Karnataka','Bangalore');

        system.debug(mapState_City);
        string a = mapState_City.get('Maharashtra');
        system.debug('Expected Mumbai'+a);
        
        string b = mapState_City.get('Telangana');
        system.debug('Expected Telangana'+b);
        

C) Keyset()

1)This will return set of all the keys.


Example : 

map<string,string> mapState_City = new map<string,string>();

        mapState_City.put('Maharashtra','Mumbai');
        mapState_City.put('Telangana','Hyderabad');
        mapState_City.put('Karnataka','Bangalore');

        system.debug(mapState_City);

		
        set<string> keysets = mapState_City.keyset();
        system.debug('keysets'+keysets);
        

D) Values()

1)This will return all the list of values associated to keys

	Example : 

		map<string,string> mapState_City = new map<string,string>();

        mapState_City.put('Maharashtra','Mumbai');
        mapState_City.put('Telangana','Hyderabad');
        mapState_City.put('Karnataka','Bangalore');

        system.debug(mapState_City);

		
        list<string> Values = mapState_City.Values();
        system.debug('Values'+Values);




E) Containskey(key)

1)This will return true if the map contains given key.

		

Example: 

	map<string,string> mapState_City = new map<string,string>();

        mapState_City.put('Maharashtra','Mumbai');
        mapState_City.put('Telangana','Hyderabad');
        mapState_City.put('Karnataka','Bangalore');

        system.debug(mapState_City);
		boolean a = mapState_City.containskey('Maharashtra');
        system.debug('containskey for Maharashtra'+a);
        
        boolean b= mapState_City.containskey('Telangana');
        system.debug('containskey for Telangana'+b);
        


F)isEmpty()

1)This will return true if map is empty

G)size()

H)Clear()

		Use Cases : 

		1) Write a soql query to fetch all the contacts
		2) Create a map with first name as key and phone numbers as value
		3) Fetch all firstNames
		4) Fetch all phone numbers
		5) Check Map Contains Pramod
		6) Check Map Contains Kumar  


        list<contact> lstcon = [select id,firstNames,Phone  from contact where firstNames = 'Pramod 'limit 5];
        map<string,string > mapFN_Phone = new map<string,string>();
        for(contact c : lstcon)
            {
             mapFN_Phone.put(c.firstNames,c.Phone);
            }
        
        boolean a = mapFN_Phone.containskey('Pramod');
        boolean b = mapFN_Phone.containskey('Kumar');
        
        system.debug('containskey for Pramod'+a);
        system.debug('containskey for Kumar'+b);



UseCase 2:

1) Fetch all the Opportunities from database
2) Create a map with Opportunities ID  as key and Opportunities as value
3) Fetch all Opportunities ID
4) Fetch all Opportunities
5) All the Opportunities whose stagename is closed won get their names.
        

*/
        
        
    }

}