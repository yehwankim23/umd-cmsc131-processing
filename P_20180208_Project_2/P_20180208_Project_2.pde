// Project 2: Ball Animation
// Ye-Hwan Kim, 8 Feb 2018
// Directory ID : ykim21
// University ID : 115407602
// Section : 0101
// I pledge on my honor that I have not given or received any unauthorized assistance on this assignment/examination.

void setup() {
  // Canvas settings
  size(800, 600);
  noStroke();
}

// Variables
float x = 30; // initial x position
float y = 40; // initial y position
float dx = 3; // initial x velocity
float dy = 4; // initial y velocity

void draw() {
  // Canvas
  background(0);

  // Wall
  fill(255);
  rect(390, 300, 20, 300);

  // Ball
  fill(255-(dx*dy), 2*(dx*dy), 0);
  ellipse(x, y, 20, 20);

  // Movement
  x = x+dx;
  y = y+dy;

  // Acceleration
  if (dx>0) {
    dx = dx+0.1875;
  } else if (dx<0) {
    dx = dx-0.1875;
  }
  if (dy>0) {
    dy = dy+0.25;
  } else if (dy<0) {
    dy = dy-0.25;
  }

  // Check x collision
  if (x<=10) {
    x = 11;
    dx = 3;
    if (dy>0) {
      dy = 4;
    } else if (dy<0) {
      dy = -4;
    }
  } else if ((x>=380 && x<=400) && (y>=290 && y<=600)) {
    x = 379;
    dx = -3;
    if (dy>0) {
      dy = 4;
    } else if (dy<0) {
      dy = -4;
    }
  } else if ((x>=400 && x<=420) && (y>=290 && y<=600)) {
    x = 421;
    dx = 3;
    if (dy>0) {
      dy = 4;
    } else if (dy<0) {
      dy = -4;
    }
  } else if (x>=790) {
    x = 789;
    dx = -3;
    if (dy>0) {
      dy = 4;
    } else if (dy<0) {
      dy = -4;
    }
  }

  // Check y collision
  if (y<=10) {
    y = 11;
    dy = 4;
    if (dx>0) {
      dx = 3;
    } else if (dx<0) {
      dx = -3;
    }
  } else if ((y>=290 && y<=600) && (x>=380 && x<=420)) {
    y = 289;
    dy = -4;
    if (dx>0) {
      dx = 3;
    } else if (dx<0) {
      dx = -3;
    }
  } else if (y>=590) {
    y = 589;
    dy = -4;
    if (dx>0) {
      dx = 3;
    } else if (dx<0) {
      dx = -3;
    }
  }
}

// Save image as .png
void keyPressed() {
  if (key=='s' || key=='S') {
    saveFrame("Image##.png");
  }
}