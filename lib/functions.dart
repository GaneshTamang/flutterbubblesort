// ignore_for_file: avoid_print

import 'dart:math';

class MyFunctions {
  List<int> primeNumberList = [];
  checkPrimeAddAndSort(List<int> givenNumberList) {
    for (int i = 0; i < givenNumberList.length - 1; i++) {
      isPrimeNumber(givenNumberList[i]) == true
          ? primeNumberList.add(givenNumberList[i])
          : null;
    }
    bubbleSortMethod(primeNumberList);
  }

  List<int> getSortedList() {
    return primeNumberList;
  }

  bool isPrimeNumber(int givenNumber) {
    int squareRoot = sqrt(givenNumber).toInt();

    // if (givenNumber < 2 && givenNumber != 1) {
    //   return false;
    // }
    // if (givenNumber < 2 && givenNumber == 1) {
    //   return true;
    // }
    if (givenNumber < 2) {
      return false;
    }
    for (int i = 2; i <= squareRoot; i++) {
      // print(i);
      if (givenNumber % i == 0) {
        return false;
      }
    }

    // by default
    return true;
  }

  bubbleSortMethod(List<int> toSort) {
    for (int i = 0; i < toSort.length - 1; i++) {
      // String text =
      //     'starting loop at index :$i\n initial array to sort :$toSort';
      // code for underline print
      // print('\x1B[4m$text\x1B[0m');
      for (int j = 0; j < toSort.length - 1 - i; j++) {
        if (toSort[j] > toSort[j + 1]) {
          // print(
          //     'found value \n at index $j with value : ${toSort[j]} and \n  at index  ${j + 1} with value : ${toSort[j + 1]}');
          // print('before changing array:\n $toSort');
          int temp;
          temp = toSort[j];
          toSort[j] = toSort[j + 1];
          toSort[j + 1] = temp;
          // print(
          //     "changed at index $j and ${j + 1}\n and new array is :\n $toSort");
        }
      }
    }
    print(toSort);
  }
}
