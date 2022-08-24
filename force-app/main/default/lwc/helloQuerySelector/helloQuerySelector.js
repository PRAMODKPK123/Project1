import { LightningElement } from 'lwc';

export default class HelloQuerySelector extends LightningElement {
    usernames=["Pramod","Manisha","Vivaan Patel"]
    fetchDetailsHandler(event){
        const elem = this.template.querySelector('h1')
        elem.style.border = "1px solid blue";
        console.log(elem.innerText)


        const userNamesElem = this.template.querySelectorAll('.name')
        //convert the userNamesElem from Dom to Array
        Array.from(userNamesElem).forEach(item => {
            console.log(item.innerText)
            item.setAttribute("title",item.innerText)
        });


        ///lwc:dom="manual" demo
        const childElem = this.template.querySelector('.child')
        childElem.innerHTML = '<p>I am the child <p>'
    }
}