
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["vote"]
  connect() {
    console.log(this.voteTarget)
  }
  change(event) {
    this.voteTarget.classList.toggle("opacity-25")
  }
}
