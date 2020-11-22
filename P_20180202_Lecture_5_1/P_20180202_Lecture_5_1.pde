// Lecture 5: CheapDraw2
// Ye-Hwan Kim, 2 Feb 2018

void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  fill(255, 0, 0, 50);
  ellipse(mouseX, mouseY, 20, 20);
  fill(0, 255, 0, 50);
  ellipse(mouseY, mouseX, 20, 20);
  fill(0, 0, 255, 50);
  ellipse(400-mouseX, mouseY, 20, 20);
}

void keyPressed() {
  if (key=='s') {
    saveFrame("CheapDraw2##.png");
  }
  if (key=='c') {
    noStroke();
    fill(255);
    rect(0, 0, width, height);
  }
  println(key);
  println((int)key);
}