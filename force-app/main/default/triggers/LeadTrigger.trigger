trigger LeadTrigger on Lead (before insert,before update,after insert,after update) {
    
    if(trigger.Isbefore && trigger.Isinsert)
    {
        
        system.debug('Inside Before Insert');
    }
    
    if(trigger.Isbefore && trigger.Isupdate)
    {
    
            system.debug('Inside Before update');
    }
    
    if(trigger.Isafter && trigger.Isinsert)
    {
            system.debug('Inside After Insert');
    }
    
    if(trigger.Isafter && trigger.Isupdate)
    {
            system.debug('Inside After update');
    }
}