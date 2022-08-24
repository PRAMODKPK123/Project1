trigger ConinsertAccupdate on Contact (before insert,after update) {

    if(trigger.isbefore && trigger.isinsert){
        UpdateCon.updateacc(Trigger.new);
    }
     if(trigger.isbefore && trigger.isupdate){
        UpdateCon.updateacc(Trigger.new);
    }
    
    if(trigger.isafter && trigger.isupdate){
        UpdateContactAcc.conpdateAcc(Trigger.new);
    }
    
}