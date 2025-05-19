trigger ContactTrigger on Contact (before insert) {
	if(Trigger.new == null && Trigger.new.isEmpty())
        return;
    
    if(Trigger.isBefore && Trigger.isInsert){
        ContactTriggerHandler.duplicateEmail(Trigger.new);
        
    }
}
