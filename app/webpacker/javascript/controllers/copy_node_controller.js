import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['source', 'destination']

  copy(){
    const newNode = this.sourceTarget.content.cloneNode(true)
    this.destinationTarget.appendChild(newNode);
  }
}