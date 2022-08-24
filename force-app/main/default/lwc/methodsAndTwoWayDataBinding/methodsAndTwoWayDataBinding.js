import { LightningElement,track } from 'lwc';

export default class MethodsAndTwoWayDataBinding extends LightningElement {

    fullName = "Salesforce troop"
    title = "aura"

    changeHandler(event){
        //Add this.title property if we want to access the property
        this.title = event.target.value
    }

    @track address = {
        city:"Hyderabad",
        postcode:"500059",
        country:"India"
    }
    trackHandler(event){
        //Add this.title property if we want to access the property
        this.address.city = event.target.value
        // or without track we can use like below by removing @track decorator
        //this.address = {...this.address,"city":event.target.value}
    }
}