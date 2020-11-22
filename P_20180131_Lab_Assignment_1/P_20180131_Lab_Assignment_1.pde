// Lab Assignment 1: Resting Circles
// Ye-Hwan Kim, 31 Jan 2018

// Canvas settings
size(400, 400);
strokeWeight(3);

// Circle 1
int d = 200; // diameter
int y = d; // y-coordinate
ellipse(200, y, d, d);

// Circle 2
d = d-40;
y = 300-d/2;
ellipse(200, y, d, d);

// Circle 3
d = d-40;
y = 300-d/2;
ellipse(200, y, d, d);

// Save image as .png
saveFrame("Resting Circles.png");