// Lab 3: Growing Circles
// Ye-Hwan Kim, 31 Jan 2018

// Canvas setting
size(400, 400);
strokeWeight(2);

// Circle 1
float x = 20; // x- & y-coordinate
int d = 20; // diameter
ellipse(x, x, d, d);

// Circle 2
x = x+(d/2)/sqrt(2)+d/sqrt(2);
d = 2*d;
ellipse(x, x, d, d);

// Circle 3
x = x+(d/2)/sqrt(2)+d/sqrt(2);
d = 2*d;
ellipse(x, x, d, d);

// Circle 4
x = x+(d/2)/sqrt(2)+d/sqrt(2);
d = 2*d;
ellipse(x, x, d, d);

// Circle 5
x = x+(d/2)/sqrt(2)+d/sqrt(2);
d = 2*d;
ellipse(x, x, d, d);

// Save image as .png
saveFrame("Growing Circles.png");