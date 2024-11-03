import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="questions"
export default class extends Controller {
  static targets = ["radioChoice", "lives", "question"]
  static currentLives = 3;

  connect() {
    console.log("Hello, this is the questions controller")
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
      if (userAnswer === correctAnswer) {
        console.log(`Correct answer for question ${questionNumber}: ${userAnswer}`);
        const currentQuestion = button.closest('[data-questions-target="question"]');
        const nextQuestion = this.questionTargets[this.questionTargets.indexOf(currentQuestion) + 1];

        if (nextQuestion) {
          currentQuestion.classList.add('hidden');
          nextQuestion.classList.remove('hidden');
        } else {
          // No more questions, redirect to win page
          window.location.href = '/win';
        }
        
      } else {
        console.log(`Incorrect answer for question ${questionNumber}. Selected: ${userAnswer}, Correct: ${correctAnswer}`);
        this.constructor.currentLives -= 1;
      }
    } else {
      console.log(`No answer selected for question ${questionNumber}`);
    }
    console.log(`Current lives: ${this.constructor.currentLives}`);
    this.livesTarget.innerText = `Nombre de vies: ${this.constructor.currentLives}`;

    // Check if lives are zero and redirect to game over path
    if (this.constructor.currentLives < 0) {
      window.location.href = '/game_over';
    }
  }
}
