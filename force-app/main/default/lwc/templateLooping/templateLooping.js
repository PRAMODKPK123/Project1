import { LightningElement } from 'lwc';

export default class TemplateLooping extends LightningElement {
    carList = ["Audi","BMW","Tata","Maruti","Hyundai"]


    ceoList = [{
        id:1,
        company:"Google",
        name:"Sundar Pichai"
    },
    {
        id:2,
        company:"Facebook",
        name:"Mark Jukenberg"
    },
    {
        id:3,
        company:"Apple",
        name:"Tim Cook"
    },
    {
        id:4,
        company:"Amazon",
        name:"Jeff Bezos"
    }]
}