import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
    const quotationsContainer = document.getElementById('quotations')
    quotationsContainer.scrollLeft = quotationsContainer.scrollWidth
  }
}
