import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="siu"
export default class extends Controller {
  siuSound = null;
  leagueChampsMusic = null;

  connect() {
    console.log("win page music controller reporting for duty");
    this.siuSound = new Audio("/assets/siu.mp3");
    this.leagueChampsMusic = new Audio("/assets/league_champions.m4a");
  };

  unMute() {
    this.siuSound.play();

    // Wait 2 seconds before playing the second sound
    setTimeout(() => {
      this.leagueChampsMusic.play();
    }, 2000);
  }
}
