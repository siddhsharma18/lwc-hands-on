import { LightningElement , track} from 'lwc';
/*import NAME_FIELD from '@salesforce/schema/account.Name';
import PHONE_FIELD from '@salesforce/schema/account.Phone';
import WEBSITE_FIELD from '@salesforce/schema/account.Website';*/

export default class AccountRecordForm extends LightningElement {
    @track recordId;
    //fieldsArray=[NAME_FIELD,PHONE_FIELD,WEBSITE_FIELD];

    handleSuccess(event){
        this.recordId = event.detail.id;
    }

}