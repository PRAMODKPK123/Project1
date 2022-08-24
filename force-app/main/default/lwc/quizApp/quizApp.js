import { LightningElement } from 'lwc';

export default class QuizApp extends LightningElement {
    myQuestions = [
        {
            id:"Question1",
            Question:"Which one of the following is not a template loop?",
            answers:{
                a:"for:each",
                b:"iterator",
                c:"map loop"
            },
            correctAnswer:"c"
        },
        {
            id:"Question2",
            Question:"Which one of the following is Invalid in LWC?",
            answers:{
                a:".svg",
                b:".apex",
                c:".js"
            },
            correctAnswer:"b"
        },
        {
            id:"Question3",
            Question:"Which one of the following is not a directive?",
            answers:{
                a:"for:each",
                b:"if:true",
                c:"@track"
            },
            correctAnswer:"c"
        }
    ]
    selected = {}
    correctAnswers = 0 // to show the correct answers
    Issubmitted = false //  
    changeHandler(event){
        console.log("name",event.target.name)
        console.log("value",event.target.value)
        const{name,value} = event.target
        this.selected = {...this.selected, [name]:value}
    }
    get isScoredFull()
    {
        return `slds-text-heading_large ${this.myQuestions.length === this.correctAnswers?
        'slds-text-color_success':'slds-text-color_error'}`
    }
    get allNotSelected(){
        return !(Object.keys(this.selected).length === this.myQuestions.length)
    }
    resetHandler(event){
        this.selected = {}//event.target
        this.correctAnswers = 0
        this.Issubmitted = false
    }
    submitHandler(event){
        event.preventDefault() //
        let correct = this.myQuestions.filter(item=>this.selected[item.id] === item.correctAnswer )
        this.correctAnswers = correct.length
        this.Issubmitted = true
        console.log("Correct Answer"+this.correctAnswers)
        console.log("Issubmitted"+this.Issubmitted)
    }
}