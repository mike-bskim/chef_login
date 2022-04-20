import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int _leftDice = 1;
  int _rightDice = 1;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('Dice game'),
        elevation: 1.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Image.asset('image/dice$_leftDice.png')),
                  SizedBox(
                    width: _size.width * 0.1,
                  ),
                  Expanded(child: Image.asset('image/dice$_rightDice.png')),
                ],
              ),
            ),
            const SizedBox(height: 50.0,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _leftDice = Random().nextInt(6) +1;
                  _rightDice = Random().nextInt(6) +1;
                });
                showToast('Left dice: [$_leftDice], Right dice: [$_rightDice]');
                debugPrint('$_leftDice : $_rightDice');
              },
              child: const Icon(
                Icons.play_arrow,
                size: 50.0,
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
                minimumSize: const Size(100.0, 60.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    backgroundColor: Colors.white,
    textColor: Colors.black45,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
  );
}