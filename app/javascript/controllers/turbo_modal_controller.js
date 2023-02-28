import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="turbo-modal"
export default class extends Controller {
  connect() {
  }
  hideModal(){
    this.element.parentElement.removeAttribute("src")
    this.element.remove()
  }
  submitEnd(e) {
    if (e.detail.success) {
      this.hideModal()
    }
  }

  static targets = ["submit"];

  checkValidity() {
    const form = this.element;
    const isValid = form.checkValidity();
    this.submitTarget.disabled = !isValid;
  }

}
