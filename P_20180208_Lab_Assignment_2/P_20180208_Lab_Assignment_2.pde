// Lab Assignment 2: Fading Circles
// Ye-Hwan Kim, 8 Feb 2018
// Directory ID : ykim21
// University ID : 115407602
// Section : 0101
// I pledge on my honor that I have not given or received any unauthorized assistance on this assignment/examination.

// Canvas settings
void setup() {
  size(500, 200);
  background(0);
  noStroke();
  frameRate(10);
}

// Variables for Circle 1
float r1 = random(0, 255); // red
float g1 = random(0, 255); // green
float b1 = random(0, 255); // blue
int i1 = int((r1+g1+b1)/3); // intensity

// Variables for Circle 2
float r2 = random(0, 255);
float g2 = random(0, 255);
float b2 = random(0, 255);
int i2 = int((r2+g2+b2)/3);

// Variables for Circle 3
float r3 = random(0, 255);
float g3 = random(0, 255);
float b3 = random(0, 255);
int i3 = int((r3+g3+b3)/3);

// Variable for initial draw
boolean ini = true;

void draw() {
  // Initial draw
  if (ini) {
    fill(r1, g1, b1);
    ellipse(100, 100, 100, 100);
    fill(r2, g2, b2);
    ellipse(250, 100, 100, 100);
    fill(r3, g3, b3);
    ellipse(400, 100, 100, 100);
    ini = false;
  }

  // Intensity comparing
  if (i1>=i2 && i1>=i3) {
    fill(r1, g1, b1);
    ellipse(100, 100, 100, 100);
  }
  if (i2>=i1 && i2>=i3) {
    fill(r2, g2, b2);
    ellipse(250, 100, 100, 100);
  }
  if (i3>=i1 && i3>=i2) {
    fill(r3, g3, b3);
    ellipse(400, 100, 100, 100);
  }

  // Fading
  fill(0, 31);
  rect(0, 0, width, height);
}