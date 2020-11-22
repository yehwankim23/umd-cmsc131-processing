// Lecture 5: RandomRain2
// Ye-Hwan Kim, 2 Feb 2018

void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  float x = random(0, 400);
  float y = random(0, 400);
  fill(x, 0, y);
  ellipse(x, y, 20, 20);
}