import { LightningElement , track} from 'lwc';
    
export default class ConditionalRenderingExample extends LightningElement {
    @track displayDiv = false;

    @track cityList = ['bangalore','bhubaneswar','Cuttack'];

    showDivHandler(event){
        this.displayDiv = event.target.checked;
    }
}