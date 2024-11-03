import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="questions"
export default class extends Controller {
  static targets = ["radioChoice"]

  connect() {
    console.log("Hello, this is the questions controller")
  }

  checkAnswer() {
    console.log("Checking answer")
    const selectedRadio = this.radioChoiceTargets.find(radio => radio.checked)
    console.log(selectedRadio.value)

  }

}
