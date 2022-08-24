trigger AccountTrigger on Account (after update) {
    
   
    
    if(trigger.isupdate && trigger.isafter)
    {
        //Added by pramod 
        UpdateContactFromAccount.conUpdate(trigger.new);
    }
}