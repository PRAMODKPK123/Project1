import { LightningElement,track } from 'lwc';

export default class ConditionalRendering extends LightningElement {

  @track conditionalLoop = false;

  @track cities = ['Hyderabad','Mumbai','Pune','Bangalore'];
  divShowHandler(event){
    this.conditionalLoop = event.target.checked;
  }
}