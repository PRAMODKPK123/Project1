/********************************************
Developed by : Pramod
Date : 19th Jan 2019

Modified by :Pramod

*********************************************/

trigger updateopp on Opportunity (before insert,before update) {

  if(trigger.isbefore && trigger.isinsert){
        //updateHandleracc.oppinsert(Trigger.new);
    }
     if(trigger.isbefore && trigger.isupdate){
        updateHandleracc.oppUpdate(Trigger.new,Trigger.oldMap);
    }
}