// Lecture 8: Computing e
// Ye-Hwan Kim, 9 Feb 2018

float f = 1; // factorial
float e = 1; // answer

for (float n = 1; n<=100; n = n+1) {
  f = f*n;
  e = e+(1/f);

  println(e);
}
