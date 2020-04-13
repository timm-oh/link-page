import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['source']

  remove(){
    if (this.hasSourceTarget) {
      this.sourceTarget.remove()
    }
  }
}