import { LightningElement ,track} from 'lwc';

export default class DataBind extends LightningElement {

 @track dynamicGreeting = 'World';
  
  callingMethodFromHtml(event)
  {
    this.dynamicGreeting = event.target.value;
  }

}