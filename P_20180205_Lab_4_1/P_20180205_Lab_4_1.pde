// Lab 4: Snowman
// Ye-Hwan Kim, 5 Feb 2018

size(400, 400);
int width = 400;
int height = 400;
int diam = 200;
int diff = 50;

ellipse(width/2, height-(diam/2), diam, diam);

ellipse(width/2, height-(diam+diff), diam-diff, diam-diff);
diff += 50;

ellipse(width/2, height-(diam+diff), diam-diff, diam-diff);
diff += 50;

ellipse(width/2, height-(diam+diff), diam-diff, diam-diff);
diff += 50;