public class FutureExample {

    public static void methodName(set<id> setContactID)
    {
        list<Contact> lstCon = [select id,FirstName,LastName from Contact where ID IN :setContactID ];
    }
}