@istest
public class closedopptriggertest {

   testmethod public static void test(){
    list<opportunity> lopps = new list<Opportunity>();
        opportunity opps = new Opportunity();

    task t = new task();
    for(integer i=0;i<200;i++){
        opps.Name = 'Test';
        opps.CloseDate = system.today();
        opps.StageName = 'Closed Won';
        t.WhatId = opps.id;
        t.Subject =  'Follow Up Test Task';
        lopps.add(opps);
    }
       insert lopps;
}}