public class Leadinserting {
    
    public static void inserting(integer j){
        
        lead l1 = new lead();
                list<lead> l2 = new list<lead>();

        //for(lead l1:l){
            for(integer i=0;i<j;i++){
                l1.FirstName = 'pramod' +j;
                l1.LastName = 'testing' +j;
                l1.Company = 'Nucleus Comercial Finance' +j;
                l2.add(l1);
                system.debug('Inerting lead' +l2);
            }
            insert l2;
            
       // }
        
    }
}