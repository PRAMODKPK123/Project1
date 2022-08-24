public class LightningFilterTableController {
    @AuraEnabled
    public static List<Account> getData(){
        return [SELECT id,Name,Industry,Phone FROM Account Limit 20];
    }
    
    @AuraEnabled
    public static void fetchData(string searchName){
        // query
    }
}