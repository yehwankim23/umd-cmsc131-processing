// Lab 2: Dice
// Ye-Hwan Kim, 29 Jan 2018

// Window size
size(600, 100);

// Dice color
fill(213, 229, 254);
// Squares
rect(5, 5, 90, 90);
rect(105, 5, 90, 90);
rect(205, 5, 90, 90);
rect(305, 5, 90, 90);
rect(405, 5, 90, 90);
rect(505, 5, 90, 90);

// Dot color
fill(0, 0, 0);
// 1
ellipse(50, 50, 70/3, 70/3);
// 2
ellipse(190-70/6, 10+70/6, 70/3, 70/3);
ellipse(110+70/6, 90-70/6, 70/3, 70/3);
// 3
ellipse(290-70/6, 10+70/6, 70/3, 70/3);
ellipse(250, 50, 70/3, 70/3);
ellipse(210+70/6, 90-70/6, 70/3, 70/3);
// 4
ellipse(310+70/6, 10+70/6, 70/3, 70/3);
ellipse(390-70/6, 10+70/6, 70/3, 70/3);
ellipse(310+70/6, 90-70/6, 70/3, 70/3);
ellipse(390-70/6, 90-70/6, 70/3, 70/3);
// 5
ellipse(410+70/6, 10+70/6, 70/3, 70/3);
ellipse(490-70/6, 10+70/6, 70/3, 70/3);
ellipse(450, 50, 70/3, 70/3);
ellipse(410+70/6, 90-70/6, 70/3, 70/3);
ellipse(490-70/6, 90-70/6, 70/3, 70/3);
// 6
ellipse(510+70/6, 10+70/6, 70/3, 70/3);
ellipse(590-70/6, 10+70/6, 70/3, 70/3);
ellipse(510+70/6, 50, 70/3, 70/3);
ellipse(590-70/6, 50, 70/3, 70/3);
ellipse(510+70/6, 90-70/6, 70/3, 70/3);
ellipse(590-70/6, 90-70/6, 70/3, 70/3);

// Save image as .png
saveFrame("Dice.png");