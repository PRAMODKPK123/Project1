import { LightningElement } from 'lwc';
import TOMIMAGESTATIC from '@salesforce/resourceUrl/TomImage';
export default class DisplayImageOnButton extends LightningElement {
  
  tomImage= TOMIMAGESTATIC;
  isTom = false;
  buttonLabel;
  handleClick(){
   // this.isTom = !this.isTom;
   alert('Inside handleClick');
    this.buttonLabel =  TOMIMAGESTATIC;//this.tomImage;
  }

}