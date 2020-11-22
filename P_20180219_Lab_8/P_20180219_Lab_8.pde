// Lab 8: Arrays
// Ye-Hawn Kim, 19 Feb 2018


int arr[] = new int[4];

void setup() {
  arr[0] = 4;
  arr[1] = 2;
  arr[2] = 6;
  arr[3] = -3;
  noLoop();
}

void draw() {
  println(findMax(arr));
  println();
  println(findMin(arr));
  println();
  println(allEvens(arr));
  println();
  printBackwards(arr);
}

int findMax(int[] array) {
  int max = array[0];
  for (int i = 0; i < arr.length; i++) {
    if (max < array[i]) {
      max = array[i];
    }
  }
  return max;
}

int findMin(int[] array) {
  int min = array[0];
  for (int i = 0; i < arr.length; i++) {
    if (min > array[i]) {
      min = array[i];
    }
  }
  return min;
}

boolean allEvens(int[] array) {
  boolean result = true;
  for (int i = 0; i < arr.length; i++) {
    if (array[i]%2 != 0) {
      result = false;
    }
  }
  return result;
}

void printBackwards(int[] array) {
  for (int i = array.length - 1; i >= 0; i--) {
    println(array[i]);
  }
}