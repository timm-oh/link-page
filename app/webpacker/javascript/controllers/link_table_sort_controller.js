import { Controller } from "stimulus"
import { Sortable } from "sortablejs"

export default class extends Controller {
  static targets = ['container', 'item', 'form']

  connect(){
    this.finishDrag = this.finishDrag.bind(this);
    if (this.hasItemTarget){
      new Sortable(this.containerTarget, {
        sort: true,
        handle: '.sortable-handle',
        onEnd: this.finishDrag
      });
    }
  }

  finishDrag(){
    if (this.hasFormTarget){
      this.formTarget.submit();
    }
  }
}
