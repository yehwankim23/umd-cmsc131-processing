// Project 2A: Ball Animation 2
// Ye-Hwan Kim, 27 Feb 2018
// Directory ID: ykim21
// University ID: 115407602
// Section: 0101
// I pledge on my honor that I have not given or received any unauthorized assistance on this assignment/examination.

/*  
 *  1. The color of the ball changes according to the ball's speed
 *  2. The speed of the ball increases randomly until the ball hits a wall, making the path of the ball bend slightly
 *  3. The speed of the ball resets when the ball hits a wall
 */

//  Canvas settings
void setup() {
  size(800, 600);
  background(0);
  noStroke();
}

//  Variables
float x = 30; // initial x position
float y = 40; // initial y position
float dx = 3; // initial x velocity
float dy = 4; // initial y velocity

void draw() {
  ini();
  ballChange();
  checkXColl();
  checkYColl();
}

// Draw canvas, wall, and ball
void ini() {
  fill(255);
  rect(390, 300, 20, 300);
  fill(255 - (dx * dy), 2 * (dx * dy), 0);
  ellipse(x, y, 20, 20);
}

void ballChange() {

  //  Movement
  x = x + dx;
  y = y + dy;

  //  Acceleration
  if (dx > 0) {
    dx = dx + random(0.5);
  } else if (dx < 0) {
    dx = dx - random(0.5);
  }
  if (dy > 0) {
    dy = dy + random(0.5);
  } else if (dy < 0) {
    dy = dy - random(0.5);
  }
}

//  Check x collision
void checkXColl() {
  if (x <= 10) {
    x = 11;
    dx = 3;
    if (dy > 0) {
      dy = 4;
    } else if (dy < 0) {
      dy = -4;
    }
  } else if ((x >= 380 && x <= 400) && (y >= 290 && y <= 600)) {
    x = 379;
    dx = -3;
    if (dy > 0) {
      dy = 4;
    } else if (dy < 0) {
      dy = -4;
    }
  } else if ((x >= 400 && x <= 420) && (y >= 290 && y <= 600)) {
    x = 421;
    dx = 3;
    if (dy > 0) {
      dy = 4;
    } else if (dy < 0) {
      dy = -4;
    }
  } else if (x >= 790) {
    x = 789;
    dx = -3;
    if (dy > 0) {
      dy = 4;
    } else if (dy < 0) {
      dy = -4;
    }
  }
}

//  Check y collision
void checkYColl() {
  if (y <= 10) {
    y = 11;
    dy = 4;
    if (dx > 0) {
      dx = 3;
    } else if (dx < 0) {
      dx = -3;
    }
  } else if ((y >= 290 && y <= 600) && (x >= 380 && x <= 420)) {
    y = 289;
    dy = -4;
    if (dx > 0) {
      dx = 3;
    } else if (dx < 0) {
      dx = -3;
    }
  } else if (y >= 590) {
    y = 589;
    dy = -4;
    if (dx > 0) {
      dx = 3;
    } else if (dx < 0) {
      dx = -3;
    }
  }
}

//  Erase to a random color
void mousePressed() {
  fill(random(0, 256), random(0, 256), random(0, 256));
  rect(0, 0, width, height);
}

void keyPressed() {

  //  Save as .png
  if (key == 'p' || key == 'P') {
    saveFrame("Image##.png");
  }

  //  Erase to the background
  if (key == 'b' || key == 'B') {
    fill(255);
    rect(0, 0, width, height);
  }
}
