import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="siu"
export default class extends Controller {
  siuSound = null;

  connect() {
    console.log("win page music controller reporting for duty");
    this.siuSound = new Audio("/assets/siu.mp3");
  };

  unMute() {
    this.siuSound.play();
  }

}
