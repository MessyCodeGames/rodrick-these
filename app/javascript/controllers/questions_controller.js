import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="questions"
export default class extends Controller {
  static targets = ["radioChoice", "lives", "question", "goodAnswer", "badAnswer"];
  static currentLives = 3;
  audioRight = null;
  audioWrong = null;

  connect() {
    console.log("Hello, this is the questions controller")
    this.audioRight = new Audio("/assets/zelda_chime.mp3");
    this.audioWrong = new Audio("/assets/wrong_buzzer.mp3");
  }

  checkAnswer(event) {
    const button = event.currentTarget;
    const correctAnswer = button.dataset.correctAnswer;
    const questionElement = button.closest('[data-questions-target="question"]');
    const radioInput = questionElement.querySelector('input[type="radio"]:checked');

    if (!radioInput) {
      console.log(`No answer selected for question`);
      return;
    }

    const questionNumber = radioInput.name;
    const selectedRadio = this.radioChoiceTargets.find(radio => radio.name === questionNumber && radio.checked);

    if (selectedRadio) {
      const userAnswer = selectedRadio.value;
      /* Good Answer! */
      if (userAnswer === correctAnswer) {
        console.log(`Correct answer for question ${questionNumber}: ${userAnswer}`);

        this.audioRight.play();

        // Play the animation
        this.goodAnswerTarget.classList.add('show-good-answer-animation');

        // Remove the animation class after the animation ends
        setTimeout(() => {
          this.goodAnswerTarget.classList.remove('show-good-answer-animation');
        }, 2000);

        const currentQuestion = button.closest('[data-questions-target="question"]');
        const nextQuestion = this.questionTargets[this.questionTargets.indexOf(currentQuestion) + 1];

        if (nextQuestion) {
          currentQuestion.classList.add('hidden');
          nextQuestion.classList.remove('hidden');
        } else {
          // No more questions, redirect to win page
          window.location.href = '/win';
        }

      /* Bad Answer! */
      } else {
        console.log(`Incorrect answer for question ${questionNumber}. Selected: ${userAnswer}, Correct: ${correctAnswer}`);
        this.audioWrong.play();

        // Play the animation
        this.badAnswerTarget.classList.add('show-good-answer-animation');

        // Remove the animation class after the animation ends
        setTimeout(() => {
          this.badAnswerTarget.classList.remove('show-good-answer-animation');
        }, 2000);

        this.constructor.currentLives -= 1;
      }
    } else {
      console.log(`No answer selected for question ${questionNumber}`);
    }
    console.log(`Current lives: ${this.constructor.currentLives}`);
    this.livesTarget.innerText = `Nombre de vies: ${this.constructor.currentLives}`;
    if (this.constructor.currentLives === 2) {
      this.livesTarget.classList.remove('text-[#08FF08]');
      this.livesTarget.classList.add('text-[#F7F700]');
    } else if (this.constructor.currentLives < 2) {
      this.livesTarget.classList.remove('text-[#F7F700]');
      this.livesTarget.classList.add('text-[#F60002]');
    } 

    // Check if lives are zero and redirect to game over path
    if (this.constructor.currentLives < 0) {
      window.location.href = '/game_over';
    }
  }
}
