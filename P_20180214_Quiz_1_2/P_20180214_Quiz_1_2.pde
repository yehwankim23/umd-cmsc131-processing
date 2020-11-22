// Quiz 1: computeCos
// Ye-Hwan Kim, 14 Feb 2018

float factorial = 1;
float cos = 1;

float computeCos(float x, int iterations) {
  for (int n = 1; n<=iterations; n = n+1) {
    for (int m = 1; m<=2*n; m = m+1) {
      factorial = factorial*m;
    }
    cos = cos+((pwr(-1, n)*pwr(x, 2*n))/factorial);
  }
  return cos;
}