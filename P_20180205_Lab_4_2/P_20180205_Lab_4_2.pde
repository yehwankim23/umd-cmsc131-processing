// Lab 4: Random
// Ye-Hwan Kim, 5 Feb 2018

void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  float x = random(0, width);
  float y = random(0, height);

  if (y>x) {
    fill(255, 0, 0);
  } else {
    fill(0, 0, 255);
  }
  ellipse(x, y, 20, 20);
}

void keyPressed() {
  if (key == 's') {
    saveFrame("Random##.png");
  }
}
