trigger AccountAddressTrigger on Account (before insert,before update) {

    //Account acc = new Account();
        list<Account> lacc = new list<Account>();
    for(Account acc:trigger.new){
    if((acc.Match_Billing_Address__c == true) && (acc.BillingPostalCode!=Null)){
        acc.BillingPostalCode = acc.ShippingPostalCode;
            lacc.add(acc);

    }}
}