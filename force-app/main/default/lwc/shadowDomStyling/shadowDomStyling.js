import { LightningElement } from 'lwc';

export default class ShadowDomStyling extends LightningElement {
    loaded = false
    renderedCallback(){
        if(this.loaded) return
        const style = document.createElement('style')
        //<style> backend style tag will be created as we are accessing dom inside a dom
        style.innerText = `c-shadow-dom-styling .slds-button{
            border: red;
            background: yellowgreen;
            color: brown;
        } `
        this.template.querySelector('lightning-button').appendChild(style)
        this.loaded = true
    }
}