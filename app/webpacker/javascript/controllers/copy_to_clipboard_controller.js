import { Controller } from "stimulus"
import { copyToClipboard } from "../utils"
import UIkit from 'uikit'

export default class extends Controller {

  get copyText(){
    return this.data.get('text')
  }

  copyToClipboard() {
    if (copyToClipboard(this.copyText)) {
      UIkit.notification({
        message: 'Succesfully Copied URL!',
        status: 'success',
        timeout: '2000',
        pos: 'bottom-center'
      })
    }
  }
}
