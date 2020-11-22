// Project 1: Drawing with Processing
// Ye-Hwan Kim, 30 Jan 2018
// Based on Apple's Dog Face Emoji

// Canvas settings
size(512, 512);
background(255, 255, 255);
noStroke();

// Ears
fill(180, 110, 10);
// Left
ellipse(164, 114, 128, 128);
ellipse(40, 264, 64, 64);
arc(258, 264, 500, 477, radians(180), radians(240));
// Right
ellipse(348, 114, 128, 128);
ellipse(472, 264, 64, 64);
arc(254, 264, 500, 477, radians(-60), radians(0));

// Face
fill(240, 240, 240);
ellipse(256, 164, 290, 250);
ellipse(164, 300, 224, 233);
ellipse(348, 300, 224, 233);
ellipse(256, 363, 241, 145);

// Eyes
fill(41, 41, 41);
// Left
ellipse(174, 280, 45, 82);
// Spot (could not make it look more natural)
fill(180, 110, 10);
arc(334, 256, 146, 182, radians(10), radians(255));
ellipse(324, 212, 88, 90);
ellipse(364, 269, 84, 92);
triangle(360, 180, 400, 230, 320, 250);
ellipse(325, 188, 65, 45);
fill(240, 240, 240);
arc(580, 70, 500, 500, radians(120), radians(160), OPEN);
// Right
fill(41, 41, 41);
ellipse(338, 280, 45, 82);

// Nose
fill(41, 41, 41);
ellipse(254, 358, 69, 35);
arc(254, 358, 69, 65, radians(0), radians(180));

// Tongue
fill(230, 130, 140);
rect(226, 415, 60, 60, 10, 10, 50, 50);
stroke(41, 41, 41);
strokeWeight(3);
line(256, 420, 256, 450);

// Save image as .png
saveFrame("Puppy.png");