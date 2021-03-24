trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    List<Task> taskToCreate=new List<Task>();
    for(Opportunity opp:Trigger.New){
        if(opp.StageName=='Closed Won'){
            Task taskInstance=new Task();
            taskInstance.WhatId=opp.Id;
            taskInstance.Subject='Follow Up Test Task';
            taskToCreate.add(taskInstance);
        }
    }
    insert taskToCreate;

}