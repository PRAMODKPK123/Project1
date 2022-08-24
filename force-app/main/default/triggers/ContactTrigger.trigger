trigger ContactTrigger on Contact (before insert, before update,after Insert,after update) {
    
    //check contacts prior to insert or update for invalid data
    // For (Contact c : Trigger.New) {
    //     if(c.LastName == 'INVALIDNAME') {   //invalidname is invalid
    //         c.AddError('The Last Name "'+c.LastName+'" is not allowed for DML');
    //     }
       //}
         if(trigger.Isbefore && Trigger.IsUpdate){
            Map_UseCase.MapScenarios(trigger.new);}
    
 if(trigger.Isafter && Trigger.IsUpdate){
            AccountUpdate.accUpdateRecords(trigger.new);}

}