// Project 2B: Pong
// Ye-Hwan Kim, 13 Mar 2018
// Directory ID: ykim21
// University ID: 115407602
// Section: 0101
// I pledge on my honor that I have not given or received any unauthorized assistance on this assignment/examination.

// Variables
final int PADDLE_WIDTH = 20;
final int PADDLE_HEIGHT = 100;
final int BALL_DIAMETER = 20;

int xPosition = 400;
int yPosition = 300;
int xVelocity = 0;
int yVelocity = 0;
int nextXVelocity;

int paddleOne = 250;
int paddleTwo = 250;
int playerOne = 5;
int playerTwo = 5;

int[] saveX = new int[20];
int[] saveY = new int[20];


// Canvas settings
void setup() {
  size(800, 600);
  background(0);
  noStroke();
  textSize(24);
}

void draw() {
  drawBackground();
  displayLife();
  drawPlayerOne();
  drawPlayerTwo();
  checkPaddleCollision();
  drawBall();
  moveBall();
  checkWallCollision();
  checkRound();
  gameOver();
  saveLocation();
}

// Draw Background
void drawBackground() {
  fill(0);
  rect(0, 0, width, height);
}

// Draw Player One's Paddle
void drawPlayerOne() {
  fill(255);
  rect(0, paddleOne, PADDLE_WIDTH, PADDLE_HEIGHT);
}

// Draw Player Two's Paddle
void drawPlayerTwo() {
  fill(255);
  rect(width - PADDLE_WIDTH, paddleTwo, PADDLE_WIDTH, PADDLE_HEIGHT);
}

// Draw Ball
void drawBall() {
  for (int i = 19; i >= 0; i = i - 1) {
    fill(255, 100 - i);
    ellipse(saveX[i], saveY[i], BALL_DIAMETER - i, BALL_DIAMETER - i);
  }
}

// Move Ball
void moveBall() {
  xPosition = xPosition + xVelocity;
  yPosition = yPosition + yVelocity;
}

// Check Wall Collision
void checkWallCollision() {
  if (yPosition < 10) {
    yPosition = 10;
    yVelocity = yVelocity * -1;
  } else if (yPosition > 590) {
    yPosition = 590;
    yVelocity = yVelocity * -1;
  }
}

// Check Paddle Collision
void checkPaddleCollision() {
  if (xPosition < 30 && (yPosition >= paddleOne - 75 && yPosition <= paddleOne + 75)) {
    xPosition = 30;
    xVelocity = xVelocity * -1;
  } else if (xPosition > 770 && (yPosition >= paddleTwo - 75 && yPosition <= paddleTwo + 75)) {
    xPosition = 770;
    xVelocity = xVelocity * -1;
  }
}

// Check Round
void checkRound() {
  if (xPosition < 0) {
    reset();
    nextXVelocity = 4;
    playerOne = playerOne - 1;
  } else if (xPosition > 800) {
    reset();
    nextXVelocity = -4;    
    playerTwo = playerTwo - 1;
  }
}

// Reset
void reset() {
  xPosition = 400;
  yPosition = 300;
  xVelocity = 0;
  yVelocity = 0;
  paddleOne = 250;
  paddleTwo = 250;
}

void keyPressed() {
  if (key == 'w' || key == 'W') {
    movePlayerOneUp();
  }
  if (key == 's' || key == 'S') {
    movePlayerOneDown();
  }
  if (key == 'i' || key == 'I') {
    movePlayerTwoUp();
  }
  if (key == 'k' || key == 'K') {
    movePlayerTwoDown();
  }
  if (key == 'n' || key == 'N') {
    newGame();
  }
  if (key == 'c' || key == 'C') {
    continueGame();
  }
}

// Move Player One's Paddle Up
void movePlayerOneUp() {
  if (paddleOne >= 50) {
    paddleOne = paddleOne - 50;
  }
}

// Move Player One's Paddle Down
void movePlayerOneDown() {
  if (paddleOne <= 450) {
    paddleOne = paddleOne + 50;
  }
}

// Move Player Two's Paddle Up
void movePlayerTwoUp() {
  if (paddleTwo >= 50) {
    paddleTwo = paddleTwo - 50;
  }
}

// Move Player Two's Paddle Down
void movePlayerTwoDown() {
  if (paddleTwo <= 450) {
    paddleTwo = paddleTwo + 50;
  }
}

// New Game
void newGame() {
  xPosition = 400;
  yPosition = 300;
  paddleOne = 250;
  paddleTwo = 250;
  playerOne = 5;
  playerTwo = 5;
  yVelocity = randomY();
  xVelocity = randomX();

  for (int i = 1; i < 20; i = i + 1) {
    saveX[i] = 400;
    saveY[i] = 300;
  }
}

// Continue Game
void continueGame() {
  xPosition = 400;
  yPosition = 300;
  paddleOne = 250;
  paddleTwo = 250;
  yVelocity = randomY();
  xVelocity = nextXVelocity;
  if (xVelocity == 4) {
    xPosition = 50;
  } else if (xVelocity == -4) {
    xPosition = 750;
  }

  for (int i = 1; i < 20; i = i + 1) {
    saveX[i] = 400;
    saveY[i] = 300;
  }
}

// Randomize X Velocity
int randomX() {
  int x = int(random(0, 2));
  if (x == 0) {
    x = -4;
  } else if (x == 1) {
    x = 4;
  }
  return x;
}

// Randomize Y Velocity
int randomY() {
  int y = int(random(0, 2));
  if (y == 0) {
    y = -3;
  } else if (y == 1) {
    y = 3;
  }
  return y;
}

// Display Life
void displayLife() {
  fill(255);
  String one = "PLAYER ONE : " + playerOne;
  String two = "PLAYER TWO : " + playerTwo;
  text(one, 5, 25);
  text(two, 795 - textWidth(two), 25);
}

// Game Over Message
void gameOver() {
  if (playerOne <= 0 || playerTwo <= 0) {
    fill(255, 0, 0);
    String gameOver = "GAMEOVER";
    text(gameOver, 400 - (textWidth(gameOver) / 2), 25);
  }
}

// Save Ball Location
void saveLocation() {
  for (int i = 19; i > 0; i = i - 1) {
    saveX[i] = saveX[i - 1];
  }
  saveX[0] = xPosition;
  for (int i = 19; i > 0; i = i - 1) {
    saveY[i] = saveY[i - 1];
  }
  saveY[0] = yPosition;
}