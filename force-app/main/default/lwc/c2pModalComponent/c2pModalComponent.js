import { LightningElement } from 'lwc';

export default class C2pModalComponent extends LightningElement {

    closeHandler(){
        const newEvent = new CustomEvent('close',
        {
            detail:"Modal Closed Successfully !!!"
            
        }
        )
        this.dispatchEvent(newEvent);
    }

    footerHandler()
    {
        console.log('Footer Handler called from bubbling')
    }
}