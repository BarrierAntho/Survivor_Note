'use struc';

/*
console.log(document.querySelector('.message').textContent);
displayMessage('Correct Number');
console.log(document.querySelector('.message').textContent);

document.querySelector('.number').textContent = 13;
document.querySelector('.score').textContent = 10;

document.querySelector('.guess').value = 23;
console.log(document.querySelector('.guess').value);
*/

const displayMessage = function (message) {
  document.querySelector('.message').textContent = message;
};

const generateNumber = function () {
  return Number(Math.trunc(Math.random() * 20 + 1));
};

let secretNumber = generateNumber();
console.log(secretNumber);
const initScore = 20;
let score = initScore;
let highScore = 0;

document.querySelector('.check').addEventListener('click', function () {
  const guess = Number(document.querySelector('.guess').value);
  console.log(guess, typeof guess);

  if (!guess) {
    displayMessage('No number');
    console.error('No guess value has been defined');
  } else if (guess === secretNumber) {
    displayMessage('Correct Number');
    document.querySelector('.number').textContent = secretNumber;
    document.querySelector('body').style.backgroundColor = '#60b347';
    document.querySelector('.number').style.width = '30rem';
    if (score > highScore) {
      highScore = score;
      document.querySelector('.highscore').textContent = highScore;
    }
  } else if (guess !== secretNumber) {
    if (score > 1) {
      displayMessage(guess > secretNumber ? 'Too high' : 'Too low');
      score--;
      document.querySelector('.score').textContent = score;
    } else {
      displayMessage('You loose');
      document.querySelector('.score').textContent = 0;
    }
  }
});

document.querySelector('.again').addEventListener('click', function () {
  score = initScore;
  secretNumber = generateNumber();
  guess = '';
  document.querySelector('.guess').value = guess;

  document.querySelector('body').style.backgroundColor = '#222';
  document.querySelector('.number').style.width = '15rem';
  displayMessage('Start guessing...');
  document.querySelector('.score').textContent = initScore;
  document.querySelector('.number').textContent = '?';
});
