import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
    // console.log("Toggle controller is well connected")
  }

  fire() {
    const element = this.togglableElementTarget;
    const isExpanded = element.classList.contains("expanded");

    if (isExpanded) {
      element.style.height = `${element.scrollHeight}px`; // Set the height to the current scroll height
      requestAnimationFrame(() => {
        element.style.height = '0'; // Then set it to 0 to trigger the transition
      });
    } else {
      element.style.height = `${element.scrollHeight}px`; // Set the height to the scroll height to trigger the transition
      element.addEventListener('transitionend', () => {
        element.style.height = 'auto'; // Remove the inline height after the transition ends
      }, { once: true });
    }

    element.classList.toggle("expanded");
  }
}
