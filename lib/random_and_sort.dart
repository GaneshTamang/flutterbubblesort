import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rosan/functions.dart';

class RandomAndSort extends StatefulWidget {
  const RandomAndSort({
    super.key,
  });

  @override
  State<RandomAndSort> createState() => _RandomAndSortState();
}

class _RandomAndSortState extends State<RandomAndSort> {
  List<int>? randomGeneratedList = [];
  List<int>? primeAndSortedList = [];

  @override
  Widget build(BuildContext context) {
    // var toSortArray = [10, 4, 7, 8, 5, 2, 3, 1, 9];
    // MyFunctions().checkPrimeAddAndSort(toSortArray);

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('hello'),
            Text(
                'current Ganeterated list :  ${randomGeneratedList!.isNotEmpty ? '$randomGeneratedList' : 'empty'}'),
            Text(
                'primed and soretd :  ${primeAndSortedList!.isNotEmpty ? '$primeAndSortedList' : ' no prime numbers '}'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  randomGeneratedList = generteRandomNumbers();
                  primeAndSortedList = sortAfterGen(randomGeneratedList!);
                });
              },
              child: const Text('generate random numbers and sort'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     setState(() {
            //       primeAndSortedList = sortAfterGen(randomGeneratedList!);
            //     });
            //   },
            //   child: const Text('check prime  and sort'),
            // )
          ],
        ),
      ),
    );
  }

  List<int> sortAfterGen(List<int> listofGeneratedNum) {
    listofGeneratedNum = randomGeneratedList!;
    MyFunctions actionsForBubble = MyFunctions();
    actionsForBubble.checkPrimeAddAndSort(listofGeneratedNum);
    List<int> bubbledlist = actionsForBubble.primeNumberList;
    return bubbledlist;
  }

  List<int> generteRandomNumbers() {
    List<int> list = [];
    for (int i = 0; i < 20; i++) {
      int randomNumber = Random().nextInt(100);

      list.insert(i, randomNumber);
    }

    return list;
  }
}
