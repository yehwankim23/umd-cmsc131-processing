// Lecture 8: Rectangle Loop
// Ye-Hwan Kim, 9 Feb 2018

// Canvas settings
void setup() {
  size(1500, 100);
  background(255);
  strokeWeight(3);
}

int x = 0; // x position

void draw() {
  while (x<width) {
    if (x%300==0) {
      fill(0, 0, 255);
    } else {
      fill(255, 0, 0);
    }
    rect(x, 0, 100, 100);

    x = x+100;
  }
}