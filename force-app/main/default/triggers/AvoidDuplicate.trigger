trigger AvoidDuplicate on contact (before insert,before update)
{
   set<String> setEmail = new set<String>();
   set<String> setExistingEmail = new set<String>();

   //Add alll email in set to fetch related existing records
   for(Contact con : Trigger.new)
   {
          //setEmail.add(con.email);

    }

   // get all records in database.
    for(Contact con : [select email from contact where email in : setEmail])
   {
          //setExistingEmail.add(con.email);
    }

   //compare and add error if already exist
   if(Trigger.isInsert||Trigger.isUpdate)
     for(contact a:trigger.new)
     {
         if(setExistingEmail.contains(a.email))
        {
                // a.Email.adderror('This email already exists');
          }
     }
}