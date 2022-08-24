import { LightningElement } from 'lwc';

export default class GetterLWC extends LightningElement {
    usersListArr = ["Pramod","Manisha Naag","Vivaan patel","Kiara"]
    num1 = 10
    num2 = 20
    get userList(){
        return this.usersListArr[3].toLocaleUpperCase()
    }

    get multiply(){
        return this.num1 * this.num2
    }
}