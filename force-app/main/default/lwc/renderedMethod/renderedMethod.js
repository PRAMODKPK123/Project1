import { LightningElement } from 'lwc';
import signinTemplate from './signinTemplate.html';
import signupTemplate from './signupTemplate.html';
import renderMethod from './renderedMethod.html'
export default class RenderedMethod extends LightningElement {

    selectedButton = ''
    render(){
        return this.selectedButton === 'Signin' ? signinTemplate :
                this.selectedButton === 'Signup' ? signupTemplate :
                renderMethod
    }

    handleClick(event){
        this.selectedButton = event.target.label
    }

    submitHandler(event){
        console.log(`${event.target.label} Submit Successfully !!!`)
    }
}