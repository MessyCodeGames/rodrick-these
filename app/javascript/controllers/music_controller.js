import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="music"
export default class extends Controller {
  iWillSurviveMusic = null;

  connect() {
    console.log("win page music controller reporting for duty");
    this.iWillSurviveMusic = new Audio("/assets/i_will_survive.m4a");
  };

  playMusic() {
    this.iWillSurviveMusic.play();
  }
}
