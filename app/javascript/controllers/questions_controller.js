import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="questions"
export default class extends Controller {
  static targets = [ "bouton", "reference" ]

  connect() {
    console.log("Hello, this is the questions controller")
  }

  hide () {
    console.log("I have clicked on the fucker")
    this.boutonTarget.innerText = "J'a cliqué"
    if (this.boutonTarget.classList.contains("bg-[#3AFF3A]")) {
      this.boutonTarget.classList.add("bg-[#19A1EE]")
      this.boutonTarget.classList.remove("bg-[#3AFF3A]")
    } else {
      this.boutonTarget.classList.add("bg-[#3AFF3A]")
      this.boutonTarget.classList.remove("bg-[#19A1EE]")
    }

    this.referenceTarget.classList.remove("hidden")
  }
}
