trigger OrderEventTrigger on Order_Event__e (after insert) {

    list<Task> LstTask = new list<Task>();
    
    for(Order_Event__e event : Trigger.New)
    {
        if(event.Has_Shipped__c == true)
        {
            Task t = new Task();
            t.Priority = 'Medium';
            t.Subject = 'Follow up on shipped order ' + event.Order_Number__c;
            t.OwnerId = event.CreatedById;
            LstTask.add(t);
            
        }
    }
    
    insert LstTask;
}