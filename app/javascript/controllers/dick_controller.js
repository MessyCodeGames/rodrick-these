import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dick"

export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
    // console.log("Dick controller is well connected")
  }

  fire() {
    const element = this.togglableElementTarget;

    element.style.height = `${element.scrollHeight}px`; // Set the height to the scroll height to trigger the transition
    element.addEventListener('transitionend', () => {
      element.style.height = 'auto'; // Remove the inline height after the transition ends
      element.scrollIntoView({ behavior: 'smooth' }); // Scroll to the element after it expands
    }, { once: true });
  }
}
