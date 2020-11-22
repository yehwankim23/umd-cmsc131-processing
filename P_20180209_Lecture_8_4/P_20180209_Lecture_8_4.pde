// Lecture 8: Circles
// Ye-Hwan Kim, 9 Feb 2018

// Canvas settings
size(350, 350);
background(0);
noStroke();
fill(255);

// Circles
for (int y = 50; y<=300; y = y+50) {
  for (int x = 50; x<=300; x = x+50) {
    ellipse(x, y, 25, 25);
  }
}