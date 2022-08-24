public class DetailButtonController{
    case  cas;
    
        public DetailButtonController(Apexpages.StandardController ctrl) {
            cas= (Case)ctrl.getRecord();
			
 
        }
        public pagereference customSave(){
			
            cas.Final_PVR_Approval__c = true;
            System.debug('Cas1234 ' + cas.Final_PVR_Approval__c);
            update cas;
            
            return new pagereference('/'+ cas.Id);
        }
}