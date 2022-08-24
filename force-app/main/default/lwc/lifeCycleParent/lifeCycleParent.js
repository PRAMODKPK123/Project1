import { LightningElement } from 'lwc';

export default class LifeCycleParent extends LightningElement {
    childVisible = false;
    constructor(){
        super()
        console.log('Parent Constructor Called')
    }

    connectedCallback(){
        console.log('Parent connectedCallback Called')
    }

    renderedCallback(){
        console.log('Parent renderedCallback Called')
    }
    // name
    // changeHandler(event){
    //     this.name = event.target.value
    // }
    handleClick(){
        this.childVisible = !this.childVisible
    }

    errorCallback(error,stack){
        console.log('error.message'+error.message)
        console.log('stack'+stack)
    }
}