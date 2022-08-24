public class ContactSearch {

    public static list<contact> searchForContacts(string Lastname,string Postcode){
   list<contact> Lc=[SELECT Id,Name FROM Contact WHERE LastName=:Lastname AND MailingPostalCode=:Postcode];
       
      
         return LC;   
    }
}