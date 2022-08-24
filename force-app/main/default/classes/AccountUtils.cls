public class AccountUtils {

    public static list<Account> accountsByState(string x){
        
        list<Account> accs = new list<Account>();
        
        accs = [select id,Name from Account where billingState =:x];
        
        return accs;
    }
}