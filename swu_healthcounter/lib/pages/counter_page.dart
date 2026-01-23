import 'package:flutter/material.dart';
import 'package:swu_healthcounter/util/dialog_box.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _damagePlayer1 = 0;
  int _damagePlayer2 = 0;

  void showWinner(String message) {
    showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (context) {
        return DialogBox(message: message, nextGame: nextGame);
      },
    );
  }

  void nextGame() {}

  void incrementCounter(int player, int value) {
    setState(() {
      if (player == 1) {
        _damagePlayer1 += value;
        if (_damagePlayer1 >= 30) {
          showWinner("Spieler 2 hat gewonnen!");
        }
      } else if (player == 2) {
        _damagePlayer2 += value;
        if (_damagePlayer2 >= 30) {
          showWinner("Spieler 1 hat gewonnen!");
        }
      }
    });
  }

  void decrementCounter(int player, int value) {
    setState(() {
      if (player == 1) {
        _damagePlayer1 -= value;
      } else {
        _damagePlayer2 -= value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: GestureDetector(
                      onTap: () => incrementCounter(2, 1),
                      onDoubleTap: () => incrementCounter(2, 3),
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationZ(3.14159),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 42,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(3.14159),
                      child: Center(
                        child: Text(
                          _damagePlayer2.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: GestureDetector(
                      onTap: () => decrementCounter(2, 1),
                      onDoubleTap: () => decrementCounter(2, 3),
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationZ(3.14159),
                        child: Center(
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 42,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(height: 80, color: Colors.black),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => decrementCounter(1, 1),
                    onDoubleTap: () => decrementCounter(1, 3),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 42,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Text(
                          _damagePlayer1.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => incrementCounter(1, 1),
                    onDoubleTap: () => incrementCounter(1, 3),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 42,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
