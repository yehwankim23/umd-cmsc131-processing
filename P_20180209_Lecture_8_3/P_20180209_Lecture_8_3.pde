// Lecture 8: Fan
// Ye-Hwan Kim, 9 Feb 2018

// Canvas settings
size(500, 500);
background(255);

// Lines
for (int n = 0; n<=width; n = n+50) {
  fill(0);
  line(width/2, 0, n, height);
}