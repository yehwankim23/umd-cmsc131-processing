// Lecture 5: SimpleWalk2
// Ye-Hwan Kim, 2 Feb 2018

float x=0;
float y=200;
int a=10;

void setup() {
  size(400, 400);
  frameRate(15);
}

void draw() {  
  x = x + a;
  y = y + 0;
  ellipse(x, y, 20, 20);

  if (x==0 || x==width) {
    a=a*-1;
  }
}